python3 -m venv venv
venv/bin/python3 -m pip install --upgrade pip wheel
ln -s /opt/rocm/lib/libroctx64.so.4.1.0 /opt/rocm/lib/libroctx64.so.1
ln -s /opt/rocm/lib/libroctracer64.so.4.1.0 /opt/rocm/lib/libroctracer64.so.1
export LD_LIBRARY_PATH=/opt/rocm/lib
TORCH_COMMAND='pip install https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm500/torch-1.11.0a0+git503a092-cp38-cp38-linux_x86_64.whl https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm500/torchvision-0.12.0a0+2662797-cp38-cp38-linux_x86_64.whl' REQS_FILE='requirements.txt' COMMANDLINE_ARGS='--skip-torch-cuda-test'  venv/bin/python3 -u -c 'import launch ; launch.prepare_environment()'

