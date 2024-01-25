#!/bin/bash

echo $CUDA_VISIBLE_DEVICES

ldconfig /home/ucaptp0/c-practice/lib
export LIBRARY_PATH=$LIBRARY_PATH:/home/ucaptp0/c-practice/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/home/ucaptp0/c-practice/lib

echo $LIBRARY_PATH
echo $DYLD_LIBRARY_PATH

gcc -I/home/ucaptp0/c-practice/include -L/home/ucaptp0/c-practice/lib /home/ucaptp0/c-practice/hello_tf.c -ltensorflow -o /home/ucaptp0/c-practice/hello_tf
# gcc hello_tf.c -ltensorflow -o hello_tf
/home/ucaptp0/c-practice/hello_tf