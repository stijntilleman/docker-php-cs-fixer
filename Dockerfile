FROM php:7.1

MAINTAINER Stijn Tilleman

RUN curl -L http://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o php-cs-fixer
RUN chmod a+x php-cs-fixer \
    && mv php-cs-fixer /usr/local/bin/php-cs-fixer

VOLUME ["/app"]

WORKDIR /app

ENTRYPOINT ["php-cs-fixer"]

CMD ["--help"]
