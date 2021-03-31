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

Route::get('/f', function () {
    return view('front.landing');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/', [App\Http\Controllers\LandingPageController::class, 'index'])->name('landing');
Route::get('/contact', [App\Http\Controllers\LandingPageController::class, 'contact'])->name('contact');
Route::get('/about', [App\Http\Controllers\LandingPageController::class, 'about'])->name('about');
Route::get('/checkout', [App\Http\Controllers\CheckoutController::class, 'index'])->name('checkout');
Route::get('/blog', [App\Http\Controllers\BlogController::class, 'index'])->name('blog');
Route::post('/storeorder', [App\Http\Controllers\OrderController::class, 'store'])->name('order.store');
Route::get('/blog/{slug}', [App\Http\Controllers\BlogController::class, 'show'])->name('blog.show');
 Route::get('/llogin', function () {
    return view('front.login');
}); 


/* ################shop#################### */
Route::get('/shop', [App\Http\Controllers\ShopController::class, 'index'])->name('shop.index');
Route::get('/shop/{product}', [App\Http\Controllers\ShopController::class, 'show'])->name('shop.show');
/* ##################end shop#################" */
/* ####################cart########################## */
//Route::get('/cart',  [App\Http\Controllers\CartController::class, 'index'])->name('cart.index');
//Route::post('/cart/{product}',  [App\Http\Controllers\CartController::class, 'store'])->name('cart.store');
///Route::patch('/cart/{product}',  [App\Http\Controllers\CartController::class, 'update'])->name('cart.update');
//Route::delete('/cart/{product}',  [App\Http\Controllers\CartController::class, 'destroy'])->name('cart.destroy');
//Route::post('/cart/switchToSaveForLater/{product}',  [App\Http\Controllers\CartController::class, 'switchToSaveForLater'])->name('cart.switchToSaveForLater');
/* ####################end cart########################## */

Route::get('/addToCart/{product}', [App\Http\Controllers\ProductController::class, 'addToCart'])->name('cart.add');
Route::get('/cart', [App\Http\Controllers\ProductController::class, 'showCart'])->name('cart.show');
Route::delete('/products/{product}', [App\Http\Controllers\ProductController::class, 'destroy'])->name('product.remove');
Route::put('/products/{product}', [App\Http\Controllers\ProductController::class, 'update'])->name('product.update');
Route::get('/detail{id}', [App\Http\Controllers\ProductController::class, 'detail'])->name('product.detail');

/* ##################################### */
Route::get('/wishlist', [App\Http\Controllers\WishListController::class, 'index'])->name('wishlist');
Route::post('/wishlist/store', [App\Http\Controllers\WishListController::class, 'store'])->name('wishlist.store');
/* ##################################### */
Route::post('/contact/store', [App\Http\Controllers\ContactController::class, 'store'])->name('contact.store');
Route::post('/newsletter', [App\Http\Controllers\ContactController::class, 'newsletter'])->name('newsletter');
// date::28/03/2021 14:36
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});