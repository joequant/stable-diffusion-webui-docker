#!/bin/bash

source venv/bin/activate
export LD_LIBRARY_PATH=/opt/rocm/lib
# Ignore the APU
export CUDA_VISIBLE_DEVICES=0
# Load the torch versions already installed
python3 launch.py  --skip-torch-cuda-test --skip-install --skip-version-check
