from os import listdir

indirpath = '/fs/cbcb-lab/mpop/hotspring_metagenome/MetaCarvel_output/wo_rd/'
op_dir_path = '/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Connected_Components_Wo_Repeats/'
program = '/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/connected_components.py'

files = listdir(indirpath)
op_list = []

for f in files:
	print(f)
	if 'Hotspr' in f:
		command = program+' '+indirpath+f+'/ '+op_dir_path+' '+f+'\n'
		op_list.append(command)

f = open('/fs/cbcb-scratch/hsmurali/Hot_Springs_Analysis/Scripts/commands_validate_connected_components_wo_rd.txt','w')
f.writelines(op_list)