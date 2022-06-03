import numpy as np
import pandas as pd
import networkx as nx

def Load_PAF(filepath):
	lines = open(filepath).readlines()
	header = ['Query','Qlen','QStart','QEnd','Orientation','Subject','SLen',
			  'SStart','SEnd','Matches','AlignLength','MAPQ']
	op = []
	for l in lines:
		l = l.split('\t')[:12]
		op.append(dict(zip(header, l)))
	df = pd.DataFrame(op)
	df[['Qlen','QStart','QEnd','SLen','SStart',
		'SEnd','Matches','AlignLength','MAPQ']] = df[['Qlen','QStart','QEnd','SLen','SStart',
													  'SEnd','Matches','AlignLength','MAPQ']].astype('int')
	df['PIdent'] = df['AlignLength']/df['Qlen']*100
	df = df.loc[df.groupby(['Query'])['PIdent'].idxmax()]
	return df

def Add_Backbone_Alignment_Information(df_mm2, genome_id, G, quality = 80):
	aligned = df_mm2[df_mm2['PIdent'] >= quality]['Query'].tolist()
	not_aligned = df_mm2[df_mm2['PIdent'] < quality]['Query'].tolist()
	df_mm2_grp = df_mm2[df_mm2['PIdent'] >= quality]
	df_mm2_grp = df_mm2.set_index('Query').T.to_dict()
	d_memberships = {}
	contigs = set(df_mm2['Query'].tolist()).union(set(list(G.nodes())))
	
	for c in contigs:
		if c in aligned:
			try: d_memberships[c]['Memberships'].add(genome_id)
			except KeyError: d_memberships[c] = {'Memberships':set([genome_id]), 'Inference_Type':set([])}
				
		if c not in aligned:
			d_memberships[c] = {'Memberships' : set([]), 'Inference_Type':set([])} 
			
		try:
			d_memberships[c]['Start'] = min(df_mm2_grp[c]['SStart'], df_mm2_grp[c]['SEnd'])
			d_memberships[c]['End'] = max(df_mm2_grp[c]['SStart'], df_mm2_grp[c]['SEnd'])
			d_memberships[c]['Orientation'] = df_mm2_grp[c]['Orientation']
			d_memberships[c][genome_id+'_PIdent'] = df_mm2_grp[c]['PIdent']
		except KeyError:
			d_memberships[c]['Start'] = -1
			d_memberships[c]['End'] = -1
			d_memberships[c][genome_id+'_PIdent'] = 0
			d_memberships[c]['Orientation'] = '*'
	nx.set_node_attributes(G, d_memberships)
	return G

def Add_Additional_Attributes(df_mm2, genome_id, G, quality = 80):
	aligned = df_mm2[df_mm2['PIdent'] >= quality]['Query'].tolist()
	for a in aligned: 
		try: G.nodes[a]['Memberships'].add(genome_id)
		except KeyError: continue
	return G

def Calculate_Coordinates(subg, n, u):
	if subg.has_edge(n, u):
		edge = (n, u)
		edge_orientation = subg.edges[edge]['orientation']
		edge_overlap = int(float(subg.edges[edge]['mean']))
		c2_length = int(subg.nodes[u]['length'])
		s1, e1 = subg.nodes[n]['Start'], subg.nodes[n]['End']
		orientation = subg.nodes[n]['Orientation']
		e1 = s1 + int(subg.nodes[n]['length'])
		if ((orientation == '+' and subg.nodes[n]['orientation'] == 'REV') or
			(orientation == '-' and subg.nodes[n]['orientation'] == 'REV')) :
			s1, e1 = e1, s1
		if edge_orientation == 'EE':
			e2 = e1 + edge_overlap
			s2 = e2 + c2_length
		if edge_orientation == 'EB':
			s2 = e1 + edge_overlap
			e2 = s2 + c2_length
		if edge_orientation == 'BB':
			s2 = s1 + edge_overlap
			e2 = s2 + c2_length
		if edge_orientation == 'BE':
			e2 = s1 + edge_overlap
			s2 = e2 + c2_length
		start,end = (s2, e2)
		flag = 'Parent'
	else:
		edge = (u, n)
		edge_orientation = subg.edges[edge]['orientation']
		edge_overlap = int(float(subg.edges[edge]['mean']))
		c1_length = int(subg.nodes[u]['length'])
		s2, e2 = subg.nodes[n]['Start'], subg.nodes[n]['End']
		e2 = s2 + int(subg.nodes[n]['length'])
		orientation = subg.nodes[n]['Orientation']
		if ((orientation == '+' and subg.nodes[n]['orientation'] == 'REV') or
			(orientation == '-' and subg.nodes[n]['orientation'] == 'REV')):
			s2, e2 = e2, s2
		if edge_orientation == 'EE':
			e1 = e2 - edge_overlap
			s1 = e1 - c1_length
		if edge_orientation == 'EB':
			e1 = s2 - edge_overlap
			s1 = e1 - c1_length
		if edge_orientation == 'BB':
			s1 = s2 - edge_overlap
			e1 = s1 - c1_length
		if edge_orientation == 'BE':
			s1 = e2 - edge_overlap
			e1 = s1 - c1_length
		start,end = (s1,e1)
		flag = 'Descendant'
	d = {'Contig':u, 'Parent_Node':n,'Start':start, 'End':end,
		 'Membership':subg.nodes[u]['Memberships'],
		 'Contig_Length':int(subg.nodes[u]['length']),
		 'Parent_Length':int(subg.nodes[n]['length']), 
		 'Contig_Orientation(MetaCarvel)':subg.nodes[u]['orientation'],
		 'Contig_Orientation(Minimap2)':subg.nodes[u]['Orientation'],
		 'Parent_Orientation(MetaCarvel)':subg.nodes[n]['orientation'],
		 'Parent_Orientation(Minimap2)':subg.nodes[n]['Orientation'],
		 'Parent_Type':flag}
	return d

def Assign_Coordinates(subg, genome):
	nodes = subg.nodes()
	alignments = []
	out = []
	for n in nodes:
		if genome in subg.nodes[n]['Memberships']:
			alignments.append(n)
	if len(alignments) == 0: 
		return out
	if len(alignments) == len(nodes): 
		return out
	else:
		#print("+++>",len(alignments),len(nodes),"Alignments Found...")
		start = alignments[0]
		Q = [start]
		visited = set({start})
		ctr = 0

		while len(Q) > 0:
			n = Q.pop(0)
			neighbors = set(list(subg.predecessors(n)) + list(subg.successors(n)))
			#print(ctr, n, len(neighbors), len(visited))
			
			for u in neighbors:
				####Assign Coordinates to u based on n
				if genome not in subg.nodes[u]['Memberships']:
					d = Calculate_Coordinates(subg, n, u)
					inf_type = ""
					if genome not in subg.nodes[n]['Memberships']: inf_type = 'Graph'
					elif genome in subg.nodes[n]['Memberships']: inf_type = 'Genome'
					d['Inference_Type'] = inf_type
					if  ((genome not in subg.nodes[u]['Memberships']) or 
						 ('Graph' in subg.nodes[u]['Inference_Type'] and d['Inference_Type'] == 'Genome')):
						subg.nodes[u]['Start'] = d['Start']
						subg.nodes[u]['End'] = d['End']
						subg.nodes[u]['Memberships'].add('Graph')
						subg.nodes[u]['Inference_Type'].update(d['Inference_Type'])    
					out.append(d)
				if u not in visited:
					visited.add(u)
					Q.append(u)
			ctr += 1
	return out