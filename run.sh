#!/bin/bash

source venv/bin/activate
export LD_LIBRARY_PATH=/opt/rocm/lib
# Ignore the APU
#export CUDA_VISIBLE_DEVICES=2
# Load the torch versions already installed
#python3 -u launch.py  --skip-torch-cuda-test --skip-install --use-cpu all
python3 -u launch.py  --skip-torch-cuda-test --skip-install


