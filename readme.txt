composer require haruncpi/laravel-user-activity 
php artisan user-activity:install
//add on models

use Haruncpi\LaravelUserActivity\Traits\Loggable;

class User extends Authenticatable
{
        use Loggable;
php artisan user-activity:delete all

<!-- CRUD DATA -->
//create crud modelel

 php artisan make:model SoftwareCrud -m

 //Create livewire
 php artisan make:livewire Software/SoftwareCrud

//edit file migration add field to databases
$table->id();
$table->string('sku', 100);
$table->string('type', 100);
//run migration table
php artisan migrate


////kita tambahkan route baru untuk fitur CRUD manage posts. Letakkan route tersebut di dalam middleware auth agar saat mangakses /
Software
use App\Http\Livewire\SoftwareCrud;
Route::get('softwares', SoftwareCrud::class)->name('softwares');
//edit view blade

//add navigation blade
<x-jet-nav-link href="{{ route('softwares') }}" :active="request()->routeIs('softwares')">
        softwares
</x-jet-nav-link>


//add migration atrrib add fields
php artisan make:migration add_store_id_to_users_table --table=users
$table->integer('store_id')->unsigned()->nullable()->after('password');


//add icon 

https://heroicons.com/


//optimisation --------------------------------

1. php artisan config:cache
2. php artisan config:clear
3. php artisan route:cache
4. php artisan route:clear
5. php artisan optimize --force  --- error message
6. composer dumpautoload -o
7. compile asset :
        php artisan optimize
        php artisan config:cache
        php artisan route:cache
8. production:
        npm run production


Laravel without auto-discovery:
If you don't use auto-discovery, add the ServiceProvider to the providers array in config/app.php

Barryvdh\Debugbar\ServiceProvider::class,
If you want to use the facade to log messages, add this to your facades in app.php:

'Debugbar' => Barryvdh\Debugbar\Facade::class,


Beberapa versi 8 php dependencies yang perlu diupgrade diantaranya: 
"laravel/framework": "^7.0" menjadi "^8.0"
"facade/ignition": "^2.0" menjadi "^2.3.6"
"nunomaduro/collision": "^4.1" menjadi "^5.0"
"guzzlehttp/guzzle": "^6.3" menjadi "^7.0.1"
"php": "^7.2.5" menjadi "^7.3.0"
"phpunit/phpunit": "^8.5" menjadi  "^9.0"


php -S 127.0.0.1:8000  -t public/ server.php



