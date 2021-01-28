FROM alpine:latest
MAINTAINER José Moreira <jose.moreira@findhit.com>
ADD tunesys /tunesys
RUN apk add --update docker && \
    rm -rf /var/cache/apk/*
RUN chmod +x /tunesys/run /tunesys/common /tunesys/tuner/*
ENV PROC=/proc

# CACHE
ENV TUNE_CACHE=1 \
 