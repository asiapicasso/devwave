<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use Illuminate\Http\Request;
use App\Http\Controllers\PollController;
use App\Http\Controllers\SongController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::resource('poll', PollController::class);
// Route::get('/song', [SongController::class, 'index'])->name('reddit');
// Route::get('/getsong', [SongController::class, 'getSong']);


// Route::resource('song', SongController::class);
// Route::get('/song/getSong', [SongController::class, 'getSong']);
Route::post('song/getSong', [SongController::class, 'getSong']);
Route::get('/auth', function () {
    return view('auth.login');
});

Auth::routes();
Auth::routes(['register' => false]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


// user must be signed in to access the following routes
Route::get('/chat', function () {
    return view('chat');
})->middleware('auth')->name('chat');

/* Route::get('/poll', function () {
    return view('poll');
})->middleware('auth')->name('poll');
 */
Route::get('/reddit', function () {
    return view('reddit');
})->middleware('auth')->name('reddit');



Route::get('/{profile}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('profile');
Route::get('/update/{email}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_email');
Route::get('/update/{phonenumber}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_phonenumber');
Route::get('/update/{profile_picture}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_profile_picture');
Route::get('/update/{username}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_username');
Route::get('/update/{firstname}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_firstname');
Route::get('/update/{lastname}', [ProfileController::class, 'showProfile'])->middleware('auth')->name('update_lastname');
Route::get('/poll', [PollController::class, 'index'])->name('poll.index');


Route::get('/', function () {
    return view('welcome');
});
