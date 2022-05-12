import numpy as np
import pandas as pd
from os import listdir

bin_path = '/fs/cbcb-lab/mpop/hotspring_metagenome/metabat_all_v_all_output/'
connected_components_path = '/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Connected_Components/'
op_dir = '/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Connected_Components_Bins_Analysis/'
springs = ['MushroomSpring', 'OctopusSpring']

for spring in springs:
	samples = listdir(connected_components_path+spring+'/')
	samples.sort()
	for sample in samples:
		if sample[0] == '.':
			continue
		sample = sample.replace("_scaffolds.csv","")
		print(sample)
		conn_path = connected_components_path+spring+'/'+sample+"_scaffolds.csv"
		metabat_path = bin_path+spring+'/'+sample+"_ref_metabat_out/"+sample+"_ref_metabat"
		df_conn = pd.read_csv(conn_path, index_col = ['Node'])
		df_metabat = pd.read_csv(metabat_path, names = ['Node', 'Bin'], sep = '\t').set_index('Node')
		df_joined = df_conniram.join(df_metabat, how = 'left').reset_index()
		df_joined_binned = df_joined.groupby('Connected_Component').count()[['Bin']]
		df_joined_nunique = df_joined[['Bin','Connected_Component']].groupby('Connected_Component').agg('nunique').rename(columns={'Bin':'Unique Bins'})
		df_joined_binned = df_joined_binned.join(df_joined_nunique)

		print(df_joined_binned.head())
		df_joined_binned.to_csv(op_dir+sample+'.csv')