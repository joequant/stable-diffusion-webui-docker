apt-get update -y
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata
apt-get install -y python3 python3-dev wget python3-pip python3.8-venv git libopenmpi3 libpng16-16 libpng16-16 libjpeg8 libopenblas0 libnuma-dev
apt-get update -y
wget https://repo.radeon.com/amdgpu-install/22.10/ubuntu/focal/amdgpu-install_22.10.50100-1_all.deb
apt-get install -y ./amdgpu-install_22.10.50100-1_all.deb
amdgpu-install -y --usecase=opencl,rocm --no-dkms
#wget https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm541/rocblas_2.46.0.50401-84.20.04_amd64.deb
#apt-get install -y ./rocblas_2.46.0.50401-84.20.04_amd64.deb

wget https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm510/rocblas_2.43.0-490c4140.dirty_amd64.deb
#apt-get install -y ./rocblas_2.43.0-490c4140.dirty_amd64.deb



