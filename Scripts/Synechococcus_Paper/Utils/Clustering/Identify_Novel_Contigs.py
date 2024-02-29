import sys
from Cluster_Containments_Utils import *
import argparse as ap

if __name__ == '__main__':
    parser = ap.ArgumentParser(description="Load and filter novel contigs.")
    requiredNamed = parser.add_argument_group('required named arguments')
    requiredNamed.add_argument("-a", "--assembly_directories", help="Path to the directories containing the assemblies.", nargs = '+', required=True)
    requiredNamed.add_argument("-g", "--genomes", help="List of genomes that were assembled and scaffolded using references", nargs = '+', required=True)
    requiredNamed.add_argument("-o", "--output_file", help = "Name of the output.", required = True)

    args = parser.parse_args()
    assembly_directories = args.assembly_directories
    genomes = args.genomes
    output = args.output_file

    contigs = {}
    variant_contigs = []

    for i in range(len(assembly_directories)):
        samples = listdir(assembly_directories[i] +'/')
        for s in samples:
            if s.startswith('Hot'):
                assembly = assembly_directories[i] +'/'+s+'/Megahit_Contigs/final.contigs.fa'
                ref_scaffolds = assembly_directories[i] +'/'+s+'/reference_guided_scaffolds/Ref_Guided_Scaffolds.'+genomes[i]+'.txt'
                s = s.replace(".txt","")
                d = Load_Contigs(assembly, s, genomes[i])
                contigs.update(d)
                variant_contigs += (Load_and_Filter_Contigs(ref_scaffolds,s,genomes[i]))

    o = open(output,'w')
    for c in variant_contigs:
        contig_id = c
        if len(contig_id) >= 50:
            for g in genomes:
                if g in contig_id:
                    contig_id = contig_id.replace(g, "Genome")
        o.write('>'+contig_id+'\n')
        o.write(contigs[c]+'\n')
    o.close()