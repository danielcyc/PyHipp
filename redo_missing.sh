#!/bin/bash
cwd=`pwd`; 
for i in data/picasso/20181105/session01/array01/channel027;
do echo $i;
	cd /$i;
	sbatch /data/src/PyHipp/rplhighpass-sort-slurm.sh; cd $cwd; done
