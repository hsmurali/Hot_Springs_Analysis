import numpy as np
import pandas as pd
import argparse as ap
import pickle as pkl

from os import listdir
from scipy.stats.mstats import gmean
from sklearn.decomposition import PCA
from scipy.spatial.distance import pdist, squareform, correlation, cdist

def Load_Coverage_Summary(data_dir, filter_list):
	files = listdir(data_dir)
	df_Summary = pd.DataFrame()
	for f in files:
		if f.startswith("."): continue
		df = pd.read_csv(data_dir+f, sep = "\t")
		df_Summary = df_Summary.append(df, ignore_index = True)
		df_Summary = df_Summary[df_Summary['Subject'].isin(filter_list)]
		
	df_depth = df_Summary.pivot_table(index = 'Sample', columns = 'Subject',values = 'Avg_Depth_Coverage')
	df_depth = df_depth.fillna(0).reset_index()
	df_depth['Sample'] = df_depth['Sample'].str.replace("_FD","",regex = False)
	df_depth = df_depth.set_index('Sample')
	
	FM = df_depth.values
	FM = FM + 1
	gm = gmean(FM, axis=1)
	FM = np.log1p(FM/gm[:,None])
	
	Dist_Mat = squareform(pdist(FM, 'braycurtis'))
	
	index = df_depth.index.tolist()
	return np.array(Dist_Mat), FM, index

def Perform_PCA(FM, index):
	pca = PCA(n_components=2)
	pca.fit(FM)
	transformed = pca.transform(FM)
	df_new = pd.DataFrame(transformed, columns = ['PC-1','PC-2'])
	df_new.index = index
	print(pca.explained_variance_ratio_)
	return df_new, pca.explained_variance_ratio_


parser = ap.ArgumentParser(description="Summarize Abundances of Filtered Representatives")
requiredNamed = parser.add_argument_group('required named arguments')
requiredNamed.add_argument("-d", "--data_dir", help="Path to the directory containing the Summary of Read Coverages to the novel contigs", required=True)
requiredNamed.add_argument("-e", "--eggnog_excel", help="Path to the Filtered EggNOG Annotation", required=True)
requiredNamed.add_argument("-o", "--output", help="Path to the output pickle file", required=True)

args = parser.parse_args()

data_dir = args.data_dir
eggnog_excel = args.eggnog_excel
out_file = args.output

df_eggnog = pd.read_excel(eggnog_excel)
representatives = df_eggnog['RepresentativeContig'].unique().tolist()

DistMat, FeatMat, index = Load_Coverage_Summary(data_dir, representatives)
df_pca, var = Perform_PCA(FeatMat, index)

d = {'DistMat':DistMat, 'FeatMat':FeatMat, 'Index':index, 'PC_Transformed':df_pca, 'Expl_Var':var}
f = open(out_file, "wb")
pkl.dump(d, f)
f.close()
