#!/bin/bash

# This file runs an interactive session on the GPU.

srun -p GPU --gres=gpu:1 --pty /bin/bash