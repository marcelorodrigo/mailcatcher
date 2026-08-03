ARG RUBY_VERSION=4.0.6
FROM ruby:${RUBY_VERSION}-alpine3.24

ARG RUBY_VERSION
ARG MAILCATCHER_VERSION=0.10.0

LABEL maintainer="Marcelo Wiebbelling <mrodrigow@gmail.com>" \
      io.github.marcelorodrigo.mailcatcher.ruby-version="${RUBY_VERSION}" \
      io.github.marcelorodrigo.mailcatcher.version="${MAILCATCHER_VERSION}"

RUN set -xe \
    && apk add --no-cache \
        libstdc++ \
        sqlite-libs \
    && apk add --no-cache --virtual .build-deps \
        build-base \
        sqlite-dev \
    && gem install mailcatcher -v "${MAILCATCHER_VERSION}" -N \
    && apk del .build-deps \
    && adduser -S -D -H mailcatcher
EXPOSE 1025
EXPOSE 1080
USER mailcatcher
CMD ["sh", "-c", "mailcatcher --no-quit --foreground --ip=0.0.0.0"]
