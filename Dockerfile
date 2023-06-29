FROM ubuntu:22.04
RUN apt-get update && \
 ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata && \
 dpkg-reconfigure --frontend noninteractive tzdata && \
 apt-get install software-properties-common -y && \
 add-apt-repository ppa:deadsnakes/ppa -y && \
 apt-get update && \
 apt-get install python3.9 -y
CMD python3.9 --version