import sys
from Cluster_Containments_Utils import *

osa_assembly_directory = sys.argv[1]
osb_assembly_directory = sys.argv[2]
osa_ref_scaffold_directory = sys.argv[3]
osb_ref_scaffold_directory = sys.argv[4]
output = sys.argv[5]

samples = listdir(osa_ref_scaffold_directory)
OSA_Contig_Map = {}
OSA_Variant_Contigs = []
for s in samples:
    if (s.startswith("Hot") and s.endswith(".txt")):
        s = s.replace(".txt","")
        d = Load_Contigs(osa_assembly_directory+s+'_megahit_assembled_contigs_osa/'+s+'_osa.contigs.fa', s, 'osa')
        OSA_Contig_Map.update(d)
        OSA_Variant_Contigs += (Load_and_Filter_Contigs(osa_ref_scaffold_directory+s+'.txt', s, 'osa'))


samples = listdir(osb_ref_scaffold_directory)
OSB_Contig_Map = {}
OSB_Variant_Contigs = []
for s in samples:
    if (s.startswith("Hot") and s.endswith(".txt")):
        s = s.replace(".txt","")
        d = Load_Contigs(osb_assembly_directory+s+'_megahit_assembled_contigs_osb/'+s+'_osb.contigs.fa', s, 'osb')
        OSB_Contig_Map.update(d)
        OSB_Variant_Contigs += (Load_and_Filter_Contigs(osb_ref_scaffold_directory+s+'.txt', s, 'osb'))

o = open(output,'w')
for c in OSA_Variant_Contigs:
    o.write('>'+c+'\n')
    o.write(OSA_Contig_Map[c]+'\n')

for c in OSB_Variant_Contigs:
    o.write('>'+c+'\n')
    o.write(OSB_Contig_Map[c]+'\n')

o.close()