import numpy as np
import pandas as pd
import networkx as nx
from os import listdir
import sys

def Process_MaxBin(filepath):
	files = listdir(filepath)

	op_list = []


	for f in files:
		if ".fasta" in f or ".noclass" in f or ".tooshort" in f:
			splits = f.split('.')
			if splits[1] == 'noclass':
				bin = -1
			elif splits[1] == 'tooshort':
				bin = 0
			else:
				bin = int(splits[1])
			lines = open(filepath+f, 'r').readlines()
			for line in lines:
				if line[0] == '>':
					d = {'Node':line[1:-1],'Bin':bin}
					op_list.append(d)

	df_maxbin = pd.DataFrame(op_list)
	print(df_maxbin.head())
	return df_maxbin

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
	df_op = df_op.join(df_length, how = 'right')
	return df_op

filepath = sys.argv[1]
graph_path = sys.argv[2]
sample = sys.argv[3]

df_maxbin = Process_MaxBin(filepath)
df_connected_component = Get_Connected_Components(graph_path, sample)
df_maxbin = df_maxbin.set_index('Node')
df_maxbin = df_maxbin.join(df_connected_component)

df_maxbin.to_csv('/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Binning_Comparison/MS60_Maxbin.csv')

print(df_maxbin.head())