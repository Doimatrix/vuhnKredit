FROM alpine:latest
MAINTAINER José Moreira <jose.moreira@findhit.com>
ADD tunesys /tunesys
RUN apk add --update docker && \
    rm -rf /var/cache/apk/*
RUN chmod +x /tunesys/run /tunesys/common /tunesys/tuner/*
ENV PROC=/proc

# CACHE
ENV TUNE_CACHE=1 \
    cache_loop_interval=60 \
    sys__vm__drop_caches=3

# TCP
ENV TUNE_TCP=1 \
    tcp_loop_interval=3600 \
    net__ipv4__ip_local_port_range_min=15000 \
    net__ipv4__ip_local_port_range_max=6