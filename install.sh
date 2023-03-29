python3 -m venv venv
export LD_LIBRARY_PATH=/opt/rocm/lib
TORCH_COMMAND='pip install torch==1.12.1+rocm5.1.1 torchvision==0.13.1+rocm5.1.1 torchaudio==0.12.1 --extra-index-url  https://download.pytorch.org/whl/rocm5.1.1' REQS_FILE='requirements.txt' COMMANDLINE_ARGS='--skip-torch-cuda-test'  venv/bin/python3 -u -c 'import launch ; launch.prepare_environment()'

