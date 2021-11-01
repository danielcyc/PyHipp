#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"


#rplpl=`find . -name "rplpl-slurm*.out" | grep -e rplpl-slurm.queue`
#echo -e "==> $rplpl <==\n"
#head -1 rplpl-slurm*.out

head -5 *.out

#rplspl=`find . -name "rplspl-slurm*.out" | grep -e rplspl-slurm.queue`
#echo -e "==> $rplspl <==\n"
#head -1 rplspl-slurm*.out


echo "End Times"

#echo -e "==> $rplpl <==\n"
#tail -2 rplpl-slurm*.out


#echo -e "==> $rplspl <==\n"
#tail -2 rplspl-slurm*.out

tail *.out
