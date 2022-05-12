import numpy as np
import pandas as pd
from datetime import datetime

class Read_Info:
	def __init__(self):
		self.OSA_Mate_1_Orientation = ''
		self.OSA_Mate_2_Orientation = ''
		self.OSB_Mate_1_Orientation = ''
		self.OSB_Mate_2_Orientation = ''
		
		self.OSA_Start_1 = -1
		self.OSA_End_1 = -1
		self.OSA_Start_2 = -1
		self.OSA_End_2 = -1

		self.OSB_Start_1 = -1
		self.OSB_End_1 = -1
		self.OSB_Start_2 = -1
		self.OSB_End_2 = -1
		
		self.Frag_OSA = -1
		self.Frag_OSB = -1
		self.Is_Frag_Diff = -1

		self.Is_Orphaned_OSA = -1
		self.Is_Orphaned_OSB = -1

		self.Is_Partially_Aligned_1_OSA = -1
		self.Is_Partially_Aligned_2_OSA = -1
		self.Is_Partially_Aligned_1_OSB = -1
		self.Is_Partially_Aligned_2_OSB = -1

		self.Is_Mispaired_OSA = -1
		self.Is_Mispaired_OSB = -1

	def Update_Read_Info(self, genome, start, end, read_id, orientation, partial_alignment_cutoff = 120):
		partial = 0
		if np.abs(end-start+1)<partial_alignment_cutoff:
			partial = 1
		if genome == "OSA":
			if read_id == "1":
				self.OSA_Mate_1_Orientation = orientation
				self.OSA_Start_1 = start
				self.OSA_End_1 = end
				self.Is_Partially_Aligned_1_OSA = partial
			if read_id == "2":
				self.OSA_Mate_2_Orientation = orientation
				self.OSA_Start_2 = start
				self.OSA_End_2 = end
				self.Is_Partially_Aligned_2_OSA = partial
		if genome == "OSB":
			if read_id == "1":
				self.OSB_Mate_1_Orientation = orientation
				self.OSB_Start_1 = start
				self.OSB_End_1 = end
				self.Is_Partially_Aligned_1_OSB = partial
			if read_id == "2":
				self.OSB_Mate_2_Orientation = orientation
				self.OSB_Start_2 = start
				self.OSB_End_2 = end
				self.Is_Partially_Aligned_2_OSB = partial

	def Is_Orphaned(self, genome):
		if genome == "OSA":
			if(self.OSA_Start_1 > 0 and self.OSA_End_1 > 0) and (self.OSA_Start_2 == -1 and self.OSA_End_2 == -1):
				self.Is_Orphaned_OSA = 1
			elif(self.OSA_Start_2 > 0 and self.OSA_End_2 > 0) and (self.OSA_Start_1 == -1 and self.OSA_End_1 == -1):
				self.Is_Orphaned_OSA = 1
			elif(self.OSA_Start_1 > 0 and self.OSA_End_1 > 0) and (self.OSA_Start_2 > 0 and self.OSA_End_2 > 0):
				self.Is_Orphaned_OSA = 0

		if genome == "OSB":
			if(self.OSB_Start_1 > 0 and self.OSB_End_1 > 0) and (self.OSB_Start_2 == -1 and self.OSB_End_2 == -1):
				self.Is_Orphaned_OSB = 1
			elif(self.OSB_Start_2 > 0 and self.OSB_End_2 > 0) and (self.OSB_Start_1 == -1 and self.OSB_End_1 == -1):
				self.Is_Orphaned_OSB = 1
			elif(self.OSB_Start_1 > 0 and self.OSB_End_1 > 0) and (self.OSB_Start_2 > 0 and self.OSB_End_2 > 0):
				self.Is_Orphaned_OSB = 0

	def Is_Misaligned(self, genome):
		if genome == "OSA":
			if self.Is_Orphaned_OSA == 0:
				if (self.OSA_Mate_1_Orientation == '+' and self.OSA_Mate_2_Orientation == '+'):
					self.Is_Mispaired_OSA = 1
				elif (self.OSA_Mate_1_Orientation == '-' and self.OSA_Mate_2_Orientation == '-'):
					self.Is_Mispaired_OSA = 1
				elif (self.OSA_Mate_1_Orientation == '-' and self.OSA_Mate_2_Orientation == '+'):
					self.Is_Mispaired_OSA = 0
				elif (self.OSA_Mate_1_Orientation == '+' and self.OSA_Mate_2_Orientation == '-'):
					self.Is_Mispaired_OSA = 0

		if genome == "OSB":
			if self.Is_Orphaned_OSB == 0:
				if (self.OSB_Mate_1_Orientation == '+' and self.OSB_Mate_2_Orientation == '+'):
					self.Is_Mispaired_OSB = 1
				elif (self.OSB_Mate_1_Orientation == '-' and self.OSB_Mate_2_Orientation == '-'):
					self.Is_Mispaired_OSB = 1
				elif (self.OSB_Mate_1_Orientation == '-' and self.OSB_Mate_2_Orientation == '+'):
					self.Is_Mispaired_OSB = 0
				elif (self.OSB_Mate_1_Orientation == '+' and self.OSB_Mate_2_Orientation == '-'):
					self.Is_Mispaired_OSB = 0

	def Get_Fragment_Lengths(self, genome):
		if genome == "OSA":
			if self.Is_Orphaned_OSA == 0:
				x = max(self.OSA_Start_1, self.OSA_Start_2, self.OSA_End_1, self.OSA_End_2)
				y = min(self.OSA_Start_1, self.OSA_Start_2, self.OSA_End_1, self.OSA_End_2)
				self.Frag_OSA = x-y+1
		if genome == "OSB":
			if self.Is_Orphaned_OSB == 0:
				x = max(self.OSB_Start_1, self.OSB_Start_2, self.OSB_End_1, self.OSB_End_2)
				y = min(self.OSB_Start_1, self.OSB_Start_2, self.OSB_End_1, self.OSB_End_2)
				self.Frag_OSB = x-y+1
		if(self.Frag_OSA >= 0 and self.Frag_OSB >= 0):
			if self.Frag_OSA == self.Frag_OSB:
				self.Is_Frag_Diff = 0
			else:
				self.Is_Frag_Diff = 1

def Populate_Read_Mapping_Objects(filepath, read_dict, genome):
	filebuf = open(filepath)
	for f in filebuf:
		splits = f.replace("\n","").split('\t')
		if len(splits)==1:
			splits = f.replace("\n","").split(' ')
		read = splits[3][:-2]
		read_id = splits[3][-1]
		try:
			read_dict[read].Update_Read_Info(genome, int(splits[1]), int(splits[2]), read_id, splits[5])
			read_dict[read].Is_Orphaned(genome)
			read_dict[read].Is_Misaligned(genome)
			read_dict[read].Get_Fragment_Lengths(genome)
		except KeyError:
			read_dict[read] = Read_Info()
			read_dict[read].Update_Read_Info(genome, int(splits[1]), int(splits[2]), read_id, splits[5])
			read_dict[read].Is_Orphaned(genome)

def Get_Differential_Counts_Stats(counts_dict, osa_len, osb_len, normed = True, alpha = 99.5):
	print(len(counts_dict))
	orphaned_both,orphaned_only_OSA,orphaned_only_OSB = 0,0,0
	mispaired_both, mispaired_only_OSA, mispaired_only_OSB = 0,0,0
	same_frag_size, diff_frag_size = 0,0
	partial_both, partial_only_OSA, partial_only_OSB = 0,0,0
	
	orphaned_osa = {'Only':np.zeros(osa_len), 'Both':np.zeros(osa_len)}
	orphaned_osb = {'Only':np.zeros(osb_len), 'Both':np.zeros(osb_len)}
	mispaired_osa = {'Only':np.zeros(osa_len), 'Both':np.zeros(osa_len)}
	mispaired_osb = {'Only':np.zeros(osb_len), 'Both':np.zeros(osb_len)}
	partial_osa = {'Only':np.zeros(osa_len), 'Both':np.zeros(osa_len)}
	partial_osb = {'Only':np.zeros(osb_len), 'Both':np.zeros(osb_len)}
	osa_frag = {'Same':np.zeros(osa_len), 'Diff':np.zeros(osa_len), 'Diff_Dist':[], 'Same_Dist':[]}
	osb_frag = {'Same':np.zeros(osb_len), 'Diff':np.zeros(osb_len), 'Diff_Dist':[]}
	osa_coverage, osb_coverage = np.zeros(osa_len), np.zeros(osb_len)

	for key in counts_dict:
		osa_coverage[counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
		osa_coverage[counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
		osb_coverage[counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
		osb_coverage[counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1

		try:
			if counts_dict[key].Is_Orphaned_OSA == 1 and counts_dict[key].Is_Orphaned_OSB==1:
				orphaned_both += 1
				orphaned_osa['Both'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				orphaned_osb['Both'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				orphaned_osa['Both'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
				orphaned_osb['Both'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
			elif counts_dict[key].Is_Orphaned_OSA == 1 and counts_dict[key].Is_Orphaned_OSB==0:
				orphaned_only_OSA += 1
				orphaned_osa['Only'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				orphaned_osa['Only'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
			elif counts_dict[key].Is_Orphaned_OSA == 0 and counts_dict[key].Is_Orphaned_OSB==1:
				orphaned_only_OSB += 1
				orphaned_osb['Only'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				orphaned_osb['Only'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
		except KeyError:
			pass
		
		try:
			if counts_dict[key].Is_Mispaired_OSA == 1 and counts_dict[key].Is_Mispaired_OSB == 1:
				mispaired_both += 1
				mispaired_osa['Both'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				mispaired_osa['Both'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
				mispaired_osb['Both'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				mispaired_osb['Both'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
			elif counts_dict[key].Is_Mispaired_OSA == 0 and counts_dict[key].Is_Mispaired_OSB == 1:
				mispaired_only_OSB += 1
				mispaired_osb['Only'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				mispaired_osb['Only'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
			elif counts_dict[key].Is_Mispaired_OSA == 1 and counts_dict[key].Is_Mispaired_OSB == 0:
				mispaired_only_OSA += 1
				mispaired_osa['Only'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				mispaired_osa['Only'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
		except KeyError:
			pass
		
		try:
			if (counts_dict[key].Is_Partially_Aligned_1_OSA == 1 and 
				counts_dict[key].Is_Partially_Aligned_1_OSB == 1):
				partial_both += 1
				partial_osa['Both'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				partial_osb['Both'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
			elif (counts_dict[key].Is_Partially_Aligned_1_OSA == 1 and 
				  counts_dict[key].Is_Partially_Aligned_1_OSB == 0):
				partial_only_OSA += 1
				partial_osa['Only'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
			elif (counts_dict[key].Is_Partially_Aligned_1_OSA == 0 and 
				  counts_dict[key].Is_Partially_Aligned_1_OSB == 1):
				partial_only_OSB += 1
				partial_osb['Only'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
		except KeyError:
			pass
		
		try:
			if (counts_dict[key].Is_Partially_Aligned_2_OSA == 1 and 
				counts_dict[key].Is_Partially_Aligned_2_OSB == 1):
				partial_both += 1
				partial_osa['Both'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
				partial_osb['Both'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_2] += 1
			elif (counts_dict[key].Is_Partially_Aligned_2_OSA == 1 and 
				  counts_dict[key].Is_Partially_Aligned_2_OSB == 0):
				partial_only_OSA += 1
				partial_osa['Only'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
			elif (counts_dict[key].Is_Partially_Aligned_2_OSA == 0 and 
				  counts_dict[key].Is_Partially_Aligned_2_OSB == 1):
				partial_only_OSB += 1
				partial_osb['Only'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
		except KeyError:
			pass
		
		try:
			if counts_dict[key].Is_Frag_Diff == 0: 
				same_frag_size += 1
				osa_frag['Same_Dist'].append(counts_dict[key].Frag_OSA)
				osa_frag['Same'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				osa_frag['Same'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
				osb_frag['Same'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				osb_frag['Same'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
			elif counts_dict[key].Is_Frag_Diff == 1:
				diff_frag_size += 1
				osa_frag['Diff_Dist'].append(counts_dict[key].Frag_OSA)
				osb_frag['Diff_Dist'].append(counts_dict[key].Frag_OSB)
				osa_frag['Diff'][counts_dict[key].OSA_Start_1:counts_dict[key].OSA_End_1] += 1
				osa_frag['Diff'][counts_dict[key].OSA_Start_2:counts_dict[key].OSA_End_2] += 1
				osb_frag['Diff'][counts_dict[key].OSB_Start_1:counts_dict[key].OSB_End_1] += 1
				osb_frag['Diff'][counts_dict[key].OSB_Start_2:counts_dict[key].OSB_End_2] += 1
		except KeyError:
			pass
	
	osa_avg = np.mean(osa_coverage[osa_coverage < np.percentile(osa_coverage, alpha)])
	osb_avg = np.mean(osb_coverage[osb_coverage < np.percentile(osb_coverage, alpha)])
	
	d_summary = {'Orphaned_Both':orphaned_both, 'Orphaned_Only_OSA':orphaned_only_OSA, 
				 'Orphaned_Only_OSB':orphaned_only_OSB, 'Mispaired_Both':mispaired_both,
				 'Mispaired_Only_OSA':mispaired_only_OSA, 'Mispaired_Only_OSB':mispaired_only_OSB, 
				 'Same_Fragment_Size':same_frag_size, 'Different_Fragment_Size':diff_frag_size,
				 'Partially_Aligned_Both':partial_both, 'Partially_Aligned_Only_OSA':partial_only_OSA,
				 'Partially_Aligned_Only_OSB':partial_only_OSB, 'Average_Coverage_OSA':osa_avg, 
				 'Average_Coverage_OSB':osb_avg}
	
	d = {}
	if (normed):
		orphaned_osa['Both']/=osa_avg
		orphaned_osa['Only']/=osa_avg
		orphaned_osb['Both']/=osb_avg
		orphaned_osb['Only']/=osb_avg
		mispaired_osa['Both']/=osa_avg
		mispaired_osa['Only']/=osa_avg
		mispaired_osb['Both']/=osb_avg
		mispaired_osb['Only']/=osb_avg
		partial_osa['Both']/=osa_avg
		partial_osa['Only']/=osa_avg
		partial_osb['Both']/=osb_avg
		partial_osb['Only']/=osb_avg
		osa_frag['Same']/=osa_avg
		osa_frag['Diff']/=osa_avg
		osb_frag['Same']/=osb_avg
		osb_frag['Diff']/=osb_avg

	d['Orphaned'] = {'OSA':orphaned_osa,'OSB':orphaned_osb}
	d['Mispaired'] = {'OSA':mispaired_osa,'OSB':mispaired_osb}
	d['Misaligned'] = {'OSA':partial_osa,'OSB':partial_osb}
	d['Fragment'] = {'OSA':osa_frag,'OSB':osb_frag}
	d['Coverage'] = {'OSA':osa_coverage,'OSB':osb_coverage}
	
	print('Orphaned Reads in both\t\t',orphaned_both)
	print('Orphaned Reads in only OSA \t',orphaned_only_OSA)
	print('Orphaned Reads in only OSB \t',orphaned_only_OSB)
	
	print('Mispaired reads in both\t\t', mispaired_both)
	print('Mispaired reads in only OSA \t', mispaired_only_OSA)
	print('Mispaired reads in only OSB \t', mispaired_only_OSB)
			  
	print('Same Fragment Size\t\t', same_frag_size)
	print('Different Fragment Size\t\t', diff_frag_size)
	
	print('Partially Aligned in Both \t', partial_both)
	print('Partially Aligned in Only OSA \t', partial_only_OSA)
	print('Partially Aligned in Only OSB \t', partial_only_OSB)
	
	return d, d_summary

def Calculate_Differential_Coverages(SampleID):
	osa_len, osb_len = 2932768, 3046684
	filepath='/Users/harihara/Research-Activities/Data/Hot-Spring/OS_Sorted/'
	d = dict()
	print(datetime.now())
	Populate_Read_Mapping_Objects(filepath+SampleID+'.OSA.bed', d, 'OSA')
	print('Parsed OSA \t', datetime.now())
	Populate_Read_Mapping_Objects(filepath+SampleID+'.OSB.bed', d, 'OSB')
	print('Parsed OSB \t', datetime.now())
	coverage, summary = Get_Differential_Counts_Stats(d, osa_len, osb_len)
	summary['Sample'] = SampleID
	print('Calculated Differential Coverages ', datetime.now())
	del d
	return coverage, summary
