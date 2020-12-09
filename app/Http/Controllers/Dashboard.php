<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class Dashboard extends Controller
{
    public function index()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('dashboard');
        }
    }
    public function tambah_berita_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_berita_baru');
        }
    }
    public function tambah_kegiatan_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_kegiatan_baru');
        }
    }
    public function tambah_user_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_user_baru');
        }
    }
    public function tambah_informasi_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_informasi_baru');
        }
    }
    public function profil()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('profil');
        }
    }
    public function tambah_user_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field kosong, Ulangi!");
                return redirect("tambah-user-baru");
            }
        }
        $dbase = DB::table('tb_users')->select("*")->whereRaw('nim = ?', [strtoupper($req['nim'])])->first();
        if ($dbase) {
            $req->session()->flash('error_msg', "Akun sudah terdaftar!");
            return redirect("tambah-user-baru");
        } else {
            if ($req['password'] !== $req['repassword']) {
                $req->session()->flash('error_msg', "Password tidak sama, Ulangi!");
                return redirect("tambah-user-baru");
            } else {
                $dbase = DB::insert('INSERT into tb_users (nama_lengkap, nim, password) VALUES (?, ?, ?)', [$req['nama'], $req['nim'], Hash::make($req['password'])]);
                if ($dbase) {
                    $req->session()->flash('success_msg', "Berhasil dimasukan.");
                    return redirect("tambah-user-baru");
                } else {
                    $req->session()->flash('error_msg', "Ada kesalahan, Ulangi!");
                    return redirect("tambah-user-baru");
                }
            }
        }
    }
    public function tambah_kegiatan_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field kosong, Ulangi!");
                return redirect("tambah-kegiatan-baru");
            }
        }
        $file = $req->file("image");
        $name = strtolower(time() . "." . $file->getClientOriginalExtension());
        if ($file->move("uploaded_gambar", $name)) {
            $dbase = DB::insert('INSERT into tb_kegiatan (judul, konten, gambar) VALUES (?, ?, ?)', [$req['judul'], $req['konten'], 'uploaded_gambar/' . $name]);
            if ($dbase) {
                $req->session()->flash('success_msg', "Berhasil dimasukan.");
                return redirect("tambah-kegiatan-baru");
            } else {
                $req->session()->flash('error_msg', "Ada kesalahan, Uluangi!");
                return redirect("tambah-kegiatan-baru");
            }
        } else {
            $req->session()->flash('error_msg', "Gagal upload gambar, Ulangi!");
            return redirect("tambah-kegiatan-baru");
        }
    }
    public function tambah_berita_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field kosong, Ulangi!");
                return redirect("tambah-berita-baru");
            }
        }
        $file = $req->file("image");
        $name = strtolower(time() . "." . $file->getClientOriginalExtension());
        if ($file->move("uploaded_gambar_berita", $name)) {
            $dbase = DB::insert('INSERT into tb_berita (judul, konten, gambar) VALUES (?, ?, ?)', [$req['judul'], $req['konten'], 'uploaded_gambar_berita/' . $name]);
            if ($dbase) {
                $req->session()->flash('success_msg', "Berhasil dimasukan");
                return redirect("tambah-berita-baru");
            } else {
                $req->session()->flash('error_msg', "Ada kesalahan, Ulangi!");
                return redirect("tambah-berita-baru");
            }
        } else {
            $req->session()->flash('error_msg', "Gagal upload gambar, Ulangi!");
            return redirect("tambah-berita-baru");
        }
    }
    public function tambah_informasi_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field kosong, Ulangi!");
                return redirect("tambah-informasi-baru");
            }
        }
        $dbase = DB::insert('INSERT into tb_informasi (judul, konten) VALUES (?, ?)', [$req['judul'], $req['konten']]);
        if ($dbase) {
            $req->session()->flash('success_msg', "Berhasil dimasukan");
            return redirect("tambah-informasi-baru");
        } else {
            $req->session()->flash('error_msg', "Ada kesalahan, Ulangi!");
            return redirect("tambah-informasi-baru");
        }
    }
    public function edit_berita()
    {
        return view('edit_berita');
    }
    public function edit_kegiatan()
    {
        return view('edit_kegiatan');
    }
    public function edit_informasi()
    {
        return view('edit_informasi');
    }
    public function edit_user()
    {
        return view('edit_user');
    }

    public function get_data_id(Request $req)
    {
        $data = DB::table($req['tb'])->select("*")->whereRaw("id = ?", [$req['id']])->get();
        $json_data = json_encode($data);
        return $json_data;
    }
    public function hapus_kegiatan(Request $req)
    {
        $hapus = DB::table('tb_kegiatan')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-kegiatan");
        } else {
            $req->session()->flash('error_msg', "Gagal menghapus, Ulangi!");
            return redirect("edit-kegiatan");
        }
    }
    public function update_kegiatan(Request $req)
    {
        $data = DB::table('tb_kegiatan')->select("*")->whereRaw("id = ?", [$req['id']])->get()->first();
        $file = $req->file("image");
        if (!empty($file)) {
            $name = strtolower(time() . "." . $file->getClientOriginalExtension());
            if ($file->move("uploaded_gambar", $name)) {
                File::delete($data->gambar);
                $data = DB::update('UPDATE tb_kegiatan SET judul = ?, konten = ?, gambar = ? WHERE id = ?', [$req['judul'], $req['konten'], "uploaded_gambar/" . $name, $req['id']]);
                if ($data) {
                    $req->session()->flash('success_msg', "Berhasil diperbaharui");
                    return redirect("edit-kegiatan");
                } else {
                    $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                    return redirect("edit-kegiatan");
                }
            }
        } else {
            $data = DB::update('UPDATE tb_kegiatan SET judul = ?, konten = ? WHERE id = ?', [$req['judul'], $req['konten'], $req['id']]);
            if ($data) {
                $req->session()->flash('success_msg', "Berhasil diperbaharui");
                return redirect("edit-kegiatan");
            } else {
                $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                return redirect("edit-kegiatan");
            }
        }
    }
    public function hapus_berita(Request $req)
    {
        $hapus = DB::table('tb_berita')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-berita");
        } else {
            $req->session()->flash('error_msg', "Gagal menghapus, Ulangi!");
            return redirect("edit-berita");
        }
    }
    public function update_berita(Request $req)
    {
        $data = DB::table('tb_berita')->select("*")->whereRaw("id = ?", [$req['id']])->get()->first();
        $file = $req->file("image");
        if (!empty($file)) {
            $name = strtolower(time() . "." . $file->getClientOriginalExtension());
            if ($file->move("uploaded_gambar_berita", $name)) {
                File::delete($data->gambar);
                $data = DB::update('UPDATE tb_berita SET judul = ?, konten = ?, gambar = ? WHERE id = ?', [$req['judul'], $req['konten'], "uploaded_gambar_berita/" . $name, $req['id']]);
                if ($data) {
                    $req->session()->flash('success_msg', "Berhasil diperbaharui");
                    return redirect("edit-berita");
                } else {
                    $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                    return redirect("edit-berita");
                }
            }
        } else {
            $data = DB::update('UPDATE tb_berita SET judul = ?, konten = ? WHERE id = ?', [$req['judul'], $req['konten'], $req['id']]);
            if ($data) {
                $req->session()->flash('success_msg', "Berhasil diperbaharui");
                return redirect("edit-berita");
            } else {
                $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                return redirect("edit-berita");
            }
        }
    }
    public function hapus_informasi(Request $req)
    {
        $hapus = DB::table('tb_informasi')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-informasi");
        } else {
            $req->session()->flash('error_msg', "Gagal menghapus, Ulangi!");
            return redirect("edit-informasi");
        }
    }
    public function update_informasi(Request $req)
    {
        $data = DB::update('UPDATE tb_informasi SET judul = ?, konten = ? WHERE id = ?', [$req['judul'], $req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("edit-informasi");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("edit-informasi");
        }
    }
    public function hapus_user(Request $req)
    {
        $hapus = DB::table('tb_users')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-user");
        } else {
            $req->session()->flash('error_msg', "Gagal dihapus, Ulangi!");
            return redirect("edit-user");
        }
    }
    public function update_user(Request $req)
    {
        $data = DB::update('UPDATE tb_users SET nama_lengkap = ?, nim = ? WHERE id = ?', [$req['nama_lengkap'], $req['nim'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("edit-user");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("edit-user");
        }
    }
    public function logout()
    {
        session()->pull('usersession');
        return redirect('login');
    }

    public function tambah_dosen_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_dosen_baru');
        }
    }
    public function tambah_staff_baru()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('tambah_staff_baru');
        }
    }
    public function headline()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('headline');
        }
    }
    public function vmts()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('vmts');
        }
    }
    public function sejarah_singkat()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('sejarah_singkat');
        }
    }
    public function edit_dosen()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('edit_dosen');
        }
    }
    public function edit_staff()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('edit_staff');
        }
    }
    public function tambah_dosen_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field kosong, Ulangi!");
                return redirect("tambah-dosen-baru");
            }
        }
        $file = $req->file("foto");
        $name = strtolower(time() . "." . $file->getClientOriginalExtension());
        if ($file->move("uploaded_gambar_dosen", $name)) {
            $dbase = DB::insert('INSERT into tb_dosen (nama, nip,  jabatan, bidang, email, foto) VALUES (?, ?, ?, ?, ?, ?)', [$req['nama'], $req['nip'], $req['jabatan'], $req['bidang'], $req['email'], 'uploaded_gambar_dosen/' . $name]);
            if ($dbase) {
                $req->session()->flash('success_msg', "Data berhasil ditambahkan");
                return redirect("tambah-dosen-baru");
            } else {
                $req->session()->flash('error_msg', "Ada kesalahan, Ulangi!");
                return redirect("tambah-dosen-baru");
            }
        } else {
            $req->session()->flash('error_msg', "Gambar gagal dipindahkan, Ulangi!");
            return redirect("tambah-dosen-baru");
        }
    }
    public function hapus_dosen(Request $req)
    {
        $hapus = DB::table('tb_dosen')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-dosen");
        } else {
            $req->session()->flash('error_msg', "Gagal dihapus, Ulangi!");
            return redirect("edit-dosen");
        }
    }
    public function update_dosen(Request $req)
    {
        $data = DB::table('tb_dosen')->select("*")->whereRaw("id = ?", [$req['id']])->get()->first();
        $file = $req->file("foto");
        if (!empty($file)) {
            $name = strtolower(time() . "." . $file->getClientOriginalExtension());
            if ($file->move("uploaded_gambar_dosen", $name)) {
                File::delete($data->foto);
                $data = DB::update('UPDATE tb_dosen SET nip = ?, nama = ?, jabatan = ?, bidang = ?, email = ?, foto = ? WHERE id = ?', [$req['nip'], $req['nama'], $req['jabatan'], $req['bidang'], $req['email'], "uploaded_gambar_dosen/" . $name, $req['id']]);
                if ($data) {
                    $req->session()->flash('success_msg', "Berhasil diperbaharui");
                    return redirect("edit-dosen");
                } else {
                    $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                    return redirect("edit-dosen");
                }
            }
        } else {
            $data = DB::update('UPDATE tb_dosen SET nip = ?, nama = ?, jabatan = ?, bidang = ?, email = ?  WHERE id = ?', [$req['nip'], $req['nama'], $req['jabatan'], $req['bidang'], $req['email'], $req['id']]);
            if ($data) {
                $req->session()->flash('success_msg', "Berhasil diperbaharui");
                return redirect("edit-dosen");
            } else {
                $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                return redirect("edit-dosen");
            }
        }
    }
    public function tambah_staff_baru_action(Request $req)
    {
        foreach ($req->input() as $inp) {
            if (empty($inp)) {
                $req->session()->flash('error_msg', "Beberapa field Kosong, Ulangi!");
                return redirect("tambah-staff-baru");
            }
        }
        $file = $req->file("foto");
        $name = strtolower(time() . "." . $file->getClientOriginalExtension());
        if ($file->move("uploaded_gambar_staff", $name)) {
            $dbase = DB::insert('INSERT into tb_staff (nama, nip,  jabatan, email, foto) VALUES (?, ?, ?, ?, ?)', [$req['nama'], $req['nip'], $req['jabatan'], $req['email'], 'uploaded_gambar_staff/' . $name]);
            if ($dbase) {
                $req->session()->flash('success_msg', "Data berhasil ditambahkan");
                return redirect("tambah-staff-baru");
            } else {
                $req->session()->flash('error_msg', "Ada kesalahan, Ulangi!");
                return redirect("tambah-staff-baru");
            }
        } else {
            $req->session()->flash('error_msg', "Gambar gagal dipindahkan, Ulangi!");
            return redirect("tambah-staff-baru");
        }
    }
    public function hapus_staff(Request $req)
    {
        $hapus = DB::table('tb_staff')->where('id', $req['todelete'])->delete();
        if ($hapus) {
            $req->session()->flash('success_msg', "Baris berhasil dihapus");
            return redirect("edit-staff");
        } else {
            $req->session()->flash('error_msg', "Gagal dihapus, Ulangi!");
            return redirect("edit-staff");
        }
    }
    public function update_staff(Request $req)
    {
        $data = DB::table('tb_staff')->select("*")->whereRaw("id = ?", [$req['id']])->get()->first();
        $file = $req->file("foto");
        if (!empty($file)) {
            $name = strtolower(time() . "." . $file->getClientOriginalExtension());
            if ($file->move("uploaded_gambar_staff", $name)) {
                File::delete($data->foto);
                $data = DB::update('UPDATE tb_staff SET nip = ?, nama = ?, jabatan = ?, email = ?, foto = ? WHERE id = ?', [$req['nip'], $req['nama'], $req['jabatan'], $req['email'], "uploaded_gambar_staff/" . $name, $req['id']]);
                if ($data) {
                    $req->session()->flash('success_msg', "Berhasil diperbaharui");
                    return redirect("edit-staff");
                } else {
                    $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                    return redirect("edit-staff");
                }
            }
        } else {
            $data = DB::update('UPDATE tb_staff SET nip = ?, nama = ?, jabatan = ?, email = ?  WHERE id = ?', [$req['nip'], $req['nama'], $req['jabatan'], $req['email'], $req['id']]);
            if ($data) {
                $req->session()->flash('success_msg', "Berhasil diperbaharui");
                return redirect("edit-staff");
            } else {
                $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                return redirect("edit-staff");
            }
        }
    }
    public function update_headline(Request $req)
    {
        $data = DB::table('tb_headline')->select("*")->whereRaw("id = ?", [$req['id']])->get()->first();
        $file = $req->file("image");
        if (!empty($file)) {
            $name = strtolower(time() . "." . $file->getClientOriginalExtension());
            if ($file->move("uploaded_gambar_headline", $name)) {
                File::delete($data->gambar);
                $data = DB::update('UPDATE tb_headline SET judul = ?, gambar = ? WHERE id = ?', [$req['judul'], "uploaded_gambar_headline/" . $name, $req['id']]);
                if ($data) {
                    $req->session()->flash('success_msg', "Berhasil diperbaharui");
                    return redirect("headline");
                } else {
                    $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                    return redirect("headline");
                }
            }
        } else {
            $data = DB::update('UPDATE tb_headline SET judul = ?  WHERE id = ?', [$req['judul'], $req['id']]);
            if ($data) {
                $req->session()->flash('success_msg', "Berhasil diperbaharui");
                return redirect("headline");
            } else {
                $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
                return redirect("headline");
            }
        }
    }
    public function update_visi(Request $req)
    {
        $data = DB::update('UPDATE tb_visi SET konten = ? WHERE id = ?', [$req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("vmts");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("vmts");
        }
    }
    public function update_misi(Request $req)
    {
        $data = DB::update('UPDATE tb_misi SET konten = ? WHERE id = ?', [$req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("vmts");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("vmts");
        }
    }
    public function update_tujuan(Request $req)
    {
        $data = DB::update('UPDATE tb_tujuan SET konten = ? WHERE id = ?', [$req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("vmts");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("vmts");
        }
    }
    public function update_sasaran(Request $req)
    {
        $data = DB::update('UPDATE tb_sasaran SET konten = ? WHERE id = ?', [$req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("vmts");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("vmts");
        }
    }
    public function update_sejarah_singkat(Request $req)
    {
        $data = DB::update('UPDATE tb_sejarah_singkat SET konten = ? WHERE id = ?', [$req['konten'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("sejarah-singkat");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("sejarah-singkat");
        }
    }
    public function kontak()
    {
        if (!session()->has('usersession')) {
            return redirect('login');
        } else {
            return view('kontak');
        }
    }
    public function update_kontak(Request $req)
    {
        $data = DB::update('UPDATE tb_kontak SET alamat = ?, email = ? WHERE id = ?', [$req['alamat'], $req['email'], $req['id']]);
        if ($data) {
            $req->session()->flash('success_msg', "Berhasil diperbaharui");
            return redirect("kontak");
        } else {
            $req->session()->flash('error_msg', "Gagal diperbaharui, Ulangi!");
            return redirect("kontak");
        }
    }
}
