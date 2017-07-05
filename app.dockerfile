FROM shakyshane/laravel-php:latest

COPY ./app/composer.lock ./app/composer.json /var/www/

COPY ./app/database /var/www/database

WORKDIR /var/www

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer 


COPY ./app /var/www

RUN chown -R www-data:www-data \
        /var/www/storage \
        /var/www/bootstrap/cache

RUN php artisan optimize