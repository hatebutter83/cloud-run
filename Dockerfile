FROM php:8.0.11-fpm-alpine

ARG TIMEZONE=UTC

# 時區設定
RUN ln -sf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo ${TIMEZONE} > /etc/timezone

# 文字編碼
ENV LANG C.UTF-8

RUN apk add --no-cache nginx wget

RUN mkdir -p /run/nginx

COPY docker/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /app
COPY . /app

RUN apk update && \
    apk add \
        gcc \
        g++ \
        git \
        re2c \
        curl \
        make \
        libtool \
        libmagic \
        autoconf

RUN chown -R www-data: /app

CMD sh /app/docker/startup.sh
