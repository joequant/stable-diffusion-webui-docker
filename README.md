This is a docker image to get stable diffusion running with an old
RX580 card.  Because AMD has discontinued ROCm support for it, I cannot
get it to run on bare metal, so I managed to get it running using
xuhuishengs executables.

One issue I run into is that the machine has a APU and getting it
working with that was something of a pain.  Also I bought an 5700xt
card but could not get that to work.  Dont know if this is software or
if the card is just old and has a hardware fault.


#https://github.com/xuhuisheng/rocm-gfx803
#https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-AMD-GPUs#running-inside-docker
