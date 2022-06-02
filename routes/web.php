<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\SizesController;
use App\Http\Controllers\eCommerceController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;

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

Route::get('/', [eCommerceController::class, 'index'])->name('home');
Route::get('/search/category/{category}', [eCommerceController::class, 'searchCategory'])->name('search-category');
Route::get('/search/tag/{tag}', [eCommerceController::class, 'searchTag'])->name('search-tag');
Route::get('/search/product/',  [eCommerceController::class, 'searchProduct'])->name('search.product');
Route::get('/show/{product}', [eCommerceController::class, 'showProduct'])->name('show.product');

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';

Route::middleware(['auth'])->group(function(){
    Route::get('/cart', [CartController::Class, 'index'])->name('cart.index');
    Route::post('/cart/{product}/{size}', [CartController::class, 'store'])->name('cart.store');
    Route::delete('/cart/{product}/{size}', [CartController::class, 'destroy'])->name('cart.destroy');
    Route::post('/order', [OrderController::class, 'store'])->name('order.store');
    Route::get('/order', [OrderController::class, 'index'])->name('order.index');
});


Route::middleware(['auth','admin'])->group(function(){
    Route::get('/product/create', [ProductController::class, 'create'])->name('product.create');
    Route::post('/product/create', [ProductController::class, 'store'])->name('product.store');
    Route::get('/product',[ProductController::class, 'index'])->name('product.index');
    Route::get('/product/destroy/{product}', [ProductController::class, 'destroy'])->name('product.destroy');
    Route::get('/product/edit/{product}', [ProductController::class, 'edit'])->name('product.edit');
    Route::put('/product/edit/{product}', [ProductController::class, 'update'])->name('product.update');
    Route::get('/product/trash', [ProductController::class, 'trash'])->name('product.trash');
    Route::get('/product/restore/{product}', [ProductController::class, 'restore'])->name('product.restore');


    Route::get('/category/create', [CategoryController::class, 'create'])->name('category.create');
    Route::post('/category/create', [CategoryController::class, 'store'])->name('category.store');
    Route::get('/category',[CategoryController::class, 'index'])->name('category.index');
    Route::get('/category/destroy/{category}', [CategoryController::class, 'destroy'])->name('category.destroy');
    Route::get('/category/edit/{category}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::put('/category/edit/{category}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/category/trash', [CategoryController::class, 'trash'])->name('category.trash');
    Route::get('/category/restore/{category}', [CategoryController::class, 'restore'])->name('category.restore');

    Route::get('/tag/create', [TagController::class, 'create'])->name('tag.create');
    Route::post('/tag/create', [TagController::class, 'store'])->name('tag.store');
    Route::get('/tag',[TagController::class, 'index'])->name('tag.index');
    Route::get('/tag/destroy/{tag}', [TagController::class, 'destroy'])->name('tag.destroy');
    Route::get('/tag/edit/{tag}', [TagController::class, 'edit'])->name('tag.edit');
    Route::put('/tag/edit/{tag}', [TagController::class, 'update'])->name('tag.update');
    Route::get('/tag/trash', [TagController::class, 'trash'])->name('tag.trash');
    Route::get('/tag/restore/{tag}', [TagController::class, 'restore'])->name('tag.restore');

    Route::get('/size/create', [SizesController::class, 'create'])->name('size.create');
    Route::post('/size/create', [SizesController::class, 'store'])->name('size.store');
    Route::get('/size', [SizesController::class, 'index'])->name('size.index');
    Route::get('/size/destroy/{size}', [SizesController::class, 'destroy'])->name('size.destroy');
    Route::get('/size/edit/{size}', [SizesController::class, 'edit'])->name('size.edit');
    Route::put('/size/edit/{size}', [SizesController::class, 'update'])->name('size.update');
    Route::get('/size/trash', [SizesController::class, 'trash'])->name('size.trash');
    Route::get('/size/restore/{size}', [SizesController::class, 'restore'])->name('size.restore');

});



