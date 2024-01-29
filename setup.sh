#!/bin/bash

export TF_ENABLE_ONEDNN_OPTS=0

while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done

if $CUDA_VISIBLE_DEVICES > 0
    then
        echo "Running on GPU..."
fi
module load libtensorflow/2.15.0
echo "Loaded Tensorflow."
gcc $file -ltensorflow -o run_file
echo -e "$file compiled.\n\n"
./run_file
echo -e "\n\nExecution complete."
exit
echo "Exiting GPU..."
