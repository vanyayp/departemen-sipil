<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class Homepage extends Controller
{
    public function handle_berita($id)
    {
        $data = DB::table('tb_berita')->select("*")->whereRaw('id = ?', $id)->get()->first();
        $toSend['judul'] = $data->judul;
        $toSend['konten'] = $data->konten;
        $toSend['gambar'] = $data->gambar;
        $toSend['log'] = $data->log;
        return view('guest.tampil_berita', $toSend);
    }
    public function handle_kegiatan($id)
    {
        $data = DB::table('tb_kegiatan')->select("*")->whereRaw('id = ?', $id)->get()->first();
        $toSend['judul'] = $data->judul;
        $toSend['konten'] = $data->konten;
        $toSend['gambar'] = $data->gambar;
        $toSend['log'] = $data->log;
        return view('guest.tampil_kegiatan', $toSend);
    }
    public function handle_informasi($id)
    {
        $data = DB::table('tb_informasi')->select("*")->whereRaw('id = ?', $id)->get()->first();
        $toSend['judul'] = $data->judul;
        $toSend['konten'] = $data->konten;
        $toSend['log'] = $data->log;
        return view('guest.tampil_informasi', $toSend);
    }
}
