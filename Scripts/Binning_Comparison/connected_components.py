import sys
import numpy as np
import pandas as pd
import networkx as nx
from os import listdir

def Get_Bin_ID(sample):
	sample = sample.replace("_scaffolds_no_rd","")
	bin_path = '/fs/cbcb-lab/mpop/hotspring_metagenome/metabat_all_v_all_output/'
	mushroomspring_Samples = listdir(bin_path+'MushroomSpring/')
	octopusspring_Samples = listdir(bin_path+'OctopusSpring/')
	
	if sample+"_ref_metabat_out" in mushroomspring_Samples:
		metabat_path = bin_path+'/MushroomSpring/'+sample+"_ref_metabat_out/"+sample+"_ref_metabat"
		Spring = 'MushroomSpring'
	elif sample+"_ref_metabat_out" in octopusspring_Samples:
		metabat_path = bin_path+'/OctopusSpring/'+sample+"_ref_metabat_out/"+sample+"_ref_metabat"
		Spring = 'OctopusSpring'

	df_metabat = pd.read_csv(metabat_path, names = ['Node', 'Bin'], sep = '\t').set_index('Node')
	df_metabat['Spring'] = Spring

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
	df_metabat_results = Get_Bin_ID(sample)
	df_op = df_op.join(df_metabat_results, how = 'left')
	return df_op

g_path = sys.argv[1]
op_path = sys.argv[2]
sample = sys.argv[3]

df_op = Get_Connected_Components(g_path, sample)
df_op.to_csv(op_path+sample+'.csv')