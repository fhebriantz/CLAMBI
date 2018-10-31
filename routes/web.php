<?php

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


Route::get('/', 'Cms\Cms_DashboardController@dashboard');
Route::get('/dashboard', 'Cms\Cms_DashboardController@dashboard');
Route::get('/form', 'Cms\Cms_DashboardController@form');
Route::get('/datatable', 'Cms\Cms_DashboardController@datatable');
Route::get('/validation', 'Cms\Cms_DashboardController@validation');
Route::get('/currency', 'Cms\Cms_DashboardController@currency');
Route::get('/datepicker', 'Cms\Cms_DashboardController@datepicker');


// crud Login
Route::get('/login', 'Login\Cms_LoginController@show');

Route::post('/login', 'Login\Cms_LoginController@login');
Route::post('/signup', 'Login\Cms_LoginController@signup');
Route::get('/logout', 'Login\Cms_LoginController@logout');


// ------Transaction--------
// laundry
Route::get('/laundry', 'Transaction\Tr_LaundryController@show');
Route::get('/laundry/{id}/view', 'Transaction\Tr_LaundryController@view');
// crud laundry
Route::delete('/laundry/{id}/delete','Transaction\Tr_LaundryController@delete');


// -------MASTER-------
// customer
Route::get('/customer', 'Master\Ms_CustomerController@show');
Route::get('/customer/{id}/edit', 'Master\Ms_CustomerController@edit');
Route::get('/customer/input', 'Master\Ms_CustomerController@input');
// crud customer
Route::post('/customer/input','Master\Ms_CustomerController@insert'); 
Route::put('/customer/{id}/edit','Master\Ms_CustomerController@update'); 
Route::delete('/customer/{id}/delete','Master\Ms_CustomerController@delete');

// package
Route::get('/package', 'Master\Ms_PackageController@show');
Route::get('/package/{id}/edit', 'Master\Ms_PackageController@edit');
Route::get('/package/input', 'Master\Ms_PackageController@input');
// crud package
Route::post('/package/input','Master\Ms_PackageController@insert'); 
Route::put('/package/{id}/edit','Master\Ms_PackageController@update'); 
Route::delete('/package/{id}/delete','Master\Ms_PackageController@delete');

// outlet
Route::get('/outlet', 'Master\Ms_OutletController@show');
Route::get('/outlet/{id}/edit', 'Master\Ms_OutletController@edit');
Route::get('/outlet/input', 'Master\Ms_OutletController@input');
// crud outlet
Route::post('/outlet/input','Master\Ms_OutletController@insert'); 
Route::put('/outlet/{id}/edit','Master\Ms_OutletController@update'); 
Route::delete('/outlet/{id}/delete','Master\Ms_OutletController@delete');


// additional
Route::get('/additional', 'Master\Ms_AdditionalController@show');
Route::get('/additional/{id}/edit', 'Master\Ms_AdditionalController@edit');
Route::get('/additional/input', 'Master\Ms_AdditionalController@input');
// crud additional
Route::post('/additional/input','Master\Ms_AdditionalController@insert'); 
Route::put('/additional/{id}/edit','Master\Ms_AdditionalController@update'); 
Route::delete('/additional/{id}/delete','Master\Ms_AdditionalController@delete');

// laundryservice
Route::get('/laundryservice', 'Master\Ms_LaundryserviceController@show');
Route::get('/laundryservice/{id}/edit', 'Master\Ms_LaundryserviceController@edit');
Route::get('/laundryservice/input', 'Master\Ms_LaundryserviceController@input');
// crud laundryservice
Route::post('/laundryservice/input','Master\Ms_LaundryserviceController@insert'); 
Route::put('/laundryservice/{id}/edit','Master\Ms_LaundryserviceController@update'); 
Route::delete('/laundryservice/{id}/delete','Master\Ms_LaundryserviceController@delete');

// usergroup
Route::get('/usergroup', 'Master\Ms_UsergroupController@show');
Route::get('/usergroup/{id}/edit', 'Master\Ms_UsergroupController@edit');
Route::get('/usergroup/input', 'Master\Ms_UsergroupController@input');
// crud usergroup
Route::post('/usergroup/input','Master\Ms_UsergroupController@insert'); 
Route::put('/usergroup/{id}/edit','Master\Ms_UsergroupController@update'); 
Route::delete('/usergroup/{id}/delete','Master\Ms_UsergroupController@delete');

// outletuser
Route::get('/outletuser', 'Master\Ms_OutletuserController@show');
Route::get('/outletuser/{id}/edit', 'Master\Ms_OutletuserController@edit');
Route::get('/outletuser/input', 'Master\Ms_OutletuserController@input');
// crud outletuser
Route::post('/outletuser/input','Master\Ms_OutletuserController@insert'); 
Route::put('/outletuser/{id}/edit','Master\Ms_OutletuserController@update'); 
Route::delete('/outletuser/{id}/delete','Master\Ms_OutletuserController@delete');

// promo
Route::get('/promo', 'Master\Ms_PromoController@show');
Route::get('/promo/{id}/edit', 'Master\Ms_PromoController@edit');
Route::get('/promo/input', 'Master\Ms_PromoController@input');
// crud promo
Route::post('/promo/input','Master\Ms_PromoController@insert'); 
Route::put('/promo/{id}/edit','Master\Ms_PromoController@update'); 
Route::delete('/promo/{id}/delete','Master\Ms_PromoController@delete');
