#!/bin/bash

source venv/bin/activate
export LD_LIBRARY_PATH=/opt/rocm/lib
# Ignore the APU
export CUDA_VISIBLE_DEVICES=0
#export HSA_OVERRIDE_GFX_VERSION=10.3.0
# Load the torch versions already installed
python3 -u launch.py  --skip-install --medvram --disable-safe-unpickle






