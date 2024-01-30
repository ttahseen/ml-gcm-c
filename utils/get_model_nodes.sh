#!/bin/bash

###########################################################################################################
##### This file returns the inputs and outputs of the SavedModel. Format of the output is as follows: #####
###########################################################################################################
# The given SavedModel SignatureDef contains the following input(s):
#   inputs['inputs_aux'] tensor_info:
#       dtype: DT_FLOAT
#       shape: (-1, 2)
#       name: serving_default_inputs_aux:0
#   inputs['inputs_main'] tensor_info:
#       dtype: DT_FLOAT
#       shape: (-1, 49, 4)
#       name: serving_default_inputs_main:0
# The given SavedModel SignatureDef contains the following output(s):
#   outputs['dense_output'] tensor_info:
#       dtype: DT_FLOAT
#       shape: (-1, 50, 2)
#       name: StatefulPartitionedCall:0
# Method name is: tensorflow/serving/predict
###########################################################################################################
# The names of the inputs and outputs are used in `load_model.c`. This code must be run in an env with TF 
# installed. See https://github.com/AmirulOm/tensorflow_capi_sample for further details.
###########################################################################################################

$MODEL_DIR_PATH= # Path to the directory containing the .pb file

saved_model_cli show --dir $MODEL_DIR_PATH --tag_set serve --signature_def serving_default
