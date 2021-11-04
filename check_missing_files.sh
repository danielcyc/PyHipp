#!/bin/bash

for d in */; do
        cd $d;
        echo -n "Number of mda files in $d: "
        find . -name "*.mda" | wc -l
        cd ..;
done
