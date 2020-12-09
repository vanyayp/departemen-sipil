@include('header')
<h1 class="h3 mb-2 text-gray-800">Edit Sejarah Singkat</h1>
@if (session()->has('error_msg'))
<div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
@elseif (session()->has('success_msg'))
<div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
@endif
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Sejarah Singkat</h6>
    </div>
    <div class="card-body">
        @php
        $tb_sejarah_singkat = DB::table('tb_sejarah_singkat')->select("*")->get()->first();
        @endphp
        <form action="/update_sejarah_singkat" method="POST">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Konten :</label>
                <textarea type="text" class="form-control" name="konten">{{ $tb_sejarah_singkat->konten }}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>
@include('footer')