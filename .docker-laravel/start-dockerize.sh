#!/bin/bash
chown -R www-data.www-data /var/www/storage

cp env.exemplo .env

composer install
php artisan key:generate
php artisan migrate

# inicio
php-fpm