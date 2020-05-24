FROM debian:buster
MAINTAINER Takayuki Ogawa <ogavva.t@gmail.com>

RUN apt-get update
RUN apt-get install -y curl

# Install Asterisk 
RUN apt-get install -y asterisk 

# SIP
# EXPOSE 5060
EXPOSE 5060/udp 5060/tcp
# RTP
EXPOSE 10000-10100/udp

RUN rm -r /etc/asterisk
COPY ./configs /etc/asterisk

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

