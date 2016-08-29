FROM debian:latest
MAINTAINER jagatjyoti0@gmail.com

# 1 - RUN
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y htop
RUN apt-get clean

# 2 - CMD
CMD ["htop"]
CMD ["ls", "-l"]

# 3 - WORKDIR and ENV
WORKDIR /root
ENV DZ version1
