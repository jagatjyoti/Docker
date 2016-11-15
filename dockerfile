# Download ubuntu image from hub
FROM ubuntu:14.04

# Standard clean-up and update
RUN apt-get clean
RUN apt-get update
RUN apt-get install -y wget

# Download repo and install gluster
RUN echo "deb http://ppa.launchpad.net/gluster/glusterfs-3.8/ubuntu trusty main" >> /etc/apt/sources.list && apt-get --allow-unauthenticated update -y && apt-get --allow-unauthenticated dist-upgrade -y
RUN apt-get --allow-unauthenticated install glusterfs-client -y
RUN apt-get --allow-unauthenticated install inetutils-ping -y
RUN apt-get --allow-unauthenticated install iputils-ping -y
CMD "dpkg -l | grep -i gluster"
