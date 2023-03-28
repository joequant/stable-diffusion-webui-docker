python3 -m venv venv
venv/bin/python3 -m pip install --upgrade pip wheel
export LD_LIBRARY_PATH=/opt/rocm/lib
TORCH_COMMAND='pip install torch torchvision --index-url https://download.pytorch.org/whl/rocm5.4.2' REQS_FILE='requirements.txt' COMMANDLINE_ARGS='--skip-torch-cuda-test'  venv/bin/python3 -u -c 'import launch ; launch.prepare_environment()'

