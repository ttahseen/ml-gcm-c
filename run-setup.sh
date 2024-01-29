#!/bin/bash

while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done
echo "File: $file";

srun -p GPU --gres=gpu:1 setup.sh -f $file