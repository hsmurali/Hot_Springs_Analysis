import sys
import subprocess
import argparse as ap

from packaging import version
from os import listdir, mkdir
from os.path import isdir, isfile

from Scaffold_Using_References_Utils import *

def cmd_exists(cmd):
	'''
	Function to check if a linux cmd exists
	Input:
		cmd: Linux Command
	Output:
		True if command exists, false otherwise. 
	'''
	return subprocess.call("type " + cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE) == 0

def Check_Dependencies():
	'''
	Checks if all the dependencies are met! 
	'''
	pd_version = pd.__version__
	np_version = np.__version__
	nx_version = nx.__version__
   
	if version.parse(pd_version) < version.parse("1.2.4"):
		print("Incompatible Pandas version. Install Pandas (>=1.2.4)")
		return False
	if version.parse(np_version) < version.parse("1.18.3"):
		print("Incompatible Numpy version. Install Numpy (>=1.18.3)")
		return False
	if version.parse(nx_version) < version.parse("2.2"):
		print("Incompatible Networkx version. Install Networkx (>=2.2)")
		return False
	if not cmd_exists('minimap2'):
		print("Minimap2 doesn't exist. Please install minimap2")
		sys.exit(1)
	return True



parser = ap.ArgumentParser(description="CON-STRAIN is a tool to scaffold using assemblies using reference sequences."+ 
									   "It takes as input the reference genome as a fasta file,the contigs generated by the assembler and the assembly graph generated by MetaCarvel."+
									   "It additional takes as input a secondary genome and its reference that can be used as assembly graph attributes")
requiredNamed = parser.add_argument_group('required named arguments')
optionalNamed = parser.add_argument_group('optional named arguments')

requiredNamed.add_argument("-A", "--assembly", help="Path to the fasta file of contigs.", required=True)
requiredNamed.add_argument("-G1_Ref", "--primary_genome", help="Path to the fasta file of the primary reference.", required=True)
requiredNamed.add_argument("-AG", "--assembly_graph", help="Path to the Assembly Graph generated by MetaCarvel.", required=True)
requiredNamed.add_argument("-O", "--output_directory", help="Path to the output directory.", required=True)

optionalNamed.add_argument("-G1","--primary_genome_id", help="Genome ID of the primary genome", required=False, default = "G1")
optionalNamed.add_argument("-G2_Ref", "--secondary_genome", help="Path to the fasta file of the secondary reference.", required=False, default="")
optionalNamed.add_argument("-G2","--secondary_genome_id", help="Genome ID of the secondary genome", required=False, default = "G2")
optionalNamed.add_argument("-d", "--pident_threshold", help="Threshold to consider for backbone alignment.", required=False, default="80.0")
requiredNamed.add_argument("-pre", "--prefix", help="Prefix for output files.", required=False, default="Assembly.")

Check_Dependencies()

args = parser.parse_args()

if not isdir(args.output_directory):
	mkdir(args.output_directory)

if not isfile(args.assembly):
	print("Assembly not found. Incorrect filepath!")
	sys.exit(1)

if not isfile(args.primary_genome):
	print("Primary genome not found. Incorrect filepath!")
	sys.exit(1)

if not isfile(args.secondary_genome) and args.secondary_genome != "":
	print("Secondary genome not found. Incorrect filepath!")
	sys.exit(1)

command_primary = "minimap2 -t 8 " + args.primary_genome +" " + args.assembly +" > "+args.output_directory+"/"+args.prefix+args.primary_genome_id+".paf"
result = subprocess.getoutput(command_primary)
primary_alignments = Load_PAF(args.output_directory+"/"+args.prefix+args.primary_genome_id+".paf")
G = nx.read_gml(args.assembly_graph)
G = Add_Backbone_Alignment_Information(primary_alignments, args.primary_genome_id, G, float(args.pident_threshold))
	
if args.secondary_genome != "":
	#### Align assemblies to the primary and secondary genomes...
	command_secondary = "minimap2 -t 8 " + args.secondary_genome +" " + args.assembly +" > "+args.output_directory+"/"+args.prefix+args.secondary_genome+".paf"
	result = subprocess.getoutput(command_primary)
	secondary_alignments = Load_PAF(args.output_directory+"/"+args.prefix+args.secondary_genome+".paf")
	G = Add_Additional_Attributes(secondary_alignments, args.secondary_genome_id, G, float(args.pident_threshold))
	
connected_components = list(nx.weakly_connected_components(G))
out_list = []
for c in connected_components:
	subg = G.subgraph(c)
	out = Assign_Coordinates(subg, args.primary_genome_id)
	out_list += out
	
df_scaffolds = pd.DataFrame(out_list)
df_scaffolds.to_csv(args.output_directory+"/"+args.prefix+args.primary_genome_id+".txt", sep = "\t")
