python3 -m venv venv
venv/bin/python3 -m pip install --upgrade pip wheel
lexport LD_LIBRARY_PATH=/opt/rocm/lib
TORCH_COMMAND='pip3 install torch-1.7.0a0-cp38-cp38-linux_x86_64.whl torchvision-0.8.0a0+2f40a48-cp38-cp38-linux_x86_64.whl' REQS_FILE='requirements.txt' COMMANDLINE_ARGS='--skip-torch-cuda-test'  venv/bin/python3 -u -c 'import launch ; launch.prepare_environment()'

