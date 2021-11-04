#!/bin/bash
cwd=`pwd`; 
for i in data/picasso/20181102/session01/array04/channel118;
do echo $i;
	cd /$i;
	sbatch /data/src/PyHipp/rplhighpass-sort-slurm.sh; cd $cwd; done
