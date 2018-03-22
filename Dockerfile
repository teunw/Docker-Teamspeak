FROM akpwebdesign/alpine-glibc

ADD http://dl.4players.de/ts/releases/3.0.13.4/teamspeak3-server_linux_amd64-3.0.13.4.tar.bz2 /tmp/teamspeak.tar.bz2

RUN mkdir /opt && \
  tar xjf /tmp/teamspeak.tar.bz2 -C /opt && \
  mv /opt/teamspeak3-server_* /opt/teamspeak && \
  rm /tmp/teamspeak.tar.bz2 

EXPOSE 9987/udp 10011 30033

ENTRYPOINT ["/opt/teamspeak/ts3server_minimal_runscript.sh"]