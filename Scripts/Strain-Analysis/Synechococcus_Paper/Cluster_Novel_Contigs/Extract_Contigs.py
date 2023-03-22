from os import listdir

ref_path = '/fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Data/YNP_Hot_Springs/Ref_Genomes_Not_Syn/'
refs = listdir(ref_path)

for r in refs:
    if r.endswith(".fna") or r.endswith(".fasta"):
        print(r)
        outpath = open(ref_path+r.replace(".fna","_Contigs.txt").replace(".fasta","_Contigs.txt"), 'w')
        lines = open(ref_path+r).readlines()
        for l in lines:
            if l.startswith(">"):
                l = l.split(' ')
                outpath.write(l[0].replace(">","")+'\t'+r.replace(".fna","\n").replace(".fasta","\n"))
        outpath.close()