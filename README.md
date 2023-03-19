This is a docker image to get stable diffusion running with an old
RX580 card.  Because AMD has discontinued ROCm support for it, I cannot
get it to run on bare metal, so I managed to get it running using
xuhuishengs executables.

One issue I run into is that the machine has a APU and getting it
working with that was something of a pain


#https://github.com/xuhuisheng/rocm-gfx803
#https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs#running-inside-docker
