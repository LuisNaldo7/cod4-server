FROM ubuntu:20.04

# install dependencies
RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y libstdc++6:i386 libselinux1:i386

# set workdir
WORKDIR /home/cod

# copy game files
COPY main ./main
COPY zone ./zone
COPY ["cod4_lnxded", "cod4_lnxded-bin", "libgcc_s.so.1", "libstdc++.so.6", "start.sh", "./"]

# operate as non-privileged user
RUN useradd cod
RUN chown -R cod:cod /home/cod
USER cod

CMD ["sh", "./start.sh"]

EXPOSE 28960
