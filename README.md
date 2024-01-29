# About

This repository contains code to load a TensorFlow model using C, and generate predictions on a dataset.

## Repository Structure

```
- 639545_tf: Contains trained model
- data: Contains data in file format <>
```

## Instructions

Alter line 14 of `load_model.c` with the location of the directory containing `saved_model.pb`.

To load the model, run the following code (written to be used on UCL Hypatia Cluster):
```
srun -p GPU --gres=gpu:1 --pty /bin/bash
module load libtensorflow/2.15.0
gcc load_model.c -ltensorflow -o load_model
./load_model
```
