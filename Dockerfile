FROM php:7-alpine

MAINTAINER WPLib Team <team@wplib.org>

ARG WPCLI_VERSION=1.2.1

RUN curl -L https://github.com/wp-cli/wp-cli/releases/download/v$WPCLI_VERSION/wp-cli-$WPCLI_VERSION.phar -o wp-cli.phar

RUN docker-php-ext-install mysqli \
  && cp wp-cli.phar /usr/local/bin/wp \
  && chmod +x /usr/local/bin/wp \
  && ln -s /usr/bin/php7 /usr/bin/php

CMD wp --allow-root