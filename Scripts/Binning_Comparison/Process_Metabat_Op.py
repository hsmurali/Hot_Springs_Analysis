import sys
import numpy as np
import pandas as pd
import networkx as nx
from os import listdir

def Get_Bin_ID(metabat_path):
	df_metabat = pd.read_csv(metabat_path, names = ['Node', 'Bin'], sep = '\t').set_index('Node')
	return df_metabat

def Get_Connected_Components(graph_path, sample):
	G = nx.read_gml(graph_path+'oriented.gml')
	df_length = pd.read_csv(graph_path+'contig_length', sep = '\t', 
							names = ['Node', 'Length']).set_index('Node')

	weakly_connected_comps = list(nx.weakly_connected_components(G))

	print len(weakly_connected_comps), len(list(nx.connected_components(G.to_undirected()))), len(list(G.nodes()))
	ctr = 0
	op_df_list = []

	for conn_comp in weakly_connected_comps:
		for node in conn_comp:
			d = dict()
			d['Node'] = node
			d['Connected_Component'] = ctr
			d['Sample'] = sample
			op_df_list.append(d)
		ctr += 1

	df_op = pd.DataFrame(data = op_df_list).set_index('Node')
	df_op = df_op.join(df_length, how = 'left')
	return df_op

filepath = sys.argv[1]
graph_path = sys.argv[2]
sample = sys.argv[3]

df_metabat = Get_Bin_ID(filepath)
df_connected_component = Get_Connected_Components(graph_path, sample)
df_metabat= df_metabat.join(df_connected_component, how = 'right')

df_metabat.to_csv('/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Binning_Comparison/MS60_Metabat_1000.csv')
print(df_metabat.head())