FROM ubuntu:trusty

RUN dpkg --print-foreign-architectures && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get -y install libc6:i386 \
      libstdc++6:i386 \
      libglapi-mesa:i386 \
      libgl1-mesa-glx:i386 \
      libxxf86vm1:i386 \
      libxext6:i386 \
      libx11-6:i386 \
      libfreetype6:i386 \
      libgcc1-dbg:i386 \
      libxdamage1:i386 \
      libxfixes3:i386 \
      libx11-xcb1:i386 \
      libxcb-glx0:i386 \
      libxcb-dri2-0:i386 \
      libxcb1:i386 \
      libdrm2:i386 \
      libxdmcp6:i386 \
      wget

RUN wget http://dl.kag2d.com/kag-linux32-dedicated-release.tar.gz && \
    mkdir kag-server && \
    tar -zxvf kag-linux32-dedicated-release.tar.gz -C /kag-server && \
    chmod +x kag-server/KAGdedi && \
    rm -rfv kag-linux32-dedicated-release.tar.gz

EXPOSE 50301 50301/udp 50328/udp  80 443
WORKDIR kag-server
ENTRYPOINT ["./KAGdedi"]
