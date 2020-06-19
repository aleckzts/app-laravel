#!/bin/bash
chown -R www-data.www-data /var/www/storage

composer install
php artisan key:generate
php artisan migrate

# inicio
php-fpm