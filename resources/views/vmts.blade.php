@include('header')
<h1 class="h3 mb-2 text-gray-800">Edit VMTS</h1>
@if (session()->has('error_msg'))
<div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
@elseif (session()->has('success_msg'))
<div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
@endif
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Visi</h6>
    </div>
    <div class="card-body">
        @php
        $tb_visi = DB::table('tb_visi')->select("*")->get()->first();
        @endphp
        <form action="/update_visi" method="POST">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Konten :</label>
                <textarea type="text" class="form-control" name="konten">{{ $tb_visi->konten }}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Misi</h6>
    </div>
    <div class="card-body">
        @php
        $tb_misi = DB::table('tb_misi')->select("*")->get()->first();
        @endphp
        <form action="/update_misi" method="POST">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Konten :</label>
                <textarea type="text" class="form-control" name="konten">{{ $tb_misi->konten }}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Tujuan</h6>
    </div>
    <div class="card-body">
        @php
        $tb_tujuan = DB::table('tb_tujuan')->select("*")->get()->first();
        @endphp
        <form action="/update_tujuan" method="POST">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Konten :</label>
                <textarea type="text" class="form-control" name="konten">{{ $tb_tujuan->konten }}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Sasaran</h6>
    </div>
    <div class="card-body">
        @php
        $tb_sasaran = DB::table('tb_sasaran')->select("*")->get()->first();
        @endphp
        <form action="/update_sasaran" method="POST">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Konten :</label>
                <textarea type="text" class="form-control" name="konten">{{ $tb_sasaran->konten }}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>
@include('footer')