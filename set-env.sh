#!/bin/bash

# Run this file to set up library path variables

while getopts d: flag
do
    case "${flag}" in
        d) DIRECTORY_PATH=${OPTARG};;
    esac
done

export LIBRARY_PATH=$LIBRARY_PATH:$DIRECTORY_PATH/ml-gcm-c/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DIRECTORY_PATH/ml-gcm-c/lib