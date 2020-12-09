<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class Login extends Controller
{
    public function index()
    {
        if (session()->has('usersession')) {
            return redirect('dashboard');
        }
        return view('login');
    }
    public function process_login(Request $req)
    {
        if (session()->has('usersession')) {
            return redirect('dashboard');
        }
        $dbase = DB::table('tb_users')->select("*")->whereRaw('nim = ?', [$req['nim']])->first();
        if ($dbase) {
            if (Hash::check($req['pass'], $dbase->password)) {
                $req->session()->put('usersession', $dbase->id . "/" . $dbase->nama_lengkap . "/" . $dbase->nim);

                return redirect('dashboard');
            } else {
                $req->session()->flash('error_msg', 'Password salah, Ulangi!');
                return redirect('login');
            }
        } else {
            $req->session()->flash('error_msg', 'NIM Belum terdaftar');
            return redirect('login');
        }
    }
}
