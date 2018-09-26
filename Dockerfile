FROM phpstan/phpstan:0.10
RUN apk --update --progress --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.7/community add \
    php7-dom \
    php7-xmlwriter \
    php7-mysqli \
    php7-gd \
    php7-tidy \
    && composer global require phpstan/phpstan-phpunit \
    && composer global require phpunit/phpunit
ENTRYPOINT []
