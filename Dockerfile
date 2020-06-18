FROM debian:buster
MAINTAINER Takayuki Ogawa <ogavva.t@gmail.com>

# Install sngrep
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y gnupg
RUN echo "deb http://packages.irontec.com/debian buster main" > /etc/apt/sources.list.d/sngrep.list
RUN wget http://packages.irontec.com/public.key -q -O - | apt-key add -
RUN apt-get update
RUN apt-get install -y sngrep


# Install Asterisk 
RUN apt-get install -y asterisk 

# SIP
EXPOSE 5060/udp 5060/tcp
# RTP
EXPOSE 10000-10100/udp

RUN rm -r /etc/asterisk
COPY ./configs /etc/asterisk

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

