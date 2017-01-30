FROM alpine:3.3

MAINTAINER Rutger Laurman <info@lekkerduidelijk.nl>
RUN apk add --update \
    ca-certificates \
    bash \
    git \
    php-bz2 \
    php-cli \
    php-ftp \
    php-mcrypt \
    php-openssl \
    php-phar \
    php-zip \
    php-ctype \
    php-xmlrpc \
    php-zlib \
    && rm -rf /var/cache/apk/*

WORKDIR /root
RUN git clone --depth 1 https://github.com/banago/PHPloy.git \
		&& mv PHPloy/bin/phploy /usr/bin/phploy \
		&& rm -rf PHPloy

