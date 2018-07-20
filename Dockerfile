#### 
# http://bioinf.wehi.edu.au/subread-package/
# WEHI Bioinformatics - The Subread package: a tool kit for processing next-gen sequencing data
####

FROM ubuntu:16.04
MAINTAINER Steve Tsang <mylagimail2004@yahoo.com>
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes \
 build-essential \
 gcc-multilib \
 apt-utils \
 wget

WORKDIR /opt/
RUN wget https://sourceforge.net/projects/subread/files/subread-1.5.2/subread-1.5.2-Linux-x86_64.tar.gz
RUN tar xvzf subread-1.5.2-Linux-x86_64.tar.gz
RUN mv /opt/subread-1.5.2-Linux-x86_64/bin/utilities/* /opt/subread-1.5.2-Linux-x86_64/bin
RUN cp -r /opt/subread-1.5.2-Linux-x86_64/bin/* /usr/local/bin
