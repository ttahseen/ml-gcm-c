#!/bin/bash

# while getopts f: flag
# do
#     case "${flag}" in
#         f) file=${OPTARG};;
#     esac
# done
# echo "File: $file";

# srun -p GPU --gres=gpu:1 ./utils/setup.sh -f $file
srun -p GPU --gres=gpu:1 ./utils/setup.sh -f load_model.c
# srun -p GPU --gres=gpu:1 singularity exec --nv /home/ucaptp0/ml-gcm-cobweb/singularity-images/ubuntu20_anaconda_cuda11.2.sif ./setup.sh -f $file