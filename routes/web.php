<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\PostCrud;
use App\Http\Livewire\TicketCrud;
use App\Http\Livewire\SoftwareCrud;
use App\Http\Livewire\Komputer\Crud; 
use App\Http\Livewire\Password\PasswordManager; 
use App\Http\Livewire\Usage;  
use App\Http\Livewire\Home; 
use App\Http\Livewire\UserController; 
use App\Http\Livewire\EmailController; 
use App\Http\Livewire\Transaction\Service; 
use App\Http\Livewire\Search; 

use App\Http\Livewire\Todo\Show;  
use App\Http\Livewire\ContactController;

/*
|--------------------------------------------------------------------------
| Web Routes--- tambahan ya  ini klo php artisan serve error
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('Auth.login');
});

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('posts', PostCrud::class)->name('posts');
    Route::get('tickets', TicketCrud::class)->name('tickets');
    Route::get('chat', TicketCrud::class)->name('chat');
    Route::get('komputers', Crud::class)->name('komputer'); 
    Route::get('Password', PasswordManager::class)->name('Password'); 
    Route::get('softwares', SoftwareCrud::class)->name('softwares'); 
    Route::get('usages', Usage::class)->name('usages');
    Route::get('/komputers/pdf', [Crud::class, 'generateBarcode']); 
    Route::get('contacts', ContactController::class)->name('contacts');
    Route::get('home', Home::class)->name('home');
    Route::get('todo', Show::class)->name('todo');
    Route::get('users', UserController::class)->name('users');
    Route::get('emails', EmailController::class)->name('email');
    Route::get('searchs', Service::class)->name('searchs');
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');
   

   Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard/todo', function () {
       return view('todo');
    })->name('dashboard-todo');   
    
   
}); 