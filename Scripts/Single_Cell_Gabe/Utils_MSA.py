import numpy as np
import scipy.cluster.hierarchy as sch
from scipy.spatial.distance import squareform
from Utils_16S_Analysis import *

def Find_Break_Points(seq, gap = '-'):
    current = 0
    breaks = []
    while(current != len(seq)):
        if seq[current] == gap:
            breaks.append(current - len(breaks))
        current += 1
    return breaks

def Insert_Breaks(seq, breaks, gap = '-'):
    out = ''
    for i in range(0, len(seq)+len(breaks)):
        if i in breaks:
            out = out+gap
        if i < len(seq):
            out = out+seq[i]
    return (out)
    
def Merge_MSA(backbone_alignment, MSA, gap):
    merged_MSA = {}
    Breaks_S1 = Find_Break_Points(backbone_alignment, gap = gap)
    for M in MSA:
        seq = MSA[M]
        out = Insert_Breaks(seq, Breaks_S1, gap = gap)
        assert len(out) == len(backbone_alignment), "Length Mismatch"
        merged_MSA[M] = out
        
    return merged_MSA

def Edit(S1, S2):
    M = [[0 for i in range(len(S2) + 1)] for j in range (len(S1)+1)]
    for i in range(len(S1)+1):
        M[i][0] = 1*i
    for j in range(0, len(S2)+1):
        M[0][j] = 1*j
    Tracker = [['-' for i in range(len(S2) + 1)] for j in range (len(S1)+1)]
    
    for i in range(1, len(S1)+1):
        for j in range(1, len(S2)+1):
            if S1[i-1] == S2[j-1]:
                M[i][j] = M[i-1][j-1]
                Tracker[i][j] = 'D'
            else:
                M[i][j] = min(M[i-1][j-1]+1, M[i][j-1]+1, M[i-1][j]+1)
                if M[i][j] == M[i-1][j-1]+1:
                    Tracker[i][j] = 'D'
                elif M[i][j] == M[i][j-1]+1:
                    Tracker[i][j] = 'L'
                elif M[i][j] == M[i-1][j]+1:
                    Tracker[i][j] = 'A'
    return M[-1][-1], Tracker

def Return_Alignments(Tracker, S1_, S2_, gap = '-'):
    i,j = len(S1_), len(S2_)
    
    String1 = gap+S1_
    String2 = gap+S2_

    String_op_1 = ''
    String_op_2 = ''
    loop = True

    while(loop):
        current_state = Tracker[i][j]
        if current_state == 'A':
            String_op_1 += String1[i]
            String_op_2 += '-'
            i = i-1
        elif current_state == 'L':
            String_op_2 += String2[j]
            String_op_1 += gap
            j = j-1
        else:
            String_op_1 += String1[i]
            String_op_2 += String2[j]
            i = i-1
            j = j-1
        if i <0  or j <0:
            if String_op_1[-1] == gap and String_op_2[-1] == gap:
                String_op_1, String_op_2 = String_op_1[:-1], String_op_2[:-1]
            loop = False
    return String_op_1[::-1],String_op_2[::-1]

def Compute_Pairwise_Distances(MSA_1, MSA_2, normalized = True):
    W = np.where((MSA_1 != 4) & (MSA_2 != 4) & (MSA_1 != MSA_2))[0]
    N = np.where((MSA_1 != 4) & (MSA_2 != 4))[0]
    #print(len(W), len(N))
    if normalized:
        try:
            return len(W)*1.0/len(N)
        except ZeroDivisionError:
            print(W)
            print(N)
            print(MSA_1)
            print(MSA_2)
            print('Assertion Error')
            return 1
    return len(W)

def Create_MSA(df, start, end, sample, ref):
    MSA = {}
    df = df[(df['SStart'] > start) & (df['SEnd'] < end)]
    df['Subject'] = df['Subject'].str.replace("Synechococcus_","")
    df['Subject'] = df['Subject'].str.replace("_16SrRNA","")
    df['Divergence'] = df['MisMatches']/150*100
    idx = df.groupby(['Query'])['MisMatches'].transform(min) == df['MisMatches']
    df = df.loc[idx]
    df = df.drop_duplicates(['Query'])
    for u in df['Subject'].unique():
        MSA[u] = {}
    
    CS_strings = df['CS'].tolist()
    SStarts = df['SStart'].tolist()
    SEnds = df['SEnd'].tolist()
    subjects = df['Subject'].tolist()
    Read_Ids = df['Query'].tolist()
    
    assert len(Read_Ids) == len(np.unique(Read_Ids)), "Number of Unique Reads Mismatch"
    s = sample.replace("_FD.paf","")
    
    for i in range(0, len(CS_strings)):
        out_string = Parse_CS_String(CS_strings[i].replace("cs:Z:",""), ref[subjects[i]][SStarts[i]:SEnds[i]])
        out_string_padded = '-'*(SStarts[i]-start)+out_string+'-'*(end-SEnds[i])
        MSA[subjects[i]][s+'_'+Read_Ids[i]] = out_string_padded
    
    return MSA

def Get_Frequency(duplicates, seq_ids):
    duplicate_counts = []
    for s in seq_ids:
        flag = 0
        for l in (list(duplicates['Alpha'].values()) + 
                  list(duplicates['Beta'].values()) + 
                  list(duplicates['Gamma'].values())):
            if s in l:
                flag = 1
                duplicate_counts.append(len(l))
                break
        if flag == 0:
            duplicate_counts.append(1)
    return duplicate_counts

def Perform_Clustering(d_MSA):
    seq_ids = list(d_MSA.keys())
    Dist_MAT = np.zeros((len(seq_ids), len(seq_ids)))
    for i in range(len(seq_ids)):
        for j in range(i+1, len(seq_ids)):
            S1, S2 = seq_ids[i], seq_ids[j]
            d = Compute_Pairwise_Distances(d_MSA[S1], d_MSA[S2], normalized = True)
            Dist_MAT[i][j] = d
            Dist_MAT[j][i] = d
        print(i)
    Y = sch.linkage(squareform(Dist_MAT), method='average',optimal_ordering=True)
    leaves = sch.leaves_list(Y)
    s = np.array(seq_ids)[leaves]
    Dist_MAT = Dist_MAT[:, leaves]
    Dist_MAT = Dist_MAT[leaves,:]    
    return Dist_MAT, s

def Sub_Sample(Mat, freq, rate = 10000):
    frequencies = np.array(freq)
    frequencies = np.ceil(frequencies/frequencies.sum()*rate).astype(int)
    S = np.repeat(Mat, frequencies, axis = 0)
    S = S.T
    S = np.repeat(S, frequencies, axis = 0)
    return S, frequencies