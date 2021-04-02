FROM php:7.4-alpine

LABEL maintainer="Stijn Tilleman"

RUN curl -L http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o php-cs-fixer \
    && chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

VOLUME ["/app"]

WORKDIR /app

ENTRYPOINT ["php-cs-fixer"]

CMD ["--help"]
