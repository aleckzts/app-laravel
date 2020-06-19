#!/bin/bash
chown -R www-data.www-data /var/www/storage

php artisan config:cache
php artisan migrate