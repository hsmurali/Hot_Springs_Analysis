import numpy as np
import pandas as pd

def Make_Counts(df_osa, df_osb, osa_len, osb_len):
    osa_indicator = {}
    osb_indicator = {}
    osa_gbl_counts = np.zeros(osa_len)
    osb_gbl_counts = np.zeros(osb_len)
    try:
        osa_samples = set(df_osa['Sample'].tolist())
    except KeyError:
        osa_samples = set({})
    try:
        osb_samples = set(df_osb['Sample'].tolist())
    except KeyError:
        osb_samples = set({})
        
    for g in osa_samples:
        try:
            osa = np.zeros(osa_len)
            temp_osa = df_osa[df_osa['Sample'] == g]
            starts = temp_osa['Start'].tolist()
            ends = temp_osa['End'].tolist()
            lengths = temp_osa['Length'].tolist()
            
            for i in range(len(starts)):
                start, end = int(min(starts[i],ends[i])), int(max(starts[i],ends[i]))
                if abs(start-end) == lengths[i]:    
                    osa[start:end] += 1
                    osa_gbl_counts[start:end] += 1
                else:
                    print("Here", end-start, lengths[i])
                    osa[end:osa_len] += 1
                    osa[0:start] += 1
                    osa_gbl_counts[end:osa_len] += 1
                    osa_gbl_counts[0:start] += 1
            osa[np.isnan(osa)] = 0
            osa_indicator[g] = osa
        except KeyError:
            print('OSA',g)
            osa_indicator[g] = osa
            
    for g in osb_samples:    
        try:
            osb = np.zeros(osb_len)
            temp_osb = df_osb[df_osb['Sample'] == g].reset_index()
            starts = temp_osb['Start'].tolist()
            ends = temp_osb['End'].tolist()
            lengths = temp_osb['Length'].tolist()
            
            for i in range(len(starts)):
                start, end = int(min(starts[i],ends[i])), int(max(starts[i],ends[i]))
                if abs(start-end) == lengths[i]:    
                    osb[start:end] += 1
                    osb_gbl_counts[start:end] += 1
                else:
                    print("Here", end-start, lengths[i])
                    osb[end:osa_len] += 1
                    osb[0:start] += 1
                    osb_gbl_counts[end:osb_len] += 1
                    osb_gbl_counts[0:start] += 1
            osb[np.isnan(osb)] = 0
            osb_indicator[g] = osb
        except KeyError:
            print('OSB',g)
            osb_indicator[g] = osb
    return osa_indicator, osb_indicator, osa_gbl_counts, osb_gbl_counts

def Max_Clique_Interval_Graph(group):
    length = group.iloc[0]['Contig_Length']
    if len(group) == 1:
        return pd.Series({'Max_Clique':1, 'Start':group['Start'].tolist()[0], 
                          'End': group['End'].tolist()[0], 'Num_Assignments': 1, 
                          'Length':length})
    
    group['Diff'] = group['Start'].shift(-1) - group['End']
    num_assign = len(group)
    max_clique = -1
    max_start, max_end = 0, 0
    clique = -1
    start, end = 0, 0
    
    difference = group['Diff'].tolist()
    starts = group['Start'].tolist()
    ends = group['End'].tolist()
    
    flag = False
    for i in range(0,len(difference)):
        if difference[i] <= 0 and flag == False:
            clique = 2
            start = starts[i]
            end = ends[i]
            flag = True
        elif difference[i] <= 0 and flag == True:
            clique += 1
        elif difference[i] > 0:
            if max_clique < clique:
                max_clique = clique
                max_start = start
                max_end = end
            flag = False
            clique = -1
    
    if max_clique < clique:
        max_clique = clique
        max_start = start
        max_end = end
            
    if max_clique == -1:
        max_clique = 1
        i = np.argmin(difference)
        max_start = starts[i]
        max_end = ends[i]
    
    return pd.Series({'Max_Clique':max_clique, 'Start':max_start, 
                      'End': max_end, 'Num_Assignments':num_assign,
                      'Length':length})