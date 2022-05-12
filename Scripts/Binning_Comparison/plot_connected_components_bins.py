import pandas as pd
from os.path import isdir
from os import listdir, mkdir
import matplotlib.pyplot as plt



rcParams = {'font.size': 17 , 'font.weight': 'normal', 
            'font.family': 'sans-serif',
            'axes.unicode_minus':False, 
            'axes.labelweight':'normal'}
plt.rcParams.update(rcParams)

filepath = '/Users/harihara/Mount/Hot_Springs_Analysis/Binning_Comparison/'
files = listdir(filepath)
files.sort()

op_path = '/Users/harihara/Mount/Hot_Springs_Analysis/Plots/Binning_Comparison/'
if not isdir(op_path):
	mkdir(op_path)

for f in files:
	if f[0] == '.':
		continue
	print(f)
	
	df = pd.read_csv(filepath+f, low_memory = False)
	f = f.replace("_scaffolds_no_rd.csv","")
	op_file = op_path+f+"/"
	if not isdir(op_file):
		mkdir(op_file)

	df_node_count = df.groupby('Connected_Component').count()[['Bin']].rename(columns = {'Bin':'#Nodes'})[['#Nodes']]
	df_joined_nunique = df.groupby('Connected_Component').agg('nunique').rename(columns={'Bin':'Unique Bins'})[['Unique Bins']]
	df_node_count = df_node_count.join(df_joined_nunique, how = 'left').reset_index()

	fig, ax = plt.subplots(2,2, figsize = (16,12))

	df_node_count.plot.scatter('#Nodes', 'Unique Bins', color = 'blue', ax = ax[0][0], marker = 'x')
	ax[0][0].set_xlabel('#Nodes')
	ax[0][0].set_ylabel('#Unique Bins')
	
	df_unique_bins_count = df_node_count.groupby(['Unique Bins']).count().rename(columns = {'Connected_Component':'Count'})[['Count']]
	df_unique_bins_count.plot(kind = 'bar', ax = ax[0][1], legend = [], color = 'blue')
	ax[0][1].set_xlabel('#Unique Bins')
	ax[0][1].set_ylabel('#Connected Components')

	df_node_count.plot.scatter('Connected_Component', 'Unique Bins', color = 'blue', ax = ax[1][0], marker = 'x')
	ax[1][0].set_xlabel('Connected Component ID')
	ax[1][0].set_ylabel("#Unique Bins")
	
	df_node_count.reset_index(inplace = True)
	df_temp = pd.merge(df, df_node_count, left_on = ['Connected_Component'], right_on = ['Connected_Component'], how = 'left')
	df_temp.boxplot(column=['Length'], by=['Unique Bins'], ax=ax[1][1], )
	ax[1][1].set_xlabel('#Unique Bins')
	ax[1][1].set_ylabel('Length')
	ax[1][1].set_title("")
	
	fig.suptitle(f)
	fig.subplots_adjust(left=0.050, right=0.983, top=0.927, bottom=0.073)
	fig.savefig(op_file+f+".pdf")
	plt.close("all")
