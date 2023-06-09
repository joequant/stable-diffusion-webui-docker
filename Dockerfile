#SPDX: BSD-2-Clause
FROM ubuntu:20.04
COPY install-pkgs.sh .
RUN /bin/bash ./install-pkgs.sh
RUN apt-get install -y rocm-libs
WORKDIR /xdocker
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
WORKDIR stable-diffusion-webui
COPY install.sh ./
RUN /bin/bash ./install.sh
COPY run.sh ./
CMD /bin/bash ./run.sh
