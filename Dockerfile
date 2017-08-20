FROM alpine:3.5

MAINTAINER Tit Petric <black@scene-si.org>

ARG GITVERSION=development
ARG GITTAG=development
ENV GITVERSION=${GITVERSION} GITTAG=${GITTAG}

ADD ./front/src/dist/ /app/public_html/
ADD ./build/pendulum /app/pendulum

WORKDIR /app

ENTRYPOINT ["/app/pendulum"]
