apt-get update -y
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata
apt-get install -y python3 python3-dev wget python3-pip python3.8-venv git libopenmpi3 libpng16-16 libpng16-16 libjpeg8 libopenblas0
wget https://repo.radeon.com/amdgpu-install/5.4.1/ubuntu/focal/amdgpu-install_5.4.50401-1_all.deb 
apt-get install -y ./amdgpu-install_5.4.50401-1_all.deb 
amdgpu-install -y --usecase=openclsdk,rocm,hiplibsdk,mlsdk --no-dkms
wget https://github.com/xuhuisheng/rocm-gfx803/releases/download/rocm541/rocblas_2.46.0.50401-84.20.04_amd64.deb
dpkg -i rocblas_2.46.0.50401-84.20.04_amd64.deb

