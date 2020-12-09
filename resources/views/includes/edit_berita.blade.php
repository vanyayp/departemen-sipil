<h1 class="h3 mb-2 text-gray-800">Edit Berita Terbaru</h1>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edit Berita Terbaru</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            @if (session()->has('error_msg'))
            <div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
            @elseif (session()->has('success_msg'))
            <div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
            @endif
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Judul</th>
                        <th>Konten</th>
                        <th>Gambar</th>
                        <th>Log</th>
                        <th>Opsi</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                    $tb_berita = DB::table('tb_berita')->select("*")->get();
                    @endphp
                    @foreach($tb_berita as $ber)
                    <tr>
                        <td class="align-middle text-center">{{ $ber->id }}</td>
                        <td class="align-middle text-center">{{ $ber->judul }}</td>
                        <td class="align-middle text-center">{!! substr($ber->konten, 0, 250) !!}...</td>
                        <td class="text-center align-middle"><img src="{{ asset($ber->gambar) }}" style="max-width: 40px" /></td>
                        <td class="align-middle text-center">{{ $ber->log }}</td>
                        <td class="align-middle text-center">
                            <button class="btn btn-warning" id=" {{ $ber->id }}" onclick="loadDoc(this)" data-toggle="modal" data-target=".bd-example-modal-lg">Edit</button>
                            <form action="/hapus_berita" method="POST" onsubmit="return konfir()">
                                @csrf
                                <input type="hidden" value="{{ $ber->id }}" name="todelete" />
                                <button class="btn btn-danger" type="submit">Hapus</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Berita Terbaru</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/update_berita" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" id="id-modal" name="id" />
                    <div class="form-group">
                        <label for="judul-modal" class="col-form-label">Judul :</label>
                        <input type="text" class="form-control" id="judul-modal" name="judul">
                    </div>
                    <div class="form-group">
                        <label for="konten-modal" class="col-form-label">Konten :</label>
                        <textarea class="form-control" id="konten-modal" name="konten"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="gambar-modal" class="col-form-label">Gambar :</label><br />
                        <img id="gambar-modal" style="max-width:150px;width:100%;" /><br /><br />
                        <input type="file" name="image" id="image" oninput="preview()" />
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function konfir(e) {
        var r = confirm("Apakah anda yakin?");
        if (r == true) {
            return true;
        } else {
            return false;
        }
    }

    function loadDoc(e) {
        var data = e.id;
        var token = "{{ csrf_token() }}";
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var judul = document.querySelector("#judul-modal");
                var gambar = document.querySelector("#gambar-modal");
                var id = document.querySelector("#id-modal");
                var obj = JSON.parse(this.responseText);
                obj = obj[0];
                judul.value = obj.judul;
                gambar.src = obj.gambar;
                id.value = obj.id;
                tinymce.get("konten-modal").setContent(obj.konten);
            }
        };
        xhttp.open("POST", "/get_data_id", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(`_token=${token}&id=${data}&tb=tb_berita`);
    }

    function preview() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("image").files[0]);
        oFReader.onload = function(oFREvent) {
            var img = document.getElementById("gambar-modal");
            img.src = oFREvent.target.result;
        }
    }
</script>