FROM busybox

RUN mkdir -p /data/graphite/whisper/ /etc/carbon
ADD go-carbon /usr/sbin
ADD conf-examples/* /etc/carbon/
CMD ["go-carbon", "-config", "/etc/carbon/carbon.conf"]

EXPOSE 2003 2004 7002 7007 2003/udp
VOLUME /data/graphite/
