FROM ubuntu:trusty

# Set up apt repository
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common python-software-properties
RUN add-apt-repository ppa:vsespb/mt-aws-glacier
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libapp-mtaws-perl

CMD tail -F anything