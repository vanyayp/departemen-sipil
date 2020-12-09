<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Login;
use App\Http\Controllers\Dashboard;
use App\Http\Controllers\Homepage;
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

Route::get('/', function () {
    return view('guest.index');
});
Route::get('/views/vmts', function () {
    return view('guest.vmts');
});
Route::get('/views/sejarah-singkat', function () {
    return view('guest.sejarah-singkat');
});
Route::get('/views/dosen', function () {
    return view('guest.dosen');
});
Route::get('/views/staff', function () {
    return view('guest.staff');
});
Route::get('/views/berita', function () {
    return view('guest.berita');
});
Route::get('/views/kontak', function () {
    return view('guest.kontak');
});
Route::get('/login', [Login::class, 'index']);
Route::get('/dashboard', [Dashboard::class, 'index']);
Route::get('/tambah-berita-baru', [Dashboard::class, 'tambah_berita_baru']);
Route::get('/tambah-kegiatan-baru', [Dashboard::class, 'tambah_kegiatan_baru']);
Route::get('/tambah-informasi-baru', [Dashboard::class, 'tambah_informasi_baru']);
Route::get('/tambah-user-baru', [Dashboard::class, 'tambah_user_baru']);
Route::get('/profil', [Dashboard::class, 'profil']);
Route::get('/logout', [Dashboard::class, 'logout']);

Route::post('/process-login', [Login::class, 'process_login']);
Route::post('/tambah-user-baru-action', [Dashboard::class, 'tambah_user_baru_action']);
Route::post('/tambah-kegiatan-baru-action', [Dashboard::class, 'tambah_kegiatan_baru_action']);
Route::post('/tambah-informasi-baru-action', [Dashboard::class, 'tambah_informasi_baru_action']);
Route::post('/tambah-berita-baru-action', [Dashboard::class, 'tambah_berita_baru_action']);
Route::post('/edit-profil', [Dashboard::class], 'edit_profil');


Route::get('/edit-berita', [Dashboard::class, 'edit_berita']);
Route::get('/edit-kegiatan', [Dashboard::class, 'edit_kegiatan']);
Route::get('/edit-informasi', [Dashboard::class, 'edit_informasi']);
Route::get('/edit-user', [Dashboard::class, 'edit_user']);

Route::post('/get_data_id', [Dashboard::class, 'get_data_id']);

Route::post('/hapus_kegiatan', [Dashboard::class, 'hapus_kegiatan']);
Route::post('/update_kegiatan', [Dashboard::class, 'update_kegiatan']);
Route::post('/hapus_berita', [Dashboard::class, 'hapus_berita']);
Route::post('/update_berita', [Dashboard::class, 'update_berita']);
Route::post('/hapus_informasi', [Dashboard::class, 'hapus_informasi']);
Route::post('/update_informasi', [Dashboard::class, 'update_informasi']);
Route::post('/hapus_user', [Dashboard::class, 'hapus_user']);
Route::post('/update_user', [Dashboard::class, 'update_user']);


Route::get('/tambah-dosen-baru', [Dashboard::class, 'tambah_dosen_baru']);
Route::get('/tambah-staff-baru', [Dashboard::class, 'tambah_staff_baru']);
Route::get('/edit-dosen', [Dashboard::class, 'edit_dosen']);
Route::get('/edit-staff', [Dashboard::class, 'edit_staff']);
Route::get('/headline', [Dashboard::class, 'headline']);
Route::get('/vmts', [Dashboard::class, 'vmts']);
Route::get('/sejarah-singkat', [Dashboard::class, 'sejarah_singkat']);

Route::post('/tambah_dosen_baru_action', [Dashboard::class, 'tambah_dosen_baru_action']);
Route::post('/tambah_staff_baru_action', [Dashboard::class, 'tambah_staff_baru_action']);
Route::post('/hapus_dosen', [Dashboard::class, 'hapus_dosen']);
Route::post('/update_dosen', [Dashboard::class, 'update_dosen']);
Route::post('/hapus_staff', [Dashboard::class, 'hapus_staff']);
Route::post('/update_staff', [Dashboard::class, 'update_staff']);

Route::post('/update_headline', [Dashboard::class, 'update_headline']);
Route::post('/update_visi', [Dashboard::class, 'update_visi']);
Route::post('/update_misi', [Dashboard::class, 'update_misi']);
Route::post('/update_tujuan', [Dashboard::class, 'update_tujuan']);
Route::post('/update_sasaran', [Dashboard::class, 'update_sasaran']);
Route::post('/update_sejarah_singkat', [Dashboard::class, 'update_sejarah_singkat']);

Route::get('/kontak', [Dashboard::class, 'kontak']);
Route::post('/update_kontak', [Dashboard::class, 'update_kontak']);

Route::get('/berita/{id}', [Homepage::class, 'handle_berita']);
Route::get('/kegiatan/{id}', [Homepage::class, 'handle_kegiatan']);
Route::get('/informasi/{id}', [Homepage::class, 'handle_informasi']);
