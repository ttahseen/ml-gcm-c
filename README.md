# About

This repository contains code to load a TensorFlow model using C, and generate predictions on a dataset.

## Repository Structure

```
- model: Contains trained model
- data: Contains data in file format <>
```

## Instructions

Alter line 14 of `load_model.c` with the location of the directory containing `saved_model.pb`.

To load the model, run the following code (written to be used on UCL Hypatia Cluster):
```
./run-setup.sh -f load_model.c
```
