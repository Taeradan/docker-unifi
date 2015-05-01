FROM debian:jessie

RUN echo "deb http://www.ubnt.com/downloads/unifi/distros/deb/debian debian ubiquiti" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
RUN apt-get update && apt-get install -y unifi-rapid
