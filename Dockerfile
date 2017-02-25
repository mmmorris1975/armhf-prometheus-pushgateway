FROM armhf-prometheus-busybox:latest
MAINTAINER Mike Morris

COPY pushgateway /bin/pushgateway

EXPOSE     9091
WORKDIR    /pushgateway
ENTRYPOINT [ "/bin/pushgateway" ]
