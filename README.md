# About

This repository contains code to load a TensorFlow model using C, and generate predictions on a dataset.

## Repository Structure

- `model`: Contains trained model
- `data`: Contains data in file format <>
- `utils`: Contains `.sh` files which do helpful things

## Instructions

Set up instructions are written to be used on Hypatia UCL Cluster.

### Setting up libraries and headers
All header files required for this repository are contained within the `/include` subdirectory. To get `\lib` subdirectory, enter the following into the command line:
```
FILENAME=libtensorflow-gpu-linux-x86_64-2.15.0.tar.gz
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/${FILENAME}
tar -C . -xzf ${FILENAME}
``` 

Then run `./utils/set-env.sh` to set library paths to include local `/lib` subdirectory.

### Loading model

Alter line 14 of `load_model.c` with the location of the directory containing `saved_model.pb`.

To load the model, run the following code (written to be used on UCL Hypatia Cluster):
```
./run-setup.sh
```

### TODO:

- Ensure that TensorFlow installation is actually using the GPU (remove `export TF_CPP_MIN_LOG_LEVEL=2` in `./utils/setup.sh` to enable instruction warnings).
- Load test_X and test_Y data into program
- Use model to generate output prediction tensors
- Save output prediction tensors