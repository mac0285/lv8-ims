<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About APPS
 Project Office akgyk - laravel inventory system
Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).


## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
## Production 
Apply changes to .env file:
APP_ENV=production
APP_DEBUG=false
Make sure that you are optimizing Composer's class autoloader map (docs):
composer dump-autoload --optimize
or along install: composer install --optimize-autoloader --no-dev
or during update: composer update --optimize-autoloader
Optimizing Configuration Loading:

php artisan config:cache
Optimizing Route Loading

php artisan route:cache
Compile all of the application's Blade templates:
php artisan view:cache
Cache the framework bootstrap files:

php artisan optimize
(Optional) Compiling assets (docs):

npm run production
(Optional) Generate the encryption keys Laravel Passport needs (docs):

php artisan passport:keys
(Optional) Start Laravel task scheduler by adding the following Cron entry (docs):

* * * * * cd /path-to-your-project && php artisan schedule:run >> /dev/null 2>&1
(Optional) Install, config and start the Supervisor (docs):

(Optional) Create a symbolic link from public/storage to storage/app/public (docs):
php artisan storage:link
# lv8-ims
# systemITjogja
