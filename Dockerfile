FROM ruby:3.1.3-alpine3.15
LABEL maintainer="Marcelo Wiebbelling <mrodrigow@gmail.com>"
RUN set -xe \
    && apk add --no-cache \
        libstdc++ \
        sqlite-libs \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        sqlite-dev \
    && gem install mailcatcher -v 0.8.2 -N \
    && apk del .build-deps
EXPOSE 1025
EXPOSE 1080
CMD ["sh", "-c", "mailcatcher --no-quit --foreground --ip=0.0.0.0"]
