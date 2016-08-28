FROM debian:latest
MAINTAINER me@me.com

# 1 - RUN
RUN sudo apt-get update && DEBIAN_FRONTEND=noninteractive sudo apt-get install -yp apt-utils
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get install -yp htop
RUN apt-get clean

# 2 - CMD
#CMD ["htop"]
#CMD ["ls", "-l"]

# 3 - WORKDIR and ENV
#WORKDIR /root
#ENV DZ version1
