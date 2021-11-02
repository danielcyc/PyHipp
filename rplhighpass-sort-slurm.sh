#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1 # number of CPUs for this task
#SBATCH -J "rplhighpass-sort-slurm"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rplhighpass-sort-slurm.%N.%j.out # STDOUT
#SBATCH -e rplhighpass-sort-slurm.%N.%j.err # STDERR

#LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

