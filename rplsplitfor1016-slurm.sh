#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "rplspla1"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rplspla1-slurm.%N.%j.out # STDOUT
#SBATCH -e rplspla1-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(1,33)], SkipHPC=False, HPCScriptsDir='/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:330351119457:awsnotify --message "RPLSplitJobDone"

