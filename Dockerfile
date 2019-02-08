FROM alpine

LABEL vendor="APT Masterclass"
LABEL maintainer="Pawel Maziarz <pawel.maziarz@aptmasterclass.com>"
LABEL description="Alpine with tcpdump sniffer"

RUN apk add --no-cache tcpdump coreutils

CMD ["/usr/sbin/tcpdump", "-i", "any"]

