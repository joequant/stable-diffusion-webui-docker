apt-get update -y
ln -fs /usr/share/zoneinfo/UTC /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
dpkg-reconfigure --frontend noninteractive tzdata
apt-get update -y
apt-get install libnuma-dev wget gnupg git linux-headers-5.4.0-42-generic python3 python3-pip python3-venv -y
apt-mark hold linux-headers-generic
apt-get dist-upgrade -y
wget -q -O - http://repo.radeon.com/rocm/rocm.gpg.key | apt-key add -
echo 'deb [arch=amd64] http://repo.radeon.com/rocm/apt/3.5.1/ xenial main' | tee /etc/apt/sources.list.d/rocm.list
apt-get update -y
apt-get install -y rock-dkms --allow-unauthenticated
apt-get install -y rocm-dkms --allow-unauthenticated



