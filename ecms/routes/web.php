<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('welcome');
//});




Route::namespace('App\Http\Controllers\Frontend')->group(function () {
    Route::get('/', 'DefaultController@index')->name('home.index');

    // BLOG
    Route::get('/blog', 'BlogController@index')->name('blog.Index');
    Route::get('/blog/{slug}', 'BlogController@detail')->name('blog.Detail');

    // PAGE
    Route::get('/page/{slug}', 'PageController@detail')->name('page.Detail');

    // CONTACT
    Route::get('/contact', 'DefaultController@contact')->name('contact.Detail');
    Route::post('/contact', 'DefaultController@sendMail');


});


Route::namespace('App\Http\Controllers\Backend')->group(function () {
    Route::prefix('nedmin')
        ->group(function () {
            Route::get('/dashbord', 'DefaultController@index')->name('nedmin.index')->middleware('admin');
            Route::get('/', 'DefaultController@login')->name('nedmin.login')->middleware('CheckLogin');
            Route::get('/logout', 'DefaultController@logout')->name('nedmin.logout');
            Route::post('/login', 'DefaultController@authenticate')->name('nedmin.Authenticate');
        });
});

Route::middleware(['admin'])->group(function () {
    Route::namespace('App\Http\Controllers\Backend')->group(function () {
        Route::prefix('nedmin/settings')
            ->group(function () {
                Route::get('/', 'SettingsController@index')->name('settings.index');

                Route::post('/sortable', 'SettingsController@sortable')->name('settings.Sortable');

                Route::get('/delete/{id}', 'SettingsController@destroy')->name('settings.Destroy');
                Route::get('/edit/{id}', 'SettingsController@edit')->name('settings.Edit');
                Route::post('update/{id}', 'SettingsController@update')->name('settings.update');

            });
    });
});


Route::middleware(['admin'])->group(function () {
    Route::namespace('App\Http\Controllers\Backend')->group(function () {
        Route::prefix('nedmin')
            ->group(function () {
                //Blog
                Route::post('blog/sortable', 'BlogController@sortable')->name('blog.Sortable');
                Route::resource('blog', 'BlogController');

                //Page
                Route::post('/page/sortable', 'PageController@sortable')->name('page.Sortable');
                Route::resource('page', 'PageController');

                //Slider
                Route::post('/slider/sortable', 'SlidersController@sortable')->name('slider.Sortable');
                Route::resource('slider', 'SlidersController');

                //User
                Route::post('/user/sortable', 'UsersController@sortable')->name('user.Sortable');
                Route::resource('user', 'UsersController');
            });
    });
});


Auth::routes();

//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('admin');
