#!/bin/bash

for dir in */
do
    if [ $dir != 'base/' ]; then
        echo "Starting run from $dir"
        nohup ./$dir/Allrun_parallel > $dir/sh.log &
    fi
    echo "Completed run from $dir"
done
echo "Ran all cases"
