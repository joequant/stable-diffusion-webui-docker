apt-get update -y
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata
apt-get install -y python3 python3-dev wget python3-pip python3.8-venv git libopenmpi3 libpng16-16 libpng16-16 libjpeg8 libopenblas0 libnuma-dev
wget -q -O - http://repo.radeon.com/rocm/rocm.gpg.key | apt-key add -
echo 'deb [arch=amd64] http://repo.radeon.com/rocm/apt/3.5.1/ xenial main' | tee /etc/apt/sources.list.d/rocm.list
apt-get update -y
apt-get purge *5.8.0*
apt-get install -y rock-dkms
apt-get install -y rocm-dkms


