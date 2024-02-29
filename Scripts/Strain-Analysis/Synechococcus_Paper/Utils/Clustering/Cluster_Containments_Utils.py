import numpy as np
import pandas as pd
import networkx as nx
from Bio import SeqIO
from os import listdir,mkdir
from os.path import isdir,isfile
from functools import partial 

def Load_Contigs(contigs_path, sample="", genome=""):
    d = {}
    fasta_sequences = SeqIO.parse(open(contigs_path),'fasta')
    for s in fasta_sequences:
        if genome == "" and sample == "":
            d[s.name] = str(s.seq)
        else:
            contig_id = sample+'_'+genome+'_'+s.name
            d[contig_id] = str(s.seq)
    return d

def Load_and_Filter_Contigs(contig_path, sample, genome, length_filter = 500):
    df = pd.read_csv(contig_path, sep = "\t")
    del df['Unnamed: 0']
    df['Membership'] = df['Membership'].apply(eval)
    df = df[['Contig', 'Membership', 'Contig_Length']]
    df_sel = df[(df['Membership']=={'Graph'})&(df['Contig_Length'] >= length_filter)]
    df_sel = df_sel.drop_duplicates(subset=['Contig'])
    df_sel['Contig'] = sample+'_'+genome+'_'+df_sel['Contig']
    return df_sel['Contig'].tolist()

def Stitch_Blast_Hits(group):
    starts, ends = list(group['qstart']), list(group['qend'])
    qlength = group.iloc[0]['Qlen']
    presence = np.zeros(qlength)
    for i in range(len(starts)):
        presence[min(starts[i],ends[i]):max(starts[i],ends[i])] = 1
    qcov = np.sum(presence)/len(presence)*100
    
    starts, ends = list(group['sstart']), list(group['send'])
    slength = group.iloc[0]['Slen']
    presence = np.zeros(slength)
    for i in range(len(starts)):
        presence[min(starts[i],ends[i]):max(starts[i],ends[i])] = 1
    scov = np.sum(presence)/len(presence)*100

    avg_pident = np.sum(group['length']*group['PIdent'])/np.sum(group['length'])
    
    qstart = min(list(group['qstart']) + list(group['qend'])) 
    qend = max(list(group['qstart']) + list(group['qend']))
    
    sstart = min(list(group['sstart']) + list(group['send'])) 
    send = max(list(group['sstart']) + list(group['send']))
    
    return pd.Series({'Qcov':qcov, 'Scov':scov, 'PIdent':avg_pident, 'Qlen':qlength, 'Slen':slength, 
                     'qstart':qstart, 'qend':qend, 'sstart':sstart, 'send':send})

def Simplify_Containment_Clusters(g):
    containment_clusters = []
    d_lengths = nx.get_node_attributes(g, "length")
    nodes, lengths = np.array(list(d_lengths.keys())), np.array(list(d_lengths.values()))
    nodes_sorted = nodes[np.argsort(lengths)[::-1]]
    visited = set({})
    
    for n in nodes_sorted:
        if n not in visited:
            cluster = [n] + list(g.neighbors(n))
            op = []
            for c in cluster[1:]:
                d = {'RepresentativeContig':n, 'Contig':c, 'EdgeType':g.edges[(n,c)]['type'], 
                     'RepresentativeLength':g.nodes[n]['length'], 'ContigLength':g.nodes[c]['length'],
                     'qstart':g.edges[(n,c)]['qstart'], 'qend':g.edges[(n,c)]['qend'], 
                     'sstart':g.edges[(n,c)]['sstart'], 'send':g.edges[(n,c)]['send']}
                op.append(d)
            g.remove_nodes_from(cluster)
            visited.update(cluster)
            if len(cluster) > 1:
                containment_clusters.append(op)
    return containment_clusters

def Calculate_Representative_Coverage(group):
    edge_types = group['EdgeType'].tolist()
    qstart = group['qstart'].tolist()
    qend = group['qend'].tolist()
    sstart = group['sstart'].tolist()
    send = group['send'].tolist()
    
    rep_length = group.iloc[0]['RepresentativeLength']
    
    presence = np.zeros(rep_length)
    
    for i in range(0, len(edge_types)):
        if edge_types[i] == 'QS':
            start, end = min(qstart[i]-1, qend[i]-1), max(qstart[i]-1, qend[i]-1)
        else:
            start, end = min(sstart[i]-1, send[i]-1), max(sstart[i]-1, send[i]-1)
        presence[start:end] = 1
    return pd.Series({'Representativecontig':group.iloc[0]['RepresentativeContig'],
                      'RepresentativeCoverage':np.sum(presence)/len(presence)*100,
                      'RepresentativeLength':rep_length, 'Counts':len(group)})

def get_Query_ID(query):
    return "_".join(query.split("_")[:-1])

def Compute_Query_Coverage(group):
    starts, ends = group['qstart'].tolist(), group['qend'].tolist()
    length = group.iloc[0]['qlen']
    presence = np.zeros(length)

    for i in range(len(starts)):
        presence[starts[i]:ends[i]] = 1
    
    if length == 729:
        print(group['qseqid'].unique(), group['Genome'].unique(), length, np.sum(presence)/len(presence)*100)
    return np.sum(presence)/len(presence)*100

def Average_PIdent(group):
    lengths = group['length'].tolist()
    pident = group['pident'].tolist()
    p_avg = 0
    for i in range(0, len(lengths)):
        p_avg += lengths[i]*pident[i]
    return p_avg/np.sum(lengths)

def Summarize_Group(group):
    contigs = [group.iloc[0]['RepresentativeContig']] + group['Contig'].tolist()
    osa_counts, osb_counts = 0, 0
    contigs_counts = len(contigs)
    rep_length = group.iloc[0]['RepresentativeLength']
    MS = []
    OS = []
    for c in contigs:
        if 'osa' in c:
            osa_counts += 1
        if 'osb' in c:
            osb_counts += 1
        for m in ['MS50','MS55','MS60','MS65']:
            if m in c:
                MS.append(m)
        for m in ['OS50','OS55','OS60','OS65']:
            if m in c:
                OS.append(m)
    return pd.Series({'RepresentativeContig':group.iloc[0]['RepresentativeContig'], 
                      'RepresentativeLength':rep_length, 'NumContigs':contigs_counts, 
                      'OSA_Counts':osa_counts, 'OSB_Counts':osb_counts, 
                      'MS-Temperature-Gradient':sorted(list(set(MS))), 
                      'OS-Temperature-Gradient':sorted(list(set(OS)))})

def Assign_Reference(sseqid, d_ref):
    for d in d_ref:
        if d in sseqid:
            return d_ref[d]
    return "NA"