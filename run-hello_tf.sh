#!/bin/bash
#SBATCH -p GPU
#requesting one node
#SBATCH -N1
#requesting 1 V100 GPU
#SBATCH --gres=gpu:v100:1
#SBATCH --mail-user=ucaptp0@ucl.ac.uk
#SBATCH --mail-type=ALL
#SBATCH --mem=100G

srun singularity exec --nv /home/ucaptp0/ml-gcm-cobweb/singularity-images/ubuntu20_anaconda_cuda11.2.sif /home/ucaptp0/c-practice/hello_tf.sh
