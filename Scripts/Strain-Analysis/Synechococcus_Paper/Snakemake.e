Building DAG of jobs...
Using shell: /usr/bin/bash
Provided cluster nodes: 34
Job stats:
job                                          count    min threads    max threads
-----------------------------------------  -------  -------------  -------------
Align_SAGs_To_Synechococcus_Novel_Contigs      378              1              1
Summarize_Abundances_Representatives             5              1              1
Summarize_Reassmbly                              6              1              1
Summarize_SAG_Alignments                         1              1              1
all                                              1              1              1
total                                          391              1              1

Select jobs to execute...

[Wed Feb 28 20:58:14 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf
    jobid: 113
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E12_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 113 with external jobid 'Submitted batch job 2194774'.

[Wed Feb 28 20:58:17 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf
    jobid: 233
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K13_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 233 with external jobid 'Submitted batch job 2194775'.

[Wed Feb 28 20:58:17 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf
    jobid: 293
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3J21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 293 with external jobid 'Submitted batch job 2194776'.

[Wed Feb 28 20:58:18 2024]
rule Summarize_Abundances_Representatives:
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 386
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/Respresentative_Abundances.Summary.pkl; Software environment definition has changed since last execution
    wildcards: cg=Synechococcus
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 386 with external jobid 'Submitted batch job 2194777'.

[Wed Feb 28 20:58:19 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf
    jobid: 70
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 70 with external jobid 'Submitted batch job 2194778'.

[Wed Feb 28 20:58:20 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf
    jobid: 96
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA1C8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 96 with external jobid 'Submitted batch job 2194779'.

[Wed Feb 28 20:58:21 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf
    jobid: 156
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1C10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 156 with external jobid 'Submitted batch job 2194780'.

[Wed Feb 28 20:58:22 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf
    jobid: 276
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02M11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 276 with external jobid 'Submitted batch job 2194781'.

[Wed Feb 28 20:58:23 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf
    jobid: 336
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 336 with external jobid 'Submitted batch job 2194782'.

[Wed Feb 28 20:58:24 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf
    jobid: 246
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 246 with external jobid 'Submitted batch job 2194783'.

[Wed Feb 28 20:58:25 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/Roseiflexus
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Reassembly.Summary.pkl
    jobid: 6
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=Roseiflexus
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 6 with external jobid 'Submitted batch job 2194784'.

[Wed Feb 28 20:58:25 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf
    jobid: 186
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 186 with external jobid 'Submitted batch job 2194785'.

[Wed Feb 28 20:58:26 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf
    jobid: 36
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA1F9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 36 with external jobid 'Submitted batch job 2194786'.

[Wed Feb 28 20:58:27 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf
    jobid: 366
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 366 with external jobid 'Submitted batch job 2194787'.

[Wed Feb 28 20:58:28 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf
    jobid: 19
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01J19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 19 with external jobid 'Submitted batch job 2194788'.

[Wed Feb 28 20:58:29 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf
    jobid: 379
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01F12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 379 with external jobid 'Submitted batch job 2194789'.

[Wed Feb 28 20:58:30 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf
    jobid: 183
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 183 with external jobid 'Submitted batch job 2194790'.

[Wed Feb 28 20:58:31 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf
    jobid: 303
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3F3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 303 with external jobid 'Submitted batch job 2194791'.

[Wed Feb 28 20:58:32 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf
    jobid: 363
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 363 with external jobid 'Submitted batch job 2194792'.

[Wed Feb 28 20:58:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf
    jobid: 122
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01F18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 122 with external jobid 'Submitted batch job 2194793'.

[Wed Feb 28 20:58:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf
    jobid: 182
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01G12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 182 with external jobid 'Submitted batch job 2194794'.

[Wed Feb 28 20:58:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf
    jobid: 302
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 302 with external jobid 'Submitted batch job 2194795'.

[Wed Feb 28 20:58:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf
    jobid: 362
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 362 with external jobid 'Submitted batch job 2194796'.

[Wed Feb 28 20:58:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf
    jobid: 226
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1G14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 226 with external jobid 'Submitted batch job 2194797'.

[Wed Feb 28 20:58:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf
    jobid: 225
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E18_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 225 with external jobid 'Submitted batch job 2194798'.

[Wed Feb 28 20:58:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf
    jobid: 89
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1L10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 89 with external jobid 'Submitted batch job 2194799'.

[Wed Feb 28 20:58:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf
    jobid: 209
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1K14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 209 with external jobid 'Submitted batch job 2194800'.

[Wed Feb 28 20:58:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf
    jobid: 329
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1K3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 329 with external jobid 'Submitted batch job 2194801'.

[Wed Feb 28 20:58:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf
    jobid: 88
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1D12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 88 with external jobid 'Submitted batch job 2194802'.

[Wed Feb 28 20:58:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf
    jobid: 208
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3J3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 208 with external jobid 'Submitted batch job 2194803'.

[Wed Feb 28 20:58:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf
    jobid: 328
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 328 with external jobid 'Submitted batch job 2194804'.

[Wed Feb 28 20:58:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf
    jobid: 327
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3H17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 327 with external jobid 'Submitted batch job 2194805'.

[Wed Feb 28 20:58:44 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/Aerophilum
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Reassembly.Summary.pkl
    jobid: 3
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=Aerophilum
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 3 with external jobid 'Submitted batch job 2194806'.

[Wed Feb 28 20:58:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf
    jobid: 130
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 130 with external jobid 'Submitted batch job 2194807'.
[Wed Feb 28 20:59:23 2024]
Finished job 113.
1 of 391 steps (0.3%) done
Select jobs to execute...

[Wed Feb 28 20:59:24 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf
    jobid: 159
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3N3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 159 with external jobid 'Submitted batch job 2194808'.
[Wed Feb 28 20:59:24 2024]
Finished job 233.
2 of 391 steps (1%) done
[Wed Feb 28 20:59:24 2024]
Finished job 293.
3 of 391 steps (1%) done
Select jobs to execute...

[Wed Feb 28 20:59:25 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf
    jobid: 294
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02C16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 294 with external jobid 'Submitted batch job 2194809'.

[Wed Feb 28 20:59:25 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf
    jobid: 301
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02K10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 301 with external jobid 'Submitted batch job 2194810'.
Select jobs to execute...
[Wed Feb 28 20:59:38 2024]
Finished job 276.
4 of 391 steps (1%) done

[Wed Feb 28 20:59:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf
    jobid: 373
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 373 with external jobid 'Submitted batch job 2194811'.
[Wed Feb 28 20:59:38 2024]
Finished job 336.
5 of 391 steps (1%) done
[Wed Feb 28 20:59:38 2024]
Finished job 246.
6 of 391 steps (2%) done
[Wed Feb 28 20:59:39 2024]
Finished job 186.
7 of 391 steps (2%) done
[Wed Feb 28 20:59:39 2024]
Finished job 36.
8 of 391 steps (2%) done
[Wed Feb 28 20:59:39 2024]
Finished job 366.
9 of 391 steps (2%) done
[Wed Feb 28 20:59:39 2024]
Finished job 19.
10 of 391 steps (3%) done
[Wed Feb 28 20:59:39 2024]
Finished job 379.
11 of 391 steps (3%) done
[Wed Feb 28 20:59:39 2024]
Finished job 183.
12 of 391 steps (3%) done
Select jobs to execute...

[Wed Feb 28 20:59:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf
    jobid: 114
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02C19_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 114 with external jobid 'Submitted batch job 2194812'.

[Wed Feb 28 20:59:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf
    jobid: 234
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 234 with external jobid 'Submitted batch job 2194813'.

[Wed Feb 28 20:59:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf
    jobid: 181
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1C19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 181 with external jobid 'Submitted batch job 2194814'.

[Wed Feb 28 20:59:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf
    jobid: 87
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02L18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 87 with external jobid 'Submitted batch job 2194815'.

[Wed Feb 28 20:59:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf
    jobid: 207
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3L5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 207 with external jobid 'Submitted batch job 2194816'.

[Wed Feb 28 20:59:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf
    jobid: 71
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 71 with external jobid 'Submitted batch job 2194817'.

[Wed Feb 28 20:59:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf
    jobid: 131
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3N17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 131 with external jobid 'Submitted batch job 2194818'.

[Wed Feb 28 20:59:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf
    jobid: 306
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3H3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 306 with external jobid 'Submitted batch job 2194819'.
[Wed Feb 28 20:59:46 2024]
Finished job 303.
13 of 391 steps (3%) done
[Wed Feb 28 20:59:46 2024]
Finished job 363.
14 of 391 steps (4%) done
Select jobs to execute...

[Wed Feb 28 20:59:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf
    jobid: 335
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3K21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 335 with external jobid 'Submitted batch job 2194820'.

[Wed Feb 28 20:59:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf
    jobid: 49
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 49 with external jobid 'Submitted batch job 2194821'.
Select jobs to execute...
[Wed Feb 28 20:59:50 2024]
Finished job 130.
15 of 391 steps (4%) done

[Wed Feb 28 20:59:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf
    jobid: 313
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02K9_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 313 with external jobid 'Submitted batch job 2194822'.
[Wed Feb 28 20:59:51 2024]
Finished job 122.
16 of 391 steps (4%) done
[Wed Feb 28 20:59:51 2024]
Finished job 386.
17 of 391 steps (4%) done
[Wed Feb 28 20:59:51 2024]
Finished job 70.
18 of 391 steps (5%) done
Select jobs to execute...

[Wed Feb 28 20:59:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf
    jobid: 337
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F21_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 337 with external jobid 'Submitted batch job 2194823'.

[Wed Feb 28 20:59:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf
    jobid: 277
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02F21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 277 with external jobid 'Submitted batch job 2194824'.

[Wed Feb 28 20:59:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf
    jobid: 339
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F18_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 339 with external jobid 'Submitted batch job 2194825'.
[Wed Feb 28 20:59:53 2024]
Finished job 96.
19 of 391 steps (5%) done
[Wed Feb 28 20:59:53 2024]
Finished job 156.
20 of 391 steps (5%) done
[Wed Feb 28 20:59:53 2024]
Finished job 182.
21 of 391 steps (5%) done
[Wed Feb 28 20:59:53 2024]
Finished job 302.
22 of 391 steps (6%) done
[Wed Feb 28 20:59:53 2024]
Finished job 362.
23 of 391 steps (6%) done
[Wed Feb 28 20:59:53 2024]
Finished job 226.
24 of 391 steps (6%) done
[Wed Feb 28 20:59:53 2024]
Finished job 225.
25 of 391 steps (6%) done
[Wed Feb 28 20:59:53 2024]
Finished job 89.
26 of 391 steps (7%) done
[Wed Feb 28 20:59:53 2024]
Finished job 209.
27 of 391 steps (7%) done
[Wed Feb 28 20:59:53 2024]
Finished job 329.
28 of 391 steps (7%) done
[Wed Feb 28 20:59:53 2024]
Finished job 88.
29 of 391 steps (7%) done
[Wed Feb 28 20:59:53 2024]
Finished job 208.
30 of 391 steps (8%) done
[Wed Feb 28 20:59:54 2024]
Finished job 328.
31 of 391 steps (8%) done
[Wed Feb 28 20:59:54 2024]
Finished job 327.
32 of 391 steps (8%) done
Select jobs to execute...

[Wed Feb 28 20:59:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf
    jobid: 20
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2F22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 20 with external jobid 'Submitted batch job 2194826'.

[Wed Feb 28 20:59:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf
    jobid: 275
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2D11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 275 with external jobid 'Submitted batch job 2194827'.

[Wed Feb 28 20:59:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf
    jobid: 99
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3N22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 99 with external jobid 'Submitted batch job 2194828'.

[Wed Feb 28 20:59:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf
    jobid: 121
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01E9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 121 with external jobid 'Submitted batch job 2194829'.

[Wed Feb 28 20:59:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf
    jobid: 361
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3D3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 361 with external jobid 'Submitted batch job 2194830'.

[Wed Feb 28 20:59:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf
    jobid: 380
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3G12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 380 with external jobid 'Submitted batch job 2194831'.

[Wed Feb 28 20:59:59 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/OSB
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSB/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSB/Summary/Reassembly.Summary.pkl
    jobid: 2
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSB/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=OSB
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 2 with external jobid 'Submitted batch job 2194832'.

[Wed Feb 28 21:00:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf
    jobid: 169
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 169 with external jobid 'Submitted batch job 2194833'.

[Wed Feb 28 21:00:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf
    jobid: 157
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 157 with external jobid 'Submitted batch job 2194834'.

[Wed Feb 28 21:00:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf
    jobid: 37
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02K18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 37 with external jobid 'Submitted batch job 2194835'.

[Wed Feb 28 21:00:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf
    jobid: 97
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 97 with external jobid 'Submitted batch job 2194836'.

[Wed Feb 28 21:00:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf
    jobid: 378
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1J6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 378 with external jobid 'Submitted batch job 2194837'.

[Wed Feb 28 21:00:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf
    jobid: 18
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3E21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 18 with external jobid 'Submitted batch job 2194838'.

[Wed Feb 28 21:00:05 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf
    jobid: 224
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 224 with external jobid 'Submitted batch job 2194839'.
Select jobs to execute...
[Wed Feb 28 21:00:28 2024]
Finished job 373.
33 of 391 steps (8%) done

[Wed Feb 28 21:00:28 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf
    jobid: 13
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H14_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 13 with external jobid 'Submitted batch job 2194840'.
[Wed Feb 28 21:00:29 2024]
Finished job 114.
34 of 391 steps (9%) done
[Wed Feb 28 21:00:29 2024]
Finished job 159.
35 of 391 steps (9%) done
[Wed Feb 28 21:00:29 2024]
Finished job 294.
36 of 391 steps (9%) done
[Wed Feb 28 21:00:29 2024]
Finished job 301.
37 of 391 steps (9%) done
Select jobs to execute...

[Wed Feb 28 21:00:29 2024]
rule Summarize_Abundances_Representatives:
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 387
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Respresentative_Abundances.Summary.pkl; Software environment definition has changed since last execution
    wildcards: cg=Aerophilum
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 387 with external jobid 'Submitted batch job 2194841'.

[Wed Feb 28 21:00:30 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf
    jobid: 115
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E22_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 115 with external jobid 'Submitted batch job 2194842'.

[Wed Feb 28 21:00:31 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf
    jobid: 112
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 112 with external jobid 'Submitted batch job 2194843'.

[Wed Feb 28 21:00:31 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/Chloracidobacterium_thermophilum_B
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Reassembly.Summary.pkl
    jobid: 4
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=Chloracidobacterium_thermophilum_B
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 4 with external jobid 'Submitted batch job 2194844'.
[Wed Feb 28 21:00:32 2024]
Finished job 234.
38 of 391 steps (10%) done
[Wed Feb 28 21:00:32 2024]
Finished job 181.
39 of 391 steps (10%) done
[Wed Feb 28 21:00:32 2024]
Finished job 131.
40 of 391 steps (10%) done
[Wed Feb 28 21:00:32 2024]
Finished job 335.
41 of 391 steps (10%) done
[Wed Feb 28 21:00:32 2024]
Finished job 49.
42 of 391 steps (11%) done
[Wed Feb 28 21:00:32 2024]
Finished job 339.
43 of 391 steps (11%) done
Select jobs to execute...

[Wed Feb 28 21:00:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf
    jobid: 155
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I10_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 155 with external jobid 'Submitted batch job 2194845'.

[Wed Feb 28 21:00:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf
    jobid: 72
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 72 with external jobid 'Submitted batch job 2194846'.

[Wed Feb 28 21:00:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf
    jobid: 132
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01I15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 132 with external jobid 'Submitted batch job 2194847'.

[Wed Feb 28 21:00:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf
    jobid: 232
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 232 with external jobid 'Submitted batch job 2194848'.

[Wed Feb 28 21:00:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf
    jobid: 123
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02F16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 123 with external jobid 'Submitted batch job 2194849'.

[Wed Feb 28 21:00:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf
    jobid: 235
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02D6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 235 with external jobid 'Submitted batch job 2194850'.
Select jobs to execute...
[Wed Feb 28 21:00:41 2024]
Finished job 97.
44 of 391 steps (11%) done

[Wed Feb 28 21:00:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf
    jobid: 150
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1H3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 150 with external jobid 'Submitted batch job 2194851'.
[Wed Feb 28 21:00:42 2024]
Finished job 378.
45 of 391 steps (12%) done
[Wed Feb 28 21:00:42 2024]
Finished job 313.
46 of 391 steps (12%) done
[Wed Feb 28 21:00:42 2024]
Finished job 337.
47 of 391 steps (12%) done
[Wed Feb 28 21:00:42 2024]
Finished job 277.
48 of 391 steps (12%) done
Select jobs to execute...

[Wed Feb 28 21:00:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf
    jobid: 295
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02H16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 295 with external jobid 'Submitted batch job 2194852'.

[Wed Feb 28 21:00:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf
    jobid: 206
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3D7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 206 with external jobid 'Submitted batch job 2194853'.

[Wed Feb 28 21:00:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf
    jobid: 158
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 158 with external jobid 'Submitted batch job 2194854'.

[Wed Feb 28 21:00:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf
    jobid: 349
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02C18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 349 with external jobid 'Submitted batch job 2194855'.
[Wed Feb 28 21:00:45 2024]
Finished job 87.
49 of 391 steps (13%) done
[Wed Feb 28 21:00:45 2024]
Finished job 207.
50 of 391 steps (13%) done
[Wed Feb 28 21:00:45 2024]
Finished job 71.
51 of 391 steps (13%) done
[Wed Feb 28 21:00:45 2024]
Finished job 306.
52 of 391 steps (13%) done
[Wed Feb 28 21:00:45 2024]
Finished job 99.
53 of 391 steps (14%) done
[Wed Feb 28 21:00:45 2024]
Finished job 121.
54 of 391 steps (14%) done
[Wed Feb 28 21:00:46 2024]
Finished job 380.
55 of 391 steps (14%) done
[Wed Feb 28 21:00:46 2024]
Finished job 169.
56 of 391 steps (14%) done
[Wed Feb 28 21:00:46 2024]
Finished job 157.
57 of 391 steps (15%) done
[Wed Feb 28 21:00:46 2024]
Finished job 37.
58 of 391 steps (15%) done
[Wed Feb 28 21:00:46 2024]
Finished job 18.
59 of 391 steps (15%) done
Select jobs to execute...

[Wed Feb 28 21:00:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf
    jobid: 129
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 129 with external jobid 'Submitted batch job 2194856'.

[Wed Feb 28 21:00:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf
    jobid: 69
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3I13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 69 with external jobid 'Submitted batch job 2194857'.

[Wed Feb 28 21:00:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf
    jobid: 35
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02C21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 35 with external jobid 'Submitted batch job 2194859'.

[Wed Feb 28 21:00:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf
    jobid: 95
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3E3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 95 with external jobid 'Submitted batch job 2194860'.

[Wed Feb 28 21:00:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf
    jobid: 278
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02G10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 278 with external jobid 'Submitted batch job 2194861'.

[Wed Feb 28 21:00:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf
    jobid: 338
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02K9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 338 with external jobid 'Submitted batch job 2194862'.

[Wed Feb 28 21:00:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf
    jobid: 38
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 38 with external jobid 'Submitted batch job 2194863'.

[Wed Feb 28 21:00:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf
    jobid: 263
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 263 with external jobid 'Submitted batch job 2194864'.

[Wed Feb 28 21:00:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf
    jobid: 86
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 86 with external jobid 'Submitted batch job 2194865'.

[Wed Feb 28 21:00:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf
    jobid: 326
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 326 with external jobid 'Submitted batch job 2194866'.

[Wed Feb 28 21:00:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf
    jobid: 292
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02L12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 292 with external jobid 'Submitted batch job 2194867'.
[Wed Feb 28 21:00:56 2024]
Finished job 20.
60 of 391 steps (15%) done
[Wed Feb 28 21:00:56 2024]
Finished job 275.
61 of 391 steps (16%) done
[Wed Feb 28 21:00:56 2024]
Finished job 361.
62 of 391 steps (16%) done
Select jobs to execute...

[Wed Feb 28 21:00:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf
    jobid: 300
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I11_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 300 with external jobid 'Submitted batch job 2194868'.

[Wed Feb 28 21:00:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf
    jobid: 163
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1K15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 163 with external jobid 'Submitted batch job 2194869'.

[Wed Feb 28 21:00:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf
    jobid: 283
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 283 with external jobid 'Submitted batch job 2194870'.
Select jobs to execute...
[Wed Feb 28 21:01:33 2024]
Finished job 326.
63 of 391 steps (16%) done

[Wed Feb 28 21:01:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf
    jobid: 76
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1N19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 76 with external jobid 'Submitted batch job 2194872'.
[Wed Feb 28 21:01:34 2024]
Finished job 292.
64 of 391 steps (16%) done
[Wed Feb 28 21:01:34 2024]
Finished job 150.
65 of 391 steps (17%) done
[Wed Feb 28 21:01:34 2024]
Finished job 295.
66 of 391 steps (17%) done
[Wed Feb 28 21:01:34 2024]
Finished job 206.
67 of 391 steps (17%) done
[Wed Feb 28 21:01:34 2024]
Finished job 13.
68 of 391 steps (17%) done
[Wed Feb 28 21:01:34 2024]
Finished job 387.
69 of 391 steps (18%) done
[Wed Feb 28 21:01:34 2024]
Finished job 115.
70 of 391 steps (18%) done
[Wed Feb 28 21:01:34 2024]
Finished job 3.
71 of 391 steps (18%) done
Select jobs to execute...

[Wed Feb 28 21:01:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf
    jobid: 43
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01D7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 43 with external jobid 'Submitted batch job 2194873'.

[Wed Feb 28 21:01:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf
    jobid: 103
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 103 with external jobid 'Submitted batch job 2194874'.

[Wed Feb 28 21:01:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf
    jobid: 343
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 343 with external jobid 'Submitted batch job 2194875'.

[Wed Feb 28 21:01:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf
    jobid: 223
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3N19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 223 with external jobid 'Submitted batch job 2194876'.

[Wed Feb 28 21:01:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf
    jobid: 73
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3C21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 73 with external jobid 'Submitted batch job 2194877'.

[Wed Feb 28 21:01:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf
    jobid: 360
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D20_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 360 with external jobid 'Submitted batch job 2194878'.

[Wed Feb 28 21:01:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf
    jobid: 193
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3G17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 193 with external jobid 'Submitted batch job 2194879'.

[Wed Feb 28 21:01:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf
    jobid: 253
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 253 with external jobid 'Submitted batch job 2194880'.
[Wed Feb 28 21:01:41 2024]
Finished job 112.
72 of 391 steps (18%) done
[Wed Feb 28 21:01:41 2024]
Finished job 155.
73 of 391 steps (19%) done
[Wed Feb 28 21:01:41 2024]
Finished job 72.
74 of 391 steps (19%) done
[Wed Feb 28 21:01:41 2024]
Finished job 132.
75 of 391 steps (19%) done
[Wed Feb 28 21:01:41 2024]
Finished job 232.
76 of 391 steps (19%) done
[Wed Feb 28 21:01:41 2024]
Finished job 123.
77 of 391 steps (20%) done
[Wed Feb 28 21:01:41 2024]
Finished job 235.
78 of 391 steps (20%) done
[Wed Feb 28 21:01:41 2024]
Finished job 158.
79 of 391 steps (20%) done
[Wed Feb 28 21:01:41 2024]
Finished job 349.
80 of 391 steps (20%) done
[Wed Feb 28 21:01:41 2024]
Finished job 129.
81 of 391 steps (21%) done
[Wed Feb 28 21:01:41 2024]
Finished job 69.
82 of 391 steps (21%) done
[Wed Feb 28 21:01:41 2024]
Finished job 300.
83 of 391 steps (21%) done
[Wed Feb 28 21:01:41 2024]
Finished job 163.
84 of 391 steps (21%) done
[Wed Feb 28 21:01:41 2024]
Finished job 283.
85 of 391 steps (22%) done
Select jobs to execute...

[Wed Feb 28 21:01:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf
    jobid: 330
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D7_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 330 with external jobid 'Submitted batch job 2194881'.

[Wed Feb 28 21:01:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf
    jobid: 270
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 270 with external jobid 'Submitted batch job 2194882'.

[Wed Feb 28 21:01:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf
    jobid: 30
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02F18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 30 with external jobid 'Submitted batch job 2194883'.

[Wed Feb 28 21:01:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf
    jobid: 240
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01C9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 240 with external jobid 'Submitted batch job 2194884'.

[Wed Feb 28 21:01:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf
    jobid: 60
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1E3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 60 with external jobid 'Submitted batch job 2194885'.

[Wed Feb 28 21:01:46 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/OSA
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSA/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSA/Summary/Reassembly.Summary.pkl
    jobid: 1
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSA/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=OSA
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 1 with external jobid 'Submitted batch job 2194886'.

[Wed Feb 28 21:01:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf
    jobid: 120
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1C6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 120 with external jobid 'Submitted batch job 2194887'.

[Wed Feb 28 21:01:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf
    jobid: 180
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02K9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 180 with external jobid 'Submitted batch job 2194888'.

[Wed Feb 28 21:01:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf
    jobid: 90
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3L15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 90 with external jobid 'Submitted batch job 2194889'.

[Wed Feb 28 21:01:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf
    jobid: 138
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02M13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 138 with external jobid 'Submitted batch job 2194890'.

[Wed Feb 28 21:01:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf
    jobid: 210
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K20_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 210 with external jobid 'Submitted batch job 2194891'.

[Wed Feb 28 21:01:51 2024]
rule Summarize_Abundances_Representatives:
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 388
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Respresentative_Abundances.Summary.pkl; Software environment definition has changed since last execution
    wildcards: cg=Chloracidobacterium_thermophilum_B
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 388 with external jobid 'Submitted batch job 2194892'.

[Wed Feb 28 21:01:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf
    jobid: 227
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA1H9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 227 with external jobid 'Submitted batch job 2194893'.

[Wed Feb 28 21:01:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf
    jobid: 133
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1N16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 133 with external jobid 'Submitted batch job 2194894'.
[Wed Feb 28 21:01:54 2024]
Finished job 86.
86 of 391 steps (22%) done
[Wed Feb 28 21:01:54 2024]
Finished job 35.
87 of 391 steps (22%) done
[Wed Feb 28 21:01:54 2024]
Finished job 95.
88 of 391 steps (23%) done
[Wed Feb 28 21:01:54 2024]
Finished job 278.
89 of 391 steps (23%) done
[Wed Feb 28 21:01:54 2024]
Finished job 338.
90 of 391 steps (23%) done
[Wed Feb 28 21:01:54 2024]
Finished job 38.
91 of 391 steps (23%) done
[Wed Feb 28 21:01:54 2024]
Finished job 263.
92 of 391 steps (24%) done
Select jobs to execute...

[Wed Feb 28 21:01:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf
    jobid: 56
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA1I9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 56 with external jobid 'Submitted batch job 2194895'.

[Wed Feb 28 21:01:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf
    jobid: 176
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02L4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 176 with external jobid 'Submitted batch job 2194896'.

[Wed Feb 28 21:01:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf
    jobid: 26
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02G13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 26 with external jobid 'Submitted batch job 2194897'.

[Wed Feb 28 21:01:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf
    jobid: 146
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1C3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 146 with external jobid 'Submitted batch job 2194899'.

[Wed Feb 28 21:01:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf
    jobid: 266
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01I9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 266 with external jobid 'Submitted batch job 2194900'.

[Wed Feb 28 21:01:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf
    jobid: 381
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N12_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 381 with external jobid 'Submitted batch job 2194901'.

[Wed Feb 28 21:02:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf
    jobid: 17
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 17 with external jobid 'Submitted batch job 2194902'.
[Wed Feb 28 21:02:01 2024]
Finished job 224.
93 of 391 steps (24%) done
Select jobs to execute...

[Wed Feb 28 21:02:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf
    jobid: 16
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1J3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 16 with external jobid 'Submitted batch job 2194903'.
Select jobs to execute...
[Wed Feb 28 21:02:23 2024]
Finished job 43.
94 of 391 steps (24%) done

[Wed Feb 28 21:02:23 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf
    jobid: 346
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 346 with external jobid 'Submitted batch job 2194904'.
[Wed Feb 28 21:02:24 2024]
Finished job 343.
95 of 391 steps (24%) done
[Wed Feb 28 21:02:24 2024]
Finished job 223.
96 of 391 steps (25%) done
Select jobs to execute...

[Wed Feb 28 21:02:24 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf
    jobid: 78
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F22_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 78 with external jobid 'Submitted batch job 2194905'.

[Wed Feb 28 21:02:25 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf
    jobid: 317
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1G6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 317 with external jobid 'Submitted batch job 2194906'.
[Wed Feb 28 21:02:26 2024]
Finished job 240.
97 of 391 steps (25%) done
Select jobs to execute...

[Wed Feb 28 21:02:26 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf
    jobid: 376
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 376 with external jobid 'Submitted batch job 2194907'.
Select jobs to execute...
[Wed Feb 28 21:02:36 2024]
Finished job 266.
98 of 391 steps (25%) done

[Wed Feb 28 21:02:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf
    jobid: 29
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1K9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 29 with external jobid 'Submitted batch job 2194908'.
[Wed Feb 28 21:02:37 2024]
Finished job 60.
99 of 391 steps (25%) done
[Wed Feb 28 21:02:37 2024]
Finished job 120.
100 of 391 steps (26%) done
[Wed Feb 28 21:02:37 2024]
Finished job 76.
101 of 391 steps (26%) done
[Wed Feb 28 21:02:37 2024]
Finished job 103.
102 of 391 steps (26%) done
Select jobs to execute...

[Wed Feb 28 21:02:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf
    jobid: 236
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N20_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 236 with external jobid 'Submitted batch job 2194909'.

[Wed Feb 28 21:02:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf
    jobid: 296
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3L7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 296 with external jobid 'Submitted batch job 2194910'.

[Wed Feb 28 21:02:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf
    jobid: 198
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01F9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 198 with external jobid 'Submitted batch job 2194911'.

[Wed Feb 28 21:02:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf
    jobid: 125
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I16_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 125 with external jobid 'Submitted batch job 2194912'.
[Wed Feb 28 21:02:41 2024]
Finished job 73.
103 of 391 steps (26%) done
[Wed Feb 28 21:02:41 2024]
Finished job 360.
104 of 391 steps (27%) done
[Wed Feb 28 21:02:41 2024]
Finished job 193.
105 of 391 steps (27%) done
[Wed Feb 28 21:02:41 2024]
Finished job 253.
106 of 391 steps (27%) done
[Wed Feb 28 21:02:41 2024]
Finished job 330.
107 of 391 steps (27%) done
[Wed Feb 28 21:02:41 2024]
Finished job 270.
108 of 391 steps (28%) done
[Wed Feb 28 21:02:41 2024]
Finished job 30.
109 of 391 steps (28%) done
[Wed Feb 28 21:02:41 2024]
Finished job 180.
110 of 391 steps (28%) done
[Wed Feb 28 21:02:41 2024]
Finished job 381.
111 of 391 steps (28%) done
[Wed Feb 28 21:02:41 2024]
Finished job 17.
112 of 391 steps (29%) done
Select jobs to execute...

[Wed Feb 28 21:02:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf
    jobid: 137
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02D7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 137 with external jobid 'Submitted batch job 2194913'.

[Wed Feb 28 21:02:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf
    jobid: 197
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3G3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 197 with external jobid 'Submitted batch job 2194914'.

[Wed Feb 28 21:02:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf
    jobid: 257
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 257 with external jobid 'Submitted batch job 2194915'.

[Wed Feb 28 21:02:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf
    jobid: 107
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 107 with external jobid 'Submitted batch job 2194916'.

[Wed Feb 28 21:02:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf
    jobid: 167
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1N3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 167 with external jobid 'Submitted batch job 2194917'.

[Wed Feb 28 21:02:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf
    jobid: 287
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 287 with external jobid 'Submitted batch job 2194918'.

[Wed Feb 28 21:02:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf
    jobid: 347
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1M13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 347 with external jobid 'Submitted batch job 2194919'.

[Wed Feb 28 21:02:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf
    jobid: 348
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02H22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 348 with external jobid 'Submitted batch job 2194920'.

[Wed Feb 28 21:02:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf
    jobid: 47
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02M11_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 47 with external jobid 'Submitted batch job 2194921'.

[Wed Feb 28 21:02:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf
    jobid: 77
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1E3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 77 with external jobid 'Submitted batch job 2194922'.
[Wed Feb 28 21:02:50 2024]
Finished job 146.
113 of 391 steps (29%) done
[Wed Feb 28 21:02:50 2024]
Finished job 2.
114 of 391 steps (29%) done
[Wed Feb 28 21:02:50 2024]
Finished job 4.
115 of 391 steps (29%) done
[Wed Feb 28 21:02:50 2024]
Finished job 90.
116 of 391 steps (30%) done
[Wed Feb 28 21:02:50 2024]
Finished job 138.
117 of 391 steps (30%) done
[Wed Feb 28 21:02:50 2024]
Finished job 210.
118 of 391 steps (30%) done
[Wed Feb 28 21:02:50 2024]
Finished job 388.
119 of 391 steps (30%) done
[Wed Feb 28 21:02:50 2024]
Finished job 227.
120 of 391 steps (31%) done
[Wed Feb 28 21:02:50 2024]
Finished job 133.
121 of 391 steps (31%) done
[Wed Feb 28 21:02:50 2024]
Finished job 56.
122 of 391 steps (31%) done
[Wed Feb 28 21:02:50 2024]
Finished job 176.
123 of 391 steps (31%) done
Select jobs to execute...

[Wed Feb 28 21:02:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf
    jobid: 65
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3C3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 65 with external jobid 'Submitted batch job 2194923'.

[Wed Feb 28 21:02:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf
    jobid: 124
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F16_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 124 with external jobid 'Submitted batch job 2194924'.

[Wed Feb 28 21:02:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf
    jobid: 184
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1K7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 184 with external jobid 'Submitted batch job 2194925'.

[Wed Feb 28 21:02:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf
    jobid: 274
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02L17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 274 with external jobid 'Submitted batch job 2194926'.

[Wed Feb 28 21:02:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf
    jobid: 154
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02G9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 154 with external jobid 'Submitted batch job 2194927'.

[Wed Feb 28 21:02:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf
    jobid: 334
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02H21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 334 with external jobid 'Submitted batch job 2194928'.

[Wed Feb 28 21:02:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf
    jobid: 356
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1E8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 356 with external jobid 'Submitted batch job 2194929'.

[Wed Feb 28 21:02:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf
    jobid: 116
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 116 with external jobid 'Submitted batch job 2194930'.

[Wed Feb 28 21:02:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf
    jobid: 258
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1C16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 258 with external jobid 'Submitted batch job 2194931'.

[Wed Feb 28 21:02:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf
    jobid: 228
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1K19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 228 with external jobid 'Submitted batch job 2194932'.

[Wed Feb 28 21:02:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf
    jobid: 377
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 377 with external jobid 'Submitted batch job 2194933'.
[Wed Feb 28 21:03:00 2024]
Finished job 26.
124 of 391 steps (32%) done
[Wed Feb 28 21:03:00 2024]
Finished job 16.
125 of 391 steps (32%) done
Select jobs to execute...

[Wed Feb 28 21:03:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf
    jobid: 151
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA2K7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 151 with external jobid 'Submitted batch job 2194934'.

[Wed Feb 28 21:03:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf
    jobid: 365
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 365 with external jobid 'Submitted batch job 2194935'.
Select jobs to execute...
[Wed Feb 28 21:03:28 2024]
Finished job 29.
126 of 391 steps (32%) done

[Wed Feb 28 21:03:28 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf
    jobid: 149
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 149 with external jobid 'Submitted batch job 2194936'.
[Wed Feb 28 21:03:29 2024]
Finished job 236.
127 of 391 steps (32%) done
[Wed Feb 28 21:03:29 2024]
Finished job 296.
128 of 391 steps (33%) done
[Wed Feb 28 21:03:29 2024]
Finished job 346.
129 of 391 steps (33%) done
[Wed Feb 28 21:03:29 2024]
Finished job 78.
130 of 391 steps (33%) done
[Wed Feb 28 21:03:29 2024]
Finished job 317.
131 of 391 steps (34%) done
Select jobs to execute...

[Wed Feb 28 21:03:29 2024]
rule Summarize_Abundances_Representatives:
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 389
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Respresentative_Abundances.Summary.pkl; Software environment definition has changed since last execution
    wildcards: cg=Chloroflexus_MS_G
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 389 with external jobid 'Submitted batch job 2194937'.

[Wed Feb 28 21:03:30 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf
    jobid: 364
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 364 with external jobid 'Submitted batch job 2194938'.

[Wed Feb 28 21:03:31 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf
    jobid: 318
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1F3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 318 with external jobid 'Submitted batch job 2194939'.

[Wed Feb 28 21:03:32 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf
    jobid: 168
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 168 with external jobid 'Submitted batch job 2194940'.

[Wed Feb 28 21:03:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf
    jobid: 48
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA2D9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 48 with external jobid 'Submitted batch job 2194941'.
[Wed Feb 28 21:03:34 2024]
Finished job 376.
132 of 391 steps (34%) done
[Wed Feb 28 21:03:34 2024]
Finished job 198.
133 of 391 steps (34%) done
[Wed Feb 28 21:03:34 2024]
Finished job 125.
134 of 391 steps (34%) done
[Wed Feb 28 21:03:34 2024]
Finished job 347.
135 of 391 steps (35%) done
Select jobs to execute...

[Wed Feb 28 21:03:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf
    jobid: 288
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01K7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 288 with external jobid 'Submitted batch job 2194942'.

[Wed Feb 28 21:03:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf
    jobid: 254
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 254 with external jobid 'Submitted batch job 2194943'.

[Wed Feb 28 21:03:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf
    jobid: 241
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2L10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 241 with external jobid 'Submitted batch job 2194944'.

[Wed Feb 28 21:03:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf
    jobid: 61
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 61 with external jobid 'Submitted batch job 2194945'.
Select jobs to execute...
[Wed Feb 28 21:03:41 2024]
Finished job 137.
136 of 391 steps (35%) done

[Wed Feb 28 21:03:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf
    jobid: 179
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N14_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 179 with external jobid 'Submitted batch job 2194946'.
[Wed Feb 28 21:03:42 2024]
Finished job 197.
137 of 391 steps (35%) done
Select jobs to execute...

[Wed Feb 28 21:03:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf
    jobid: 299
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1L16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 299 with external jobid 'Submitted batch job 2194947'.
[Wed Feb 28 21:03:43 2024]
Finished job 257.
138 of 391 steps (35%) done
[Wed Feb 28 21:03:43 2024]
Finished job 107.
139 of 391 steps (36%) done
[Wed Feb 28 21:03:43 2024]
Finished job 167.
140 of 391 steps (36%) done
[Wed Feb 28 21:03:43 2024]
Finished job 287.
141 of 391 steps (36%) done
[Wed Feb 28 21:03:43 2024]
Finished job 348.
142 of 391 steps (36%) done
Select jobs to execute...

[Wed Feb 28 21:03:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf
    jobid: 271
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02C9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 271 with external jobid 'Submitted batch job 2194948'.

[Wed Feb 28 21:03:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf
    jobid: 91
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 91 with external jobid 'Submitted batch job 2194949'.

[Wed Feb 28 21:03:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf
    jobid: 331
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1C3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 331 with external jobid 'Submitted batch job 2194950'.

[Wed Feb 28 21:03:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf
    jobid: 44
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 44 with external jobid 'Submitted batch job 2194951'.

[Wed Feb 28 21:03:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf
    jobid: 14
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01E14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 14 with external jobid 'Submitted batch job 2194952'.
[Wed Feb 28 21:03:48 2024]
Finished job 356.
143 of 391 steps (37%) done
[Wed Feb 28 21:03:48 2024]
Finished job 116.
144 of 391 steps (37%) done
[Wed Feb 28 21:03:48 2024]
Finished job 258.
145 of 391 steps (37%) done
[Wed Feb 28 21:03:48 2024]
Finished job 228.
146 of 391 steps (37%) done
[Wed Feb 28 21:03:48 2024]
Finished job 377.
147 of 391 steps (38%) done
Select jobs to execute...

[Wed Feb 28 21:03:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf
    jobid: 39
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02L14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 39 with external jobid 'Submitted batch job 2194953'.

[Wed Feb 28 21:03:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf
    jobid: 134
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3M3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 134 with external jobid 'Submitted batch job 2194954'.

[Wed Feb 28 21:03:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf
    jobid: 279
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1M19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 279 with external jobid 'Submitted batch job 2194955'.

[Wed Feb 28 21:03:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf
    jobid: 194
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 194 with external jobid 'Submitted batch job 2194956'.

[Wed Feb 28 21:03:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf
    jobid: 314
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02L14_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 314 with external jobid 'Submitted batch job 2194957'.
Select jobs to execute...
[Wed Feb 28 21:03:54 2024]
Finished job 365.
148 of 391 steps (38%) done

[Wed Feb 28 21:03:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf
    jobid: 342
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3I19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 342 with external jobid 'Submitted batch job 2194958'.
[Wed Feb 28 21:03:55 2024]
Finished job 47.
149 of 391 steps (38%) done
[Wed Feb 28 21:03:55 2024]
Finished job 77.
150 of 391 steps (38%) done
[Wed Feb 28 21:03:55 2024]
Finished job 65.
151 of 391 steps (39%) done
Select jobs to execute...

[Wed Feb 28 21:03:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf
    jobid: 27
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02K6_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 27 with external jobid 'Submitted batch job 2194959'.

[Wed Feb 28 21:03:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf
    jobid: 190
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3C15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 190 with external jobid 'Submitted batch job 2194960'.

[Wed Feb 28 21:03:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf
    jobid: 249
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02J6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 249 with external jobid 'Submitted batch job 2194961'.
[Wed Feb 28 21:03:58 2024]
Finished job 1.
152 of 391 steps (39%) done
[Wed Feb 28 21:03:58 2024]
Finished job 124.
153 of 391 steps (39%) done
[Wed Feb 28 21:03:58 2024]
Finished job 184.
154 of 391 steps (39%) done
[Wed Feb 28 21:03:58 2024]
Finished job 274.
155 of 391 steps (40%) done
[Wed Feb 28 21:03:58 2024]
Finished job 154.
156 of 391 steps (40%) done
[Wed Feb 28 21:03:58 2024]
Finished job 334.
157 of 391 steps (40%) done
[Wed Feb 28 21:03:58 2024]
Finished job 151.
158 of 391 steps (40%) done
Select jobs to execute...

[Wed Feb 28 21:03:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf
    jobid: 267
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02M18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 267 with external jobid 'Submitted batch job 2194962'.

[Wed Feb 28 21:03:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf
    jobid: 177
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 177 with external jobid 'Submitted batch job 2194963'.

[Wed Feb 28 21:04:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf
    jobid: 237
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01H8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 237 with external jobid 'Submitted batch job 2194964'.

[Wed Feb 28 21:04:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf
    jobid: 57
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D19_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 57 with external jobid 'Submitted batch job 2194965'.

[Wed Feb 28 21:04:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf
    jobid: 117
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1C21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 117 with external jobid 'Submitted batch job 2194966'.

[Wed Feb 28 21:04:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf
    jobid: 297
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3J20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 297 with external jobid 'Submitted batch job 2194967'.

[Wed Feb 28 21:04:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf
    jobid: 340
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01H11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 340 with external jobid 'Submitted batch job 2194968'.
Select jobs to execute...
[Wed Feb 28 21:04:33 2024]
Finished job 149.
159 of 391 steps (41%) done

[Wed Feb 28 21:04:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf
    jobid: 145
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 145 with external jobid 'Submitted batch job 2194969'.
[Wed Feb 28 21:04:34 2024]
Finished job 389.
160 of 391 steps (41%) done
[Wed Feb 28 21:04:34 2024]
Finished job 364.
161 of 391 steps (41%) done
Select jobs to execute...

[Wed Feb 28 21:04:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf
    jobid: 353
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K22_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 353 with external jobid 'Submitted batch job 2194970'.

[Wed Feb 28 21:04:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf
    jobid: 280
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3H10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 280 with external jobid 'Submitted batch job 2194971'.
[Wed Feb 28 21:04:36 2024]
Finished job 318.
162 of 391 steps (41%) done
[Wed Feb 28 21:04:36 2024]
Finished job 168.
163 of 391 steps (42%) done
[Wed Feb 28 21:04:36 2024]
Finished job 48.
164 of 391 steps (42%) done
[Wed Feb 28 21:04:36 2024]
Finished job 288.
165 of 391 steps (42%) done
[Wed Feb 28 21:04:36 2024]
Finished job 254.
166 of 391 steps (42%) done
[Wed Feb 28 21:04:36 2024]
Finished job 241.
167 of 391 steps (43%) done
[Wed Feb 28 21:04:36 2024]
Finished job 61.
168 of 391 steps (43%) done
[Wed Feb 28 21:04:36 2024]
Finished job 331.
169 of 391 steps (43%) done
[Wed Feb 28 21:04:36 2024]
Finished job 44.
170 of 391 steps (43%) done
[Wed Feb 28 21:04:36 2024]
Finished job 14.
171 of 391 steps (44%) done
[Wed Feb 28 21:04:36 2024]
Finished job 39.
172 of 391 steps (44%) done
Select jobs to execute...

[Wed Feb 28 21:04:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf
    jobid: 369
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1C11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 369 with external jobid 'Submitted batch job 2194972'.

[Wed Feb 28 21:04:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf
    jobid: 53
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02E6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 53 with external jobid 'Submitted batch job 2194973'.

[Wed Feb 28 21:04:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf
    jobid: 173
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02K8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 173 with external jobid 'Submitted batch job 2194974'.

[Wed Feb 28 21:04:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf
    jobid: 23
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3G19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 23 with external jobid 'Submitted batch job 2194975'.

[Wed Feb 28 21:04:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf
    jobid: 143
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 143 with external jobid 'Submitted batch job 2194976'.

[Wed Feb 28 21:04:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf
    jobid: 323
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01F21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 323 with external jobid 'Submitted batch job 2194977'.

[Wed Feb 28 21:04:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf
    jobid: 160
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1L3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 160 with external jobid 'Submitted batch job 2194978'.

[Wed Feb 28 21:04:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf
    jobid: 220
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02M17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 220 with external jobid 'Submitted batch job 2194979'.

[Wed Feb 28 21:04:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf
    jobid: 10
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02C10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 10 with external jobid 'Submitted batch job 2194980'.

[Wed Feb 28 21:04:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf
    jobid: 310
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D15_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 310 with external jobid 'Submitted batch job 2194981'.

[Wed Feb 28 21:04:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf
    jobid: 100
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 100 with external jobid 'Submitted batch job 2194982'.
[Wed Feb 28 21:04:46 2024]
Finished job 342.
173 of 391 steps (44%) done
[Wed Feb 28 21:04:46 2024]
Finished job 27.
174 of 391 steps (45%) done
[Wed Feb 28 21:04:46 2024]
Finished job 190.
175 of 391 steps (45%) done
[Wed Feb 28 21:04:46 2024]
Finished job 179.
176 of 391 steps (45%) done
[Wed Feb 28 21:04:46 2024]
Finished job 299.
177 of 391 steps (45%) done
[Wed Feb 28 21:04:46 2024]
Finished job 271.
178 of 391 steps (46%) done
Select jobs to execute...

[Wed Feb 28 21:04:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf
    jobid: 219
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 219 with external jobid 'Submitted batch job 2194983'.

[Wed Feb 28 21:04:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf
    jobid: 62
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K12_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 62 with external jobid 'Submitted batch job 2194984'.

[Wed Feb 28 21:04:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf
    jobid: 199
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3K3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 199 with external jobid 'Submitted batch job 2194985'.

[Wed Feb 28 21:04:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf
    jobid: 139
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2D15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 139 with external jobid 'Submitted batch job 2194986'.

[Wed Feb 28 21:04:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf
    jobid: 79
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 79 with external jobid 'Submitted batch job 2194987'.

[Wed Feb 28 21:04:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf
    jobid: 126
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 126 with external jobid 'Submitted batch job 2194988'.
[Wed Feb 28 21:04:52 2024]
Finished job 91.
179 of 391 steps (46%) done
[Wed Feb 28 21:04:52 2024]
Finished job 134.
180 of 391 steps (46%) done
[Wed Feb 28 21:04:52 2024]
Finished job 279.
181 of 391 steps (46%) done
[Wed Feb 28 21:04:52 2024]
Finished job 194.
182 of 391 steps (47%) done
[Wed Feb 28 21:04:52 2024]
Finished job 314.
183 of 391 steps (47%) done
[Wed Feb 28 21:04:52 2024]
Finished job 249.
184 of 391 steps (47%) done
[Wed Feb 28 21:04:52 2024]
Finished job 267.
185 of 391 steps (47%) done
[Wed Feb 28 21:04:52 2024]
Finished job 177.
186 of 391 steps (48%) done
[Wed Feb 28 21:04:52 2024]
Finished job 237.
187 of 391 steps (48%) done
[Wed Feb 28 21:04:52 2024]
Finished job 57.
188 of 391 steps (48%) done
[Wed Feb 28 21:04:52 2024]
Finished job 117.
189 of 391 steps (48%) done
[Wed Feb 28 21:04:52 2024]
Finished job 297.
190 of 391 steps (49%) done
[Wed Feb 28 21:04:52 2024]
Finished job 340.
191 of 391 steps (49%) done
Select jobs to execute...

[Wed Feb 28 21:04:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf
    jobid: 212
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02C18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 212 with external jobid 'Submitted batch job 2194989'.

[Wed Feb 28 21:04:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf
    jobid: 32
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N11_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 32 with external jobid 'Submitted batch job 2194990'.

[Wed Feb 28 21:04:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf
    jobid: 92
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 92 with external jobid 'Submitted batch job 2194991'.

[Wed Feb 28 21:04:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf
    jobid: 152
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1L18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 152 with external jobid 'Submitted batch job 2194992'.

[Wed Feb 28 21:04:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf
    jobid: 272
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02L13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 272 with external jobid 'Submitted batch job 2194993'.

[Wed Feb 28 21:04:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf
    jobid: 332
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2E16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 332 with external jobid 'Submitted batch job 2194994'.

[Wed Feb 28 21:04:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf
    jobid: 229
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01E10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 229 with external jobid 'Submitted batch job 2194995'.

[Wed Feb 28 21:04:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf
    jobid: 289
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 289 with external jobid 'Submitted batch job 2194996'.

[Wed Feb 28 21:04:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf
    jobid: 109
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 109 with external jobid 'Submitted batch job 2194997'.

[Wed Feb 28 21:05:00 2024]
rule Summarize_Abundances_Representatives:
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 390
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Respresentative_Abundances.Summary.pkl; Software environment definition has changed since last execution
    wildcards: cg=Roseiflexus
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 390 with external jobid 'Submitted batch job 2194998'.

[Wed Feb 28 21:05:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf
    jobid: 52
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02D17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 52 with external jobid 'Submitted batch job 2194999'.

[Wed Feb 28 21:05:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf
    jobid: 352
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3L3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 352 with external jobid 'Submitted batch job 2195000'.

[Wed Feb 28 21:05:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf
    jobid: 242
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 242 with external jobid 'Submitted batch job 2195001'.
Select jobs to execute...
[Wed Feb 28 21:05:24 2024]
Finished job 353.
192 of 391 steps (49%) done

[Wed Feb 28 21:05:24 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf
    jobid: 201
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2M20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 201 with external jobid 'Submitted batch job 2195003'.
[Wed Feb 28 21:05:25 2024]
Finished job 280.
193 of 391 steps (49%) done
Select jobs to execute...

[Wed Feb 28 21:05:25 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf
    jobid: 261
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1L4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 261 with external jobid 'Submitted batch job 2195004'.
[Wed Feb 28 21:05:37 2024]
Finished job 100.
194 of 391 steps (50%) done
Select jobs to execute...

[Wed Feb 28 21:05:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf
    jobid: 111
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA1J9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 111 with external jobid 'Submitted batch job 2195006'.
[Wed Feb 28 21:05:38 2024]
Finished job 219.
195 of 391 steps (50%) done
[Wed Feb 28 21:05:38 2024]
Finished job 62.
196 of 391 steps (50%) done
[Wed Feb 28 21:05:38 2024]
Finished job 199.
197 of 391 steps (50%) done
[Wed Feb 28 21:05:38 2024]
Finished job 145.
198 of 391 steps (51%) done
Select jobs to execute...

[Wed Feb 28 21:05:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf
    jobid: 15
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 15 with external jobid 'Submitted batch job 2195007'.

[Wed Feb 28 21:05:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf
    jobid: 345
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA02I9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 345 with external jobid 'Submitted batch job 2195008'.

[Wed Feb 28 21:05:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf
    jobid: 118
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3I3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 118 with external jobid 'Submitted batch job 2195009'.

[Wed Feb 28 21:05:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf
    jobid: 285
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1G4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 285 with external jobid 'Submitted batch job 2195010'.
[Wed Feb 28 21:05:42 2024]
Finished job 369.
199 of 391 steps (51%) done
[Wed Feb 28 21:05:42 2024]
Finished job 53.
200 of 391 steps (51%) done
[Wed Feb 28 21:05:42 2024]
Finished job 173.
201 of 391 steps (51%) done
[Wed Feb 28 21:05:42 2024]
Finished job 23.
202 of 391 steps (52%) done
[Wed Feb 28 21:05:42 2024]
Finished job 143.
203 of 391 steps (52%) done
[Wed Feb 28 21:05:42 2024]
Finished job 323.
204 of 391 steps (52%) done
[Wed Feb 28 21:05:42 2024]
Finished job 160.
205 of 391 steps (52%) done
[Wed Feb 28 21:05:42 2024]
Finished job 220.
206 of 391 steps (53%) done
[Wed Feb 28 21:05:42 2024]
Finished job 10.
207 of 391 steps (53%) done
[Wed Feb 28 21:05:42 2024]
Finished job 310.
208 of 391 steps (53%) done
[Wed Feb 28 21:05:42 2024]
Finished job 139.
209 of 391 steps (53%) done
[Wed Feb 28 21:05:42 2024]
Finished job 52.
210 of 391 steps (54%) done
Select jobs to execute...

[Wed Feb 28 21:05:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf
    jobid: 28
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 28 with external jobid 'Submitted batch job 2195011'.

[Wed Feb 28 21:05:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf
    jobid: 148
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 148 with external jobid 'Submitted batch job 2195012'.

[Wed Feb 28 21:05:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf
    jobid: 58
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02E17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 58 with external jobid 'Submitted batch job 2195013'.

[Wed Feb 28 21:05:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf
    jobid: 238
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 238 with external jobid 'Submitted batch job 2195014'.

[Wed Feb 28 21:05:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf
    jobid: 268
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 268 with external jobid 'Submitted batch job 2195015'.

[Wed Feb 28 21:05:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf
    jobid: 178
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3M4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 178 with external jobid 'Submitted batch job 2195016'.

[Wed Feb 28 21:05:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf
    jobid: 298
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01K9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 298 with external jobid 'Submitted batch job 2195017'.

[Wed Feb 28 21:05:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf
    jobid: 358
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1N18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 358 with external jobid 'Submitted batch job 2195018'.

[Wed Feb 28 21:05:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf
    jobid: 11
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02L9_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 11 with external jobid 'Submitted batch job 2195019'.

[Wed Feb 28 21:05:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf
    jobid: 191
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D18_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 191 with external jobid 'Submitted batch job 2195020'.

[Wed Feb 28 21:05:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf
    jobid: 41
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 41 with external jobid 'Submitted batch job 2195021'.

[Wed Feb 28 21:05:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf
    jobid: 262
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D14_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 262 with external jobid 'Submitted batch job 2195022'.
[Wed Feb 28 21:05:53 2024]
Finished job 109.
211 of 391 steps (54%) done
[Wed Feb 28 21:05:53 2024]
Finished job 390.
212 of 391 steps (54%) done
[Wed Feb 28 21:05:53 2024]
Finished job 6.
213 of 391 steps (54%) done
[Wed Feb 28 21:05:53 2024]
Finished job 79.
214 of 391 steps (55%) done
[Wed Feb 28 21:05:53 2024]
Finished job 126.
215 of 391 steps (55%) done
[Wed Feb 28 21:05:53 2024]
Finished job 212.
216 of 391 steps (55%) done
[Wed Feb 28 21:05:53 2024]
Finished job 32.
217 of 391 steps (55%) done
[Wed Feb 28 21:05:53 2024]
Finished job 92.
218 of 391 steps (56%) done
[Wed Feb 28 21:05:53 2024]
Finished job 152.
219 of 391 steps (56%) done
[Wed Feb 28 21:05:53 2024]
Finished job 272.
220 of 391 steps (56%) done
[Wed Feb 28 21:05:53 2024]
Finished job 332.
221 of 391 steps (57%) done
[Wed Feb 28 21:05:53 2024]
Finished job 229.
222 of 391 steps (57%) done
[Wed Feb 28 21:05:53 2024]
Finished job 289.
223 of 391 steps (57%) done
[Wed Feb 28 21:05:53 2024]
Finished job 352.
224 of 391 steps (57%) done
[Wed Feb 28 21:05:53 2024]
Finished job 242.
225 of 391 steps (58%) done
Select jobs to execute...

[Wed Feb 28 21:05:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf
    jobid: 54
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 54 with external jobid 'Submitted batch job 2195023'.

[Wed Feb 28 21:05:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf
    jobid: 174
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 174 with external jobid 'Submitted batch job 2195024'.

[Wed Feb 28 21:05:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf
    jobid: 24
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1L5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 24 with external jobid 'Submitted batch job 2195026'.

[Wed Feb 28 21:05:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf
    jobid: 144
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1G3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 144 with external jobid 'Submitted batch job 2195027'.

[Wed Feb 28 21:05:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf
    jobid: 264
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3E15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 264 with external jobid 'Submitted batch job 2195028'.

[Wed Feb 28 21:05:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf
    jobid: 354
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 354 with external jobid 'Submitted batch job 2195029'.

[Wed Feb 28 21:06:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf
    jobid: 84
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 84 with external jobid 'Submitted batch job 2195030'.

[Wed Feb 28 21:06:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf
    jobid: 204
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 204 with external jobid 'Submitted batch job 2195031'.

[Wed Feb 28 21:06:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf
    jobid: 324
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3F7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 324 with external jobid 'Submitted batch job 2195032'.

[Wed Feb 28 21:06:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf
    jobid: 384
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01K5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 384 with external jobid 'Submitted batch job 2195033'.

[Wed Feb 28 21:06:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf
    jobid: 371
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1L7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 371 with external jobid 'Submitted batch job 2195034'.

[Wed Feb 28 21:06:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf
    jobid: 281
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 281 with external jobid 'Submitted batch job 2195035'.

[Wed Feb 28 21:06:05 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf
    jobid: 221
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 221 with external jobid 'Submitted batch job 2195036'.

[Wed Feb 28 21:06:06 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf
    jobid: 22
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D5_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 22 with external jobid 'Submitted batch job 2195037'.

[Wed Feb 28 21:06:07 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf
    jobid: 142
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 142 with external jobid 'Submitted batch job 2195038'.
Select jobs to execute...
[Wed Feb 28 21:06:28 2024]
Finished job 191.
226 of 391 steps (58%) done

[Wed Feb 28 21:06:29 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf
    jobid: 304
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1M3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 304 with external jobid 'Submitted batch job 2195041'.
[Wed Feb 28 21:06:29 2024]
Finished job 111.
227 of 391 steps (58%) done
[Wed Feb 28 21:06:29 2024]
Finished job 261.
228 of 391 steps (58%) done
[Wed Feb 28 21:06:29 2024]
Finished job 28.
229 of 391 steps (59%) done
Select jobs to execute...

[Wed Feb 28 21:06:30 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf
    jobid: 320
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02E13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 320 with external jobid 'Submitted batch job 2195042'.

[Wed Feb 28 21:06:30 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf
    jobid: 260
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1K11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 260 with external jobid 'Submitted batch job 2195043'.

[Wed Feb 28 21:06:31 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf
    jobid: 80
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 80 with external jobid 'Submitted batch job 2195044'.
[Wed Feb 28 21:06:32 2024]
Finished job 148.
230 of 391 steps (59%) done
[Wed Feb 28 21:06:32 2024]
Finished job 58.
231 of 391 steps (59%) done
[Wed Feb 28 21:06:32 2024]
Finished job 238.
232 of 391 steps (59%) done
[Wed Feb 28 21:06:32 2024]
Finished job 268.
233 of 391 steps (60%) done
[Wed Feb 28 21:06:32 2024]
Finished job 178.
234 of 391 steps (60%) done
[Wed Feb 28 21:06:32 2024]
Finished job 298.
235 of 391 steps (60%) done
[Wed Feb 28 21:06:32 2024]
Finished job 358.
236 of 391 steps (60%) done
[Wed Feb 28 21:06:32 2024]
Finished job 11.
237 of 391 steps (61%) done
Select jobs to execute...

[Wed Feb 28 21:06:32 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf
    jobid: 200
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3H18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 200 with external jobid 'Submitted batch job 2195045'.

[Wed Feb 28 21:06:33 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf
    jobid: 93
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2J15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 93 with external jobid 'Submitted batch job 2195046'.

[Wed Feb 28 21:06:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf
    jobid: 153
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 153 with external jobid 'Submitted batch job 2195047'.

[Wed Feb 28 21:06:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf
    jobid: 273
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 273 with external jobid 'Submitted batch job 2195048'.

[Wed Feb 28 21:06:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf
    jobid: 243
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA2H6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 243 with external jobid 'Submitted batch job 2195049'.

[Wed Feb 28 21:06:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf
    jobid: 322
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3L13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 322 with external jobid 'Submitted batch job 2195050'.

[Wed Feb 28 21:06:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf
    jobid: 33
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02H18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 33 with external jobid 'Submitted batch job 2195051'.

[Wed Feb 28 21:06:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf
    jobid: 213
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02C13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 213 with external jobid 'Submitted batch job 2195052'.
Select jobs to execute...
[Wed Feb 28 21:06:42 2024]
Finished job 371.
238 of 391 steps (61%) done

[Wed Feb 28 21:06:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf
    jobid: 374
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1J8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 374 with external jobid 'Submitted batch job 2195053'.
[Wed Feb 28 21:06:43 2024]
Finished job 41.
239 of 391 steps (61%) done
[Wed Feb 28 21:06:43 2024]
Finished job 262.
240 of 391 steps (61%) done
[Wed Feb 28 21:06:43 2024]
Finished job 15.
241 of 391 steps (62%) done
[Wed Feb 28 21:06:43 2024]
Finished job 345.
242 of 391 steps (62%) done
[Wed Feb 28 21:06:43 2024]
Finished job 201.
243 of 391 steps (62%) done
[Wed Feb 28 21:06:43 2024]
Finished job 118.
244 of 391 steps (62%) done
[Wed Feb 28 21:06:43 2024]
Finished job 285.
245 of 391 steps (63%) done
Select jobs to execute...

[Wed Feb 28 21:06:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf
    jobid: 166
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01H10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 166 with external jobid 'Submitted batch job 2195054'.

[Wed Feb 28 21:06:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf
    jobid: 286
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01E7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 286 with external jobid 'Submitted batch job 2195055'.

[Wed Feb 28 21:06:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf
    jobid: 316
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 316 with external jobid 'Submitted batch job 2195056'.

[Wed Feb 28 21:06:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf
    jobid: 269
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 269 with external jobid 'Submitted batch job 2195057'.

[Wed Feb 28 21:06:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf
    jobid: 202
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 202 with external jobid 'Submitted batch job 2195058'.

[Wed Feb 28 21:06:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf
    jobid: 382
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1L8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 382 with external jobid 'Submitted batch job 2195059'.

[Wed Feb 28 21:06:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf
    jobid: 59
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1D7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 59 with external jobid 'Submitted batch job 2195060'.
[Wed Feb 28 21:06:49 2024]
Finished job 324.
246 of 391 steps (63%) done
[Wed Feb 28 21:06:49 2024]
Finished job 384.
247 of 391 steps (63%) done
[Wed Feb 28 21:06:49 2024]
Finished job 221.
248 of 391 steps (63%) done
[Wed Feb 28 21:06:49 2024]
Finished job 22.
249 of 391 steps (64%) done
[Wed Feb 28 21:06:49 2024]
Finished job 142.
250 of 391 steps (64%) done
Select jobs to execute...

[Wed Feb 28 21:06:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf
    jobid: 106
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1G13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 106 with external jobid 'Submitted batch job 2195061'.

[Wed Feb 28 21:06:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf
    jobid: 282
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02L7_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 282 with external jobid 'Submitted batch job 2195062'.

[Wed Feb 28 21:06:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf
    jobid: 42
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1G20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 42 with external jobid 'Submitted batch job 2195063'.

[Wed Feb 28 21:06:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf
    jobid: 102
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02J6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 102 with external jobid 'Submitted batch job 2195064'.

[Wed Feb 28 21:06:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf
    jobid: 162
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 162 with external jobid 'Submitted batch job 2195065'.
Select jobs to execute...
[Wed Feb 28 21:06:55 2024]
Finished job 281.
251 of 391 steps (64%) done

[Wed Feb 28 21:06:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf
    jobid: 309
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02J8_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 309 with external jobid 'Submitted batch job 2195066'.
[Wed Feb 28 21:06:55 2024]
Finished job 54.
252 of 391 steps (64%) done
[Wed Feb 28 21:06:55 2024]
Finished job 174.
253 of 391 steps (65%) done
[Wed Feb 28 21:06:55 2024]
Finished job 24.
254 of 391 steps (65%) done
[Wed Feb 28 21:06:55 2024]
Finished job 144.
255 of 391 steps (65%) done
Select jobs to execute...

[Wed Feb 28 21:06:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf
    jobid: 239
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J13_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 239 with external jobid 'Submitted batch job 2195067'.

[Wed Feb 28 21:06:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf
    jobid: 175
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01F20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 175 with external jobid 'Submitted batch job 2195068'.

[Wed Feb 28 21:06:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf
    jobid: 265
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 265 with external jobid 'Submitted batch job 2195069'.

[Wed Feb 28 21:06:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf
    jobid: 355
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3L14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 355 with external jobid 'Submitted batch job 2195070'.
[Wed Feb 28 21:06:59 2024]
Finished job 264.
256 of 391 steps (65%) done
[Wed Feb 28 21:06:59 2024]
Finished job 354.
257 of 391 steps (66%) done
[Wed Feb 28 21:06:59 2024]
Finished job 84.
258 of 391 steps (66%) done
[Wed Feb 28 21:06:59 2024]
Finished job 204.
259 of 391 steps (66%) done
Select jobs to execute...

[Wed Feb 28 21:06:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf
    jobid: 325
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 325 with external jobid 'Submitted batch job 2195071'.

[Wed Feb 28 21:07:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf
    jobid: 359
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02D20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 359 with external jobid 'Submitted batch job 2195072'.

[Wed Feb 28 21:07:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf
    jobid: 85
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02G15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 85 with external jobid 'Submitted batch job 2195073'.

[Wed Feb 28 21:07:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf
    jobid: 205
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3C17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 205 with external jobid 'Submitted batch job 2195074'.
Select jobs to execute...
[Wed Feb 28 21:07:34 2024]
Finished job 374.
260 of 391 steps (66%) done

[Wed Feb 28 21:07:34 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf
    jobid: 75
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 75 with external jobid 'Submitted batch job 2195075'.
[Wed Feb 28 21:07:35 2024]
Finished job 166.
261 of 391 steps (67%) done
[Wed Feb 28 21:07:35 2024]
Finished job 304.
262 of 391 steps (67%) done
[Wed Feb 28 21:07:35 2024]
Finished job 320.
263 of 391 steps (67%) done
[Wed Feb 28 21:07:35 2024]
Finished job 260.
264 of 391 steps (68%) done
[Wed Feb 28 21:07:35 2024]
Finished job 80.
265 of 391 steps (68%) done
[Wed Feb 28 21:07:35 2024]
Finished job 200.
266 of 391 steps (68%) done
Select jobs to execute...

[Wed Feb 28 21:07:35 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf
    jobid: 305
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02I19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 305 with external jobid 'Submitted batch job 2195076'.

[Wed Feb 28 21:07:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf
    jobid: 256
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01L15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 256 with external jobid 'Submitted batch job 2195077'.

[Wed Feb 28 21:07:36 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf
    jobid: 222
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02D10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 222 with external jobid 'Submitted batch job 2195078'.

[Wed Feb 28 21:07:37 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf
    jobid: 218
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3H13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 218 with external jobid 'Submitted batch job 2195079'.

[Wed Feb 28 21:07:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf
    jobid: 55
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H22_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 55 with external jobid 'Submitted batch job 2195080'.

[Wed Feb 28 21:07:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf
    jobid: 25
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01J9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 25 with external jobid 'Submitted batch job 2195081'.
[Wed Feb 28 21:07:40 2024]
Finished job 93.
267 of 391 steps (68%) done
[Wed Feb 28 21:07:40 2024]
Finished job 153.
268 of 391 steps (69%) done
[Wed Feb 28 21:07:40 2024]
Finished job 273.
269 of 391 steps (69%) done
[Wed Feb 28 21:07:40 2024]
Finished job 243.
270 of 391 steps (69%) done
[Wed Feb 28 21:07:40 2024]
Finished job 322.
271 of 391 steps (69%) done
[Wed Feb 28 21:07:40 2024]
Finished job 33.
272 of 391 steps (70%) done
[Wed Feb 28 21:07:40 2024]
Finished job 213.
273 of 391 steps (70%) done
[Wed Feb 28 21:07:40 2024]
Finished job 286.
274 of 391 steps (70%) done
[Wed Feb 28 21:07:40 2024]
Finished job 316.
275 of 391 steps (70%) done
[Wed Feb 28 21:07:40 2024]
Finished job 269.
276 of 391 steps (71%) done
[Wed Feb 28 21:07:40 2024]
Finished job 202.
277 of 391 steps (71%) done
[Wed Feb 28 21:07:40 2024]
Finished job 382.
278 of 391 steps (71%) done
Select jobs to execute...

[Wed Feb 28 21:07:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf
    jobid: 245
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 245 with external jobid 'Submitted batch job 2195082'.

[Wed Feb 28 21:07:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf
    jobid: 136
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1K16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 136 with external jobid 'Submitted batch job 2195083'.

[Wed Feb 28 21:07:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf
    jobid: 196
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01D8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 196 with external jobid 'Submitted batch job 2195084'.

[Wed Feb 28 21:07:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf
    jobid: 12
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 12 with external jobid 'Submitted batch job 2195085'.

[Wed Feb 28 21:07:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf
    jobid: 192
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02H17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 192 with external jobid 'Submitted batch job 2195086'.

[Wed Feb 28 21:07:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf
    jobid: 252
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1H5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 252 with external jobid 'Submitted batch job 2195087'.

[Wed Feb 28 21:07:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf
    jobid: 312
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3J13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 312 with external jobid 'Submitted batch job 2195088'.

[Wed Feb 28 21:07:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf
    jobid: 372
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E17_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 372 with external jobid 'Submitted batch job 2195089'.

[Wed Feb 28 21:07:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf
    jobid: 98
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01D6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 98 with external jobid 'Submitted batch job 2195090'.

[Wed Feb 28 21:07:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf
    jobid: 8
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1E19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 8 with external jobid 'Submitted batch job 2195091'.

[Wed Feb 28 21:07:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf
    jobid: 188
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02J14_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 188 with external jobid 'Submitted batch job 2195092'.

[Wed Feb 28 21:07:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf
    jobid: 119
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 119 with external jobid 'Submitted batch job 2195093'.
[Wed Feb 28 21:07:51 2024]
Finished job 175.
279 of 391 steps (71%) done
[Wed Feb 28 21:07:51 2024]
Finished job 59.
280 of 391 steps (72%) done
[Wed Feb 28 21:07:51 2024]
Finished job 102.
281 of 391 steps (72%) done
[Wed Feb 28 21:07:51 2024]
Finished job 162.
282 of 391 steps (72%) done
[Wed Feb 28 21:07:51 2024]
Finished job 265.
283 of 391 steps (72%) done
[Wed Feb 28 21:07:51 2024]
Finished job 355.
284 of 391 steps (73%) done
[Wed Feb 28 21:07:51 2024]
Finished job 325.
285 of 391 steps (73%) done
[Wed Feb 28 21:07:51 2024]
Finished job 359.
286 of 391 steps (73%) done
[Wed Feb 28 21:07:51 2024]
Finished job 85.
287 of 391 steps (73%) done
[Wed Feb 28 21:07:51 2024]
Finished job 205.
288 of 391 steps (74%) done
Select jobs to execute...

[Wed Feb 28 21:07:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf
    jobid: 230
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1K18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 230 with external jobid 'Submitted batch job 2195094'.

[Wed Feb 28 21:07:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf
    jobid: 290
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 290 with external jobid 'Submitted batch job 2195095'.

[Wed Feb 28 21:07:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf
    jobid: 110
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01N7_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 110 with external jobid 'Submitted batch job 2195096'.

[Wed Feb 28 21:07:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf
    jobid: 185
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01I10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 185 with external jobid 'Submitted batch job 2195097'.

[Wed Feb 28 21:07:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf
    jobid: 46
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1M19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 46 with external jobid 'Submitted batch job 2195098'.

[Wed Feb 28 21:07:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf
    jobid: 248
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02C15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 248 with external jobid 'Submitted batch job 2195099'.

[Wed Feb 28 21:07:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf
    jobid: 308
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3D11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 308 with external jobid 'Submitted batch job 2195100'.

[Wed Feb 28 21:07:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf
    jobid: 368
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3E17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 368 with external jobid 'Submitted batch job 2195101'.

[Wed Feb 28 21:07:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf
    jobid: 63
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3L4_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 63 with external jobid 'Submitted batch job 2195102'.

[Wed Feb 28 21:07:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf
    jobid: 333
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 333 with external jobid 'Submitted batch job 2195103'.
[Wed Feb 28 21:08:00 2024]
Finished job 309.
289 of 391 steps (74%) done
[Wed Feb 28 21:08:00 2024]
Finished job 239.
290 of 391 steps (74%) done
[Wed Feb 28 21:08:00 2024]
Finished job 106.
291 of 391 steps (74%) done
[Wed Feb 28 21:08:00 2024]
Finished job 282.
292 of 391 steps (75%) done
[Wed Feb 28 21:08:00 2024]
Finished job 42.
293 of 391 steps (75%) done
Select jobs to execute...

[Wed Feb 28 21:08:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf
    jobid: 164
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01N9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 164 with external jobid 'Submitted batch job 2195104'.

[Wed Feb 28 21:08:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf
    jobid: 165
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1G11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 165 with external jobid 'Submitted batch job 2195105'.

[Wed Feb 28 21:08:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf
    jobid: 135
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H12_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 135 with external jobid 'Submitted batch job 2195106'.

[Wed Feb 28 21:08:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf
    jobid: 375
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02F13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 375 with external jobid 'Submitted batch job 2195107'.

[Wed Feb 28 21:08:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf
    jobid: 104
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1G20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 104 with external jobid 'Submitted batch job 2195108'.
Select jobs to execute...
[Wed Feb 28 21:08:38 2024]
Finished job 372.
294 of 391 steps (75%) done

[Wed Feb 28 21:08:38 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf
    jobid: 34
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1F20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 34 with external jobid 'Submitted batch job 2195109'.
[Wed Feb 28 21:08:39 2024]
Finished job 98.
295 of 391 steps (75%) done
[Wed Feb 28 21:08:39 2024]
Finished job 75.
296 of 391 steps (76%) done
[Wed Feb 28 21:08:39 2024]
Finished job 305.
297 of 391 steps (76%) done
[Wed Feb 28 21:08:39 2024]
Finished job 256.
298 of 391 steps (76%) done
[Wed Feb 28 21:08:39 2024]
Finished job 222.
299 of 391 steps (76%) done
[Wed Feb 28 21:08:39 2024]
Finished job 218.
300 of 391 steps (77%) done
Select jobs to execute...

[Wed Feb 28 21:08:39 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf
    jobid: 74
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 74 with external jobid 'Submitted batch job 2195110'.

[Wed Feb 28 21:08:40 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf
    jobid: 83
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01J18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 83 with external jobid 'Submitted batch job 2195111'.

[Wed Feb 28 21:08:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf
    jobid: 127
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02G16_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 127 with external jobid 'Submitted batch job 2195112'.

[Wed Feb 28 21:08:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf
    jobid: 108
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01H9_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 108 with external jobid 'Submitted batch job 2195113'.

[Wed Feb 28 21:08:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf
    jobid: 370
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1E20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 370 with external jobid 'Submitted batch job 2195114'.

[Wed Feb 28 21:08:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf
    jobid: 21
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02G20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 21 with external jobid 'Submitted batch job 2195115'.
[Wed Feb 28 21:08:44 2024]
Finished job 55.
301 of 391 steps (77%) done
[Wed Feb 28 21:08:44 2024]
Finished job 25.
302 of 391 steps (77%) done
[Wed Feb 28 21:08:44 2024]
Finished job 245.
303 of 391 steps (77%) done
[Wed Feb 28 21:08:44 2024]
Finished job 136.
304 of 391 steps (78%) done
[Wed Feb 28 21:08:44 2024]
Finished job 196.
305 of 391 steps (78%) done
[Wed Feb 28 21:08:44 2024]
Finished job 12.
306 of 391 steps (78%) done
[Wed Feb 28 21:08:44 2024]
Finished job 192.
307 of 391 steps (79%) done
[Wed Feb 28 21:08:44 2024]
Finished job 252.
308 of 391 steps (79%) done
[Wed Feb 28 21:08:44 2024]
Finished job 312.
309 of 391 steps (79%) done
[Wed Feb 28 21:08:44 2024]
Finished job 8.
310 of 391 steps (79%) done
[Wed Feb 28 21:08:44 2024]
Finished job 188.
311 of 391 steps (80%) done
[Wed Feb 28 21:08:44 2024]
Finished job 119.
312 of 391 steps (80%) done
Select jobs to execute...

[Wed Feb 28 21:08:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf
    jobid: 31
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01C8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 31 with external jobid 'Submitted batch job 2195116'.

[Wed Feb 28 21:08:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf
    jobid: 211
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1I3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 211 with external jobid 'Submitted batch job 2195117'.

[Wed Feb 28 21:08:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf
    jobid: 357
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02C15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 357 with external jobid 'Submitted batch job 2195118'.

[Wed Feb 28 21:08:47 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf
    jobid: 244
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3H16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 244 with external jobid 'Submitted batch job 2195119'.

[Wed Feb 28 21:08:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf
    jobid: 203
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02I19_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 203 with external jobid 'Submitted batch job 2195120'.

[Wed Feb 28 21:08:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf
    jobid: 94
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1I3_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 94 with external jobid 'Submitted batch job 2195121'.

[Wed Feb 28 21:08:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf
    jobid: 45
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1J19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 45 with external jobid 'Submitted batch job 2195122'.

[Wed Feb 28 21:08:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf
    jobid: 105
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA02D6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 105 with external jobid 'Submitted batch job 2195123'.

[Wed Feb 28 21:08:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf
    jobid: 195
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1H18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 195 with external jobid 'Submitted batch job 2195124'.

[Wed Feb 28 21:08:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf
    jobid: 255
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01L8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 255 with external jobid 'Submitted batch job 2195125'.

[Wed Feb 28 21:08:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf
    jobid: 315
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1J3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 315 with external jobid 'Submitted batch job 2195126'.

[Wed Feb 28 21:08:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf
    jobid: 284
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F19_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 284 with external jobid 'Submitted batch job 2195127'.
[Wed Feb 28 21:08:55 2024]
Finished job 63.
313 of 391 steps (80%) done
[Wed Feb 28 21:08:55 2024]
Finished job 333.
314 of 391 steps (80%) done
[Wed Feb 28 21:08:55 2024]
Finished job 164.
315 of 391 steps (81%) done
[Wed Feb 28 21:08:55 2024]
Finished job 230.
316 of 391 steps (81%) done
[Wed Feb 28 21:08:55 2024]
Finished job 290.
317 of 391 steps (81%) done
[Wed Feb 28 21:08:55 2024]
Finished job 110.
318 of 391 steps (81%) done
[Wed Feb 28 21:08:55 2024]
Finished job 185.
319 of 391 steps (82%) done
[Wed Feb 28 21:08:55 2024]
Finished job 46.
320 of 391 steps (82%) done
[Wed Feb 28 21:08:55 2024]
Finished job 248.
321 of 391 steps (82%) done
[Wed Feb 28 21:08:55 2024]
Finished job 308.
322 of 391 steps (82%) done
[Wed Feb 28 21:08:55 2024]
Finished job 368.
323 of 391 steps (83%) done
[Wed Feb 28 21:08:55 2024]
Finished job 165.
324 of 391 steps (83%) done
[Wed Feb 28 21:08:55 2024]
Finished job 135.
325 of 391 steps (83%) done
[Wed Feb 28 21:08:55 2024]
Finished job 375.
326 of 391 steps (83%) done
[Wed Feb 28 21:08:55 2024]
Finished job 104.
327 of 391 steps (84%) done
Select jobs to execute...

[Wed Feb 28 21:08:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf
    jobid: 350
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1H8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 350 with external jobid 'Submitted batch job 2195128'.

[Wed Feb 28 21:08:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf
    jobid: 147
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02D21_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 147 with external jobid 'Submitted batch job 2195129'.

[Wed Feb 28 21:08:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf
    jobid: 64
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1H3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 64 with external jobid 'Submitted batch job 2195130'.

[Wed Feb 28 21:08:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf
    jobid: 68
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02N15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 68 with external jobid 'Submitted batch job 2195131'.

[Wed Feb 28 21:08:59 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf
    jobid: 383
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 383 with external jobid 'Submitted batch job 2195132'.

[Wed Feb 28 21:09:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf
    jobid: 259
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1M10_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 259 with external jobid 'Submitted batch job 2195133'.

[Wed Feb 28 21:09:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf
    jobid: 214
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOctRedA3I8_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 214 with external jobid 'Submitted batch job 2195134'.

[Wed Feb 28 21:09:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf
    jobid: 319
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2K17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 319 with external jobid 'Submitted batch job 2195135'.

[Wed Feb 28 21:09:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf
    jobid: 251
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMusRedA1M5_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 251 with external jobid 'Submitted batch job 2195136'.

[Wed Feb 28 21:09:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf
    jobid: 311
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02E21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 311 with external jobid 'Submitted batch job 2195137'.

[Wed Feb 28 21:09:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf
    jobid: 101
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 101 with external jobid 'Submitted batch job 2195138'.

[Wed Feb 28 21:09:05 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf
    jobid: 341
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02J17_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 341 with external jobid 'Submitted batch job 2195139'.

[Wed Feb 28 21:09:06 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf
    jobid: 161
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 161 with external jobid 'Submitted batch job 2195140'.

[Wed Feb 28 21:09:07 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf
    jobid: 344
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 344 with external jobid 'Submitted batch job 2195141'.

[Wed Feb 28 21:09:08 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf
    jobid: 250
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 250 with external jobid 'Submitted batch job 2195142'.
Select jobs to execute...
[Wed Feb 28 21:09:41 2024]
Finished job 105.
328 of 391 steps (84%) done

[Wed Feb 28 21:09:41 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf
    jobid: 189
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01F6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 189 with external jobid 'Submitted batch job 2195143'.
[Wed Feb 28 21:09:42 2024]
Finished job 195.
329 of 391 steps (84%) done
[Wed Feb 28 21:09:42 2024]
Finished job 34.
330 of 391 steps (84%) done
[Wed Feb 28 21:09:42 2024]
Finished job 74.
331 of 391 steps (85%) done
[Wed Feb 28 21:09:42 2024]
Finished job 83.
332 of 391 steps (85%) done
[Wed Feb 28 21:09:42 2024]
Finished job 127.
333 of 391 steps (85%) done
[Wed Feb 28 21:09:42 2024]
Finished job 108.
334 of 391 steps (85%) done
Select jobs to execute...

[Wed Feb 28 21:09:42 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf
    jobid: 172
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H20_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 172 with external jobid 'Submitted batch job 2195144'.

[Wed Feb 28 21:09:43 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf
    jobid: 247
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H11_3_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 247 with external jobid 'Submitted batch job 2195145'.

[Wed Feb 28 21:09:44 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf
    jobid: 7
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 7 with external jobid 'Submitted batch job 2195146'.

[Wed Feb 28 21:09:45 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf
    jobid: 307
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02M16_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 307 with external jobid 'Submitted batch job 2195147'.

[Wed Feb 28 21:09:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf
    jobid: 187
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02D21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 187 with external jobid 'Submitted batch job 2195148'.

[Wed Feb 28 21:09:46 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf
    jobid: 231
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1F19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 231 with external jobid 'Submitted batch job 2195149'.
[Wed Feb 28 21:09:47 2024]
Finished job 21.
335 of 391 steps (86%) done
[Wed Feb 28 21:09:47 2024]
Finished job 31.
336 of 391 steps (86%) done
[Wed Feb 28 21:09:47 2024]
Finished job 211.
337 of 391 steps (86%) done
[Wed Feb 28 21:09:47 2024]
Finished job 357.
338 of 391 steps (86%) done
[Wed Feb 28 21:09:47 2024]
Finished job 244.
339 of 391 steps (87%) done
[Wed Feb 28 21:09:47 2024]
Finished job 203.
340 of 391 steps (87%) done
[Wed Feb 28 21:09:47 2024]
Finished job 94.
341 of 391 steps (87%) done
[Wed Feb 28 21:09:47 2024]
Finished job 45.
342 of 391 steps (87%) done
[Wed Feb 28 21:09:47 2024]
Finished job 255.
343 of 391 steps (88%) done
[Wed Feb 28 21:09:47 2024]
Finished job 315.
344 of 391 steps (88%) done
[Wed Feb 28 21:09:47 2024]
Finished job 284.
345 of 391 steps (88%) done
[Wed Feb 28 21:09:48 2024]
Finished job 344.
346 of 391 steps (88%) done
[Wed Feb 28 21:09:48 2024]
Finished job 250.
347 of 391 steps (89%) done
Select jobs to execute...

[Wed Feb 28 21:09:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf
    jobid: 9
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01F19_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 9 with external jobid 'Submitted batch job 2195150'.

[Wed Feb 28 21:09:48 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf
    jobid: 321
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01H21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 321 with external jobid 'Submitted batch job 2195151'.

[Wed Feb 28 21:09:49 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf
    jobid: 215
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1F11_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 215 with external jobid 'Submitted batch job 2195152'.

[Wed Feb 28 21:09:50 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf
    jobid: 170
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02K17_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 170 with external jobid 'Submitted batch job 2195153'.

[Wed Feb 28 21:09:51 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf
    jobid: 50
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1H13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 50 with external jobid 'Submitted batch job 2195154'.

[Wed Feb 28 21:09:52 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf
    jobid: 128
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA02M16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 128 with external jobid 'Submitted batch job 2195155'.

[Wed Feb 28 21:09:53 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf
    jobid: 40
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA1L21_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 40 with external jobid 'Submitted batch job 2195156'.

[Wed Feb 28 21:09:54 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf
    jobid: 217
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01J6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 217 with external jobid 'Submitted batch job 2195157'.

[Wed Feb 28 21:09:55 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf
    jobid: 367
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01L12_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 367 with external jobid 'Submitted batch job 2195158'.

[Wed Feb 28 21:09:56 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf
    jobid: 82
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01I16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 82 with external jobid 'Submitted batch job 2195159'.

[Wed Feb 28 21:09:57 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf
    jobid: 67
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02F13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 67 with external jobid 'Submitted batch job 2195160'.

[Wed Feb 28 21:09:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf
    jobid: 141
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1D13_2_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 141 with external jobid 'Submitted batch job 2195161'.

[Wed Feb 28 21:09:58 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf
    jobid: 216
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3J13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 216 with external jobid 'Submitted batch job 2195162'.
[Wed Feb 28 21:09:59 2024]
Finished job 251.
348 of 391 steps (89%) done
[Wed Feb 28 21:09:59 2024]
Finished job 311.
349 of 391 steps (89%) done
[Wed Feb 28 21:09:59 2024]
Finished job 370.
350 of 391 steps (90%) done
[Wed Feb 28 21:09:59 2024]
Finished job 350.
351 of 391 steps (90%) done
[Wed Feb 28 21:09:59 2024]
Finished job 147.
352 of 391 steps (90%) done
[Wed Feb 28 21:09:59 2024]
Finished job 64.
353 of 391 steps (90%) done
[Wed Feb 28 21:09:59 2024]
Finished job 68.
354 of 391 steps (91%) done
[Wed Feb 28 21:09:59 2024]
Finished job 383.
355 of 391 steps (91%) done
[Wed Feb 28 21:09:59 2024]
Finished job 259.
356 of 391 steps (91%) done
[Wed Feb 28 21:09:59 2024]
Finished job 214.
357 of 391 steps (91%) done
[Wed Feb 28 21:09:59 2024]
Finished job 319.
358 of 391 steps (92%) done
[Wed Feb 28 21:10:00 2024]
Finished job 101.
359 of 391 steps (92%) done
[Wed Feb 28 21:10:00 2024]
Finished job 341.
360 of 391 steps (92%) done
[Wed Feb 28 21:10:00 2024]
Finished job 161.
361 of 391 steps (92%) done
Select jobs to execute...

[Wed Feb 28 21:10:00 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf
    jobid: 140
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01C16_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 140 with external jobid 'Submitted batch job 2195163'.

[Wed Feb 28 21:10:00 2024]
rule Summarize_Reassmbly:
    input: /fs/cbcb-lab/mpop/hotspring_metagenome/Synechococcus_paper_analysis/Hotsprings_Variant_Structure/Chloroflexus_MS_G
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Reassembly.Summary.pkl
    jobid: 5
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Orphaned_Reads.Summary.pkl; Software environment definition has changed since last execution
    wildcards: rg=Chloroflexus_MS_G
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 5 with external jobid 'Submitted batch job 2195164'.

[Wed Feb 28 21:10:01 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf
    jobid: 81
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMRedA02H22_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 81 with external jobid 'Submitted batch job 2195165'.

[Wed Feb 28 21:10:02 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf
    jobid: 171
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicMuRedA1I17_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 171 with external jobid 'Submitted batch job 2195166'.

[Wed Feb 28 21:10:03 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf
    jobid: 351
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicORedA01N18_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 351 with external jobid 'Submitted batch job 2195167'.

[Wed Feb 28 21:10:04 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf
    jobid: 66
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA3F15_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 66 with external jobid 'Submitted batch job 2195168'.

[Wed Feb 28 21:10:05 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf
    jobid: 291
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA01G6_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 291 with external jobid 'Submitted batch job 2195169'.

[Wed Feb 28 21:10:06 2024]
rule Align_SAGs_To_Synechococcus_Novel_Contigs:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Novel_Contigs.fna
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf
    jobid: 51
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf; Software environment definition has changed since last execution
    wildcards: SAG=UncmicOcRedA2H13_FD
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 51 with external jobid 'Submitted batch job 2195170'.
[Wed Feb 28 21:10:30 2024]
Finished job 367.
362 of 391 steps (93%) done
[Wed Feb 28 21:10:30 2024]
Finished job 189.
363 of 391 steps (93%) done
[Wed Feb 28 21:10:30 2024]
Finished job 172.
364 of 391 steps (93%) done
[Wed Feb 28 21:10:30 2024]
Finished job 247.
365 of 391 steps (93%) done
[Wed Feb 28 21:10:31 2024]
Finished job 321.
366 of 391 steps (94%) done
[Wed Feb 28 21:10:31 2024]
Finished job 82.
367 of 391 steps (94%) done
[Wed Feb 28 21:10:42 2024]
Finished job 51.
368 of 391 steps (94%) done
[Wed Feb 28 21:10:42 2024]
Finished job 217.
369 of 391 steps (94%) done
[Wed Feb 28 21:10:42 2024]
Finished job 7.
370 of 391 steps (95%) done
[Wed Feb 28 21:10:42 2024]
Finished job 307.
371 of 391 steps (95%) done
[Wed Feb 28 21:10:42 2024]
Finished job 187.
372 of 391 steps (95%) done
[Wed Feb 28 21:10:42 2024]
Finished job 231.
373 of 391 steps (95%) done
[Wed Feb 28 21:10:42 2024]
Finished job 9.
374 of 391 steps (96%) done
[Wed Feb 28 21:10:42 2024]
Finished job 215.
375 of 391 steps (96%) done
[Wed Feb 28 21:10:42 2024]
Finished job 170.
376 of 391 steps (96%) done
[Wed Feb 28 21:10:42 2024]
Finished job 50.
377 of 391 steps (96%) done
[Wed Feb 28 21:10:43 2024]
Finished job 128.
378 of 391 steps (97%) done
[Wed Feb 28 21:10:43 2024]
Finished job 40.
379 of 391 steps (97%) done
[Wed Feb 28 21:10:43 2024]
Finished job 67.
380 of 391 steps (97%) done
[Wed Feb 28 21:10:43 2024]
Finished job 141.
381 of 391 steps (97%) done
[Wed Feb 28 21:11:14 2024]
Finished job 216.
382 of 391 steps (98%) done
[Wed Feb 28 21:11:14 2024]
Finished job 140.
383 of 391 steps (98%) done
[Wed Feb 28 21:11:14 2024]
Finished job 81.
384 of 391 steps (98%) done
[Wed Feb 28 21:11:14 2024]
Finished job 171.
385 of 391 steps (98%) done
[Wed Feb 28 21:11:14 2024]
Finished job 351.
386 of 391 steps (99%) done
[Wed Feb 28 21:11:14 2024]
Finished job 66.
387 of 391 steps (99%) done
[Wed Feb 28 21:11:14 2024]
Finished job 291.
388 of 391 steps (99%) done
Select jobs to execute...

[Wed Feb 28 21:11:14 2024]
rule Summarize_SAG_Alignments:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf
    output: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG.Summary.pkl
    jobid: 385
    reason: Missing output files: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG.Summary.pkl; Input files updated by another job: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=<TBD>, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

Submitted job 385 with external jobid 'Submitted batch job 2195173'.
[Wed Feb 28 21:13:14 2024]
Finished job 5.
389 of 391 steps (99%) done
[Wed Feb 28 21:16:05 2024]
Finished job 385.
390 of 391 steps (99.7%) done
Select jobs to execute...

[Wed Feb 28 21:16:05 2024]
localrule all:
    input: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSA/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSB/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Respresentative_Abundances.Summary.pkl
    jobid: 0
    reason: Input files updated by another job: /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3K21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSB/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J8_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01E14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J13_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L9_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1L16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2K17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F19_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2F22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2M20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3K3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1K14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1K19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1D12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02E13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02L7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3F7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H22_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N12_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K12_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02G10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3J13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02L14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I11_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02J6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01J9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K22_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01K5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1N3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/OSA/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02H16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01G6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3J3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02D6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02D21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1F3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloracidobacterium_thermophilum_B/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02K10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1I9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Orphaned_Reads.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02L4_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Chloroflexus_MS_G/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1L10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02G16_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02G9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G14_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3N22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2H6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2D11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01F19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA1C8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02K6_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02I15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1I3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02F21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1I16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E18_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01F9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1H3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3C17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Aerophilum/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Roseiflexus/Summary/Respresentative_Abundances.Summary.pkl, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K17_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01L8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02K11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3L13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3L3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02J16_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02F21_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01H9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA1M19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1G20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3F13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02L12_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2D9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1M3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1L7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3H18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1E11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1C19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1E3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02D20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02E13_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01N9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1G3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1J22_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H21_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02J15_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1C3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA01E9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3G19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3I19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA3E17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA02M17_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02E6_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H14_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D5_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1D19_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA1N18_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA02D7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicORedA01H11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02M11_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA2K7_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOcRedA2H13_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02I10_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02H20_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1D3_2_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicOctRedA3D3_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMuRedA02C9_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMusRedA1J8_FD.paf, /fs/cbcb-scratch/hsmurali/Hotsprings_Variant_Structure_Data_Analysis/Synechococcus/Summary/SAG_Alignments/UncmicMRedA02N18_FD.paf
    resources: mem_mb=128000, mem_mib=122071, disk_mb=1000, disk_mib=954, tmpdir=/tmp, partition=cbcb, account=cbcb, time=24:00:00, qos=huge-long

[Wed Feb 28 21:16:05 2024]
Finished job 0.
391 of 391 steps (100%) done
Complete log: .snakemake/log/2024-02-28T205806.263538.snakemake.log
