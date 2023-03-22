import re
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from Bio import SeqIO
from copy import deepcopy
from functools import partial
from os import listdir, mkdir


def Load_PAF(filepath, sample):
    header = ['Query','QLen','QStart','QEnd','Orientation','Subject','SLen','SStart','SEnd',
              'Matches','AlignLength','MAPQ','TP', 'MM', 'GN', 'GO', 'CG', 'CS']
    df = pd.read_csv(filepath, sep = "\t", names = header)
    
    df[['QLen','QStart','QEnd','SLen','SStart',
        'SEnd','Matches','AlignLength','MAPQ']] = df[['QLen','QStart','QEnd','SLen','SStart',
                                                      'SEnd','Matches','AlignLength','MAPQ']].astype('int')
    df['PIdent'] = df['Matches']/df['AlignLength']*100.0
    df['Sample'] = sample.replace("_FD.paf","")
    df['S_Align'] = df['SEnd'] - df['SStart']
    df = df[(df['QLen'] == df['AlignLength'])]
    df = df[df['QLen'] > 120]
    
    print(len(df[df['QLen'] == 150]), len(df))
    
    df['Read_Name'] = df['Query'].str[0:-2]
    df['Read_Tag'] = df['Query'].str[-1]
    df['MisMatches'] = df['AlignLength']-df['Matches']
    df['Read_ID'] = df['Sample']+"_"+df['Query']
    
    return df

def Coverage_Stats(group, slen, pe = False, length = 1300):
    coverage = np.zeros(slen)
    
    if (pe):
        Sstarts = group[('SStart','1')].tolist() + group[('SStart','2')].tolist()
        Sends = group[('SEnd','1')].tolist() + group[('SEnd','2')].tolist()
    else:
        Sstarts = group['SStart'].tolist()
        Sends = group['SEnd'].tolist()
    
    for i in range(0, len(Sstarts)):
        start, end = Sstarts[i], Sends[i]
        coverage[start:end] += 1
    length = len(coverage)
    avg_depth = coverage.sum()/length
    breadth = len(coverage[coverage > 0])/length*100.0
    num_reads = len(group)
    
    return pd.Series({'Avg_Depth_Coverage':avg_depth, 
                      'Breadth_Coverage':breadth, 
                      'Num_Reads':num_reads})

def Return_Best_Alignment(grp):
    Mismatches = np.array(grp['MisMatches'].tolist())
    min_mismatch = Mismatches.min()
    out = grp[grp['MisMatches'] == min_mismatch]
    if len(out) > 1: out['Only'] = False
    else: out['Only'] = True
    return out

def Process_CS_String(CS, v):
    vec = np.ones(int(v))
    index = 0
    CS = CS.replace("cs:Z:","").replace("*",":").replace("+","&").replace("-",'&')
    splits = CS.split(":")
    for s in splits[1:]:
        r = s.split("&")
        if r[0].isnumeric(): 
            vec[index:index+int(r[0])] = 0
            index += int(r[0])
        else: index += 1
    assert len(vec) == v, "Length Mismatch"
    
    return vec

def Count_MisMatches_Paired_End(row, slen=2000):
    coverage = np.zeros(slen)
    SStart_1, SEnd_1, Orientation_Fow = row[('SStart','1')], row[('SEnd','1')], row[('Orientation','1')]
    SStart_2, SEnd_2, Orientation_Rev = row[('SStart','2')], row[('SEnd','2')], row[('Orientation','2')]
    CS_1, CS_2 = row[('CS','1')], row[('CS','2')]
    V1, V2 = Process_CS_String(CS_1, SEnd_1-SStart_1), Process_CS_String(CS_2, SEnd_2-SStart_2)
    
    if Orientation_Fow == '+': coverage[SStart_1:SEnd_1] += V1
    elif Orientation_Fow == '-': coverage[SStart_1:SEnd_1] += V1[::-1]
        
    if Orientation_Rev == '+': coverage[SStart_2:SEnd_2] += V2
    elif Orientation_Rev == '-': coverage[SStart_2:SEnd_2] += V2[::-1]
    
    return len(coverage[coverage > 0])
    
def Merge_Paired_Ends(df_all):
    df = df_all.pivot_table(index = ['Subject','Read_Name'], columns = ['Read_Tag'], aggfunc = 'first',
                            values = ['SStart','SEnd','MisMatches','CS','Orientation'])
    df = df.dropna()
    df[[('SStart','1'),('SStart','2'),
        ('SEnd','1'),('SEnd','2')]] = df[[('SStart','1'),('SStart','2'),
                                          ('SEnd','1'),('SEnd','2')]].astype(int)
    df['Overlap'] = (df[[('SStart','1'),('SStart','2')]].max(axis = 1) - 
                     df[[('SEnd','1'),('SEnd','2')]].min(axis = 1))
    df['Overlap_Flag'] = False
    df.loc[df['Overlap'] < 0, 'Overlap_Flag'] = True
    df['MisMatches_Total'] = df.apply(Count_MisMatches_Paired_End, args=(2000,), axis = 1)
    df = df.reset_index()
    return df

def Parse_CS_String(CS, reference):
    splits = re.split('(\:|\+|\*|\-)', CS)[1:]
    assert len(splits)%2 == 0, "Length assertion failed"
    str_index = 0
    out_string = ""
    for i in range(0,len(splits),2):
        spl_char = splits[i]
        value = splits[i+1]
        if spl_char == ':':#Matches
            out_string += reference[str_index:str_index+int(value)]
            str_index += int(value)
        elif spl_char == '*':#replacement
            assert reference[str_index] == value[0], print(reference[str_index], value[0])
            out_string += value[1]
            str_index += 1
        elif spl_char == '+':#Insertion into reference
            pass
        elif spl_char == '-':#Deletion from reference
            out_string += '-'*len(value)
            str_index += len(value)
    assert len(out_string) == len(reference), print("Length mismatch")
    return (out_string)

def Generate_Alignment_Profile(seq):
    o = {'A': np.zeros(len(seq)), 'C' : np.zeros(len(seq)), 'G' : np.zeros(len(seq)), 'T' : np.zeros(len(seq))}
    for i in range(len(seq)):
        try:
            o[seq[i]][i] += 1
        except KeyError:
            pass
    return o

def Plot_Divergence(df, ax, genomes, xlabel, ylabel, x_twin_label, legend, legend_list, 
                    x = 'MisMatches', y = 'Num_Reads', x_twin = 'Divergence', read_length = 150, 
                    colors = ['C0','C1','C2','C5'], lw=1, ms=7.5):
    twin_axis = ax.twiny()
    for i in range(len(genomes)):
        df.loc[genomes[i]].plot(x, y, color = colors[i], marker = 'o', ms = ms, ax = ax, 
                                linestyle = '--', legend = False,linewidth = lw)
        df.loc[genomes[i]].plot(x_twin, y, color = colors[i], marker = 'o', ms = ms, ax = twin_axis, 
                                linestyle = '--', legend = False,linewidth = lw)
    ax.set_yscale('log')
    ax.set_ylabel(ylabel)
    if(legend): ax.legend(legend_list, ncol=1)

    ax.set_xlim([twin_axis.get_xlim()[0]*read_length/100 , twin_axis.get_xlim()[1]*read_length/100])
    for i in range(0, int(twin_axis.get_xlim()[1])):
        twin_axis.axvline(i, linestyle = ':', color = 'grey', linewidth = 0.5)
    twin_axis.set_xticks(np.arange(0,int(twin_axis.get_xlim()[1])+1,2))
    twin_axis.set_xlabel(x_twin_label)
    ax.yaxis.grid()
    ax.set_xlabel(xlabel)
    return ax

def Plot_Divergence_Samplewise(df, axlist, genomes, samples, xlabel, ylabel, x_twin_label, legend, legend_list, 
                               x = 'MisMatches', y = 'Num_Reads', x_twin = 'Divergence', read_length = 150, 
                               colors = ['C0','C1','C2','C5'], color_by_sample = False):
    twinx = [ax.twiny() for ax in axlist]
    ctr = 0
    
    for s in samples:
        for i in range(0, len(genomes)):
            c = colors[i]
            if color_by_sample == True: c = colors[ctr]
            df.loc[(genomes[i],s)].plot(x, y, marker = 'o', ax = axlist[i], color = c, legend = False, 
                                        linewidth = 0.5)
            df.loc[(genomes[i],s)].plot(x_twin, y, marker = 'o', ax = twinx[i], color = c, legend = False, 
                                        linewidth = 0.5)
        ctr += 1
            
    for j in range(0, len(genomes)):
        for i in range(0, int(twinx[j].get_xlim()[1])):
            twinx[j].axvline(i, linestyle = ':', color = 'grey', linewidth = 0.5)
        twinx[j].set_xticks(np.arange(0,int(twinx[j].get_xlim()[1])+1,4))
        twinx[j].set_xlabel(x_twin_label)
        axlist[j].set_xlabel(xlabel)
        axlist[j].set_yscale('log')
        axlist[j].set_ylim(axlist[1].get_ylim())
        axlist[j].set_ylabel(ylabel[j])
        axlist[j].yaxis.grid()
        if j != 0:
            axlist[j].set_yticklabels([])
    if legend:
        axlist[-1].legend(legend_list, ncol = 2)
    return axlist

def Load_Fasta_Seqs(seq_path, MSA_Encoding = False):
    d = {}
    fasta_sequences = SeqIO.parse(open(seq_path),'fasta')
    for s in fasta_sequences:
        seq = str(s.seq)
        if MSA_Encoding == True:
            seq = seq.replace("A","0").replace("C","1").replace("G","2").replace("T","3").replace("-","4").replace("N","5")
            seq = np.array(list(seq), dtype = int)
        d[s.name] = seq
    return d
