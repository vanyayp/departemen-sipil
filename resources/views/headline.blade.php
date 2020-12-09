@include('header')
<h1 class="h3 mb-2 text-gray-800">Edit Headline</h1>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Headline</h6>
    </div>
    <div class="card-body">
        @if (session()->has('error_msg'))
        <div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
        @elseif (session()->has('success_msg'))
        <div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
        @endif
        @php
        $tb_headline = DB::table('tb_headline')->select("*")->get()->first();
        @endphp
        <form action="/update_headline" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" value="1" />
            <div class="form-group">
                <label class="col-form-label">Judul :</label>
                <input type="text" class="form-control" name="judul" value="{{ $tb_headline->judul }}">
            </div>
            <div class="form-group">
                <label class="col-form-label">Gambar :</label><br />
                <img id="gambar-modal" style="max-width:150px;width:100%;" src="{{ $tb_headline->gambar }}" /><br /><br />
            </div>
            <div class="form-group">
                <label class="col-form-label">Ganti Gambar :</label><br />
                <input type="file" name="image" id="image" oninput="preview()" />
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
    <script>
        function preview() {
            var oFReader = new FileReader();
            oFReader.readAsDataURL(document.getElementById("image").files[0]);
            oFReader.onload = function(oFREvent) {
                var img = document.getElementById("gambar-modal");
                img.src = oFREvent.target.result;
            }
        }
    </script>
    @include('footer')