<h1 class="h3 mb-2 text-gray-800">Edit Dosen</h1>
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edit Dosen</h6>
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
                        <th class="align-middle text-center">Foto</th>
                        <th class="align-middle text-center">NIP</th>
                        <th class="align-middle text-center">Nama Lengkap</th>
                        <th class="align-middle text-center">Jabatan</th>
                        <th class="align-middle text-center">Bidang Keahlian</th>
                        <th class="align-middle text-center">E-mail</th>
                        <th class="align-middle text-center">log</th>
                        <th class="align-middle text-center">Opsi</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                    $tb_dosen = DB::table('tb_dosen')->select("*")->get();
                    @endphp
                    @foreach($tb_dosen as $dos)
                    <tr>
                        <td class="align-middle text-center"><img src="{{ $dos->foto }}" / style="max-width: 40px;width:100%;"></td>
                        <td class="align-middle text-center">{{ $dos->nip }}</td>
                        <td class="align-middle text-center">{{ $dos->nama }}</td>
                        <td class="align-middle text-center">{{ $dos->jabatan }}</td>
                        <td class="align-middle text-center">{{ $dos->bidang }}</td>
                        <td class="align-middle text-center">{{ $dos->email }}</td>
                        <td class="align-middle text-center">{{ $dos->log }}</td>
                        <td class="align-middle text-center">
                            <button class="btn btn-warning" id=" {{ $dos->id }}" onclick="loadDoc(this)" data-toggle="modal" data-target=".bd-example-modal-lg">Edit</button>
                            <form action="/hapus_dosen" method="POST" onsubmit="return konfir()">
                                @csrf
                                <input type="hidden" value="{{ $dos->id }}" name="todelete" />
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
                <h5 class="modal-title" id="exampleModalLabel">Edit Dosen</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="/update_dosen" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" id="id-modal" name="id" />
                    <div class="form-group">
                        <label for="nip" class="col-form-label">NIP :</label>
                        <input type="text" class="form-control" id="nip-modal" name="nip">
                    </div>
                    <div class="form-group">
                        <label for="nama" class="col-form-label">Nama Lengkap :</label>
                        <input type="text" class="form-control" id="nama-modal" name="nama">
                    </div>
                    <div class="form-group">
                        <label for="jabatan" class="col-form-label">Jabatan :</label>
                        <input type="text" class="form-control" id="jabatan-modal" name="jabatan">
                    </div>
                    <div class="form-group">
                        <label for="bidang" class="col-form-label">Bidang Keahlian :</label>
                        <input type="text" class="form-control" id="bidang-modal" name="bidang">
                    </div>
                    <div class="form-group">
                        <label for="bidang" class="col-form-label">E-mail :</label>
                        <input type="email" class="form-control" id="email-modal" name="email">
                    </div>

                    <div class="form-group">
                        <label for="foto-modal" class="col-form-label">Foto :</label><br />
                        <img id="foto-modal" style="max-width:150px;width:100%;" /><br /><br />
                        <input type="file" name="foto" id="foto" oninput="preview()" />
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
                var nip = document.querySelector("#nip-modal");
                var nama = document.querySelector("#nama-modal");
                var jabatan = document.querySelector("#jabatan-modal");
                var bidang = document.querySelector("#bidang-modal");
                var email = document.querySelector("#email-modal");
                var id = document.querySelector("#id-modal");
                var foto = document.querySelector("#foto-modal");

                var obj = JSON.parse(this.responseText);
                obj = obj[0];

                nip.value = obj.nip;
                nama.value = obj.nama;
                jabatan.value = obj.jabatan;
                bidang.value = obj.bidang;
                email.value = obj.email;
                id.value = obj.id;
                foto.src = obj.foto;
            }
        };
        xhttp.open("POST", "/get_data_id", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send(`_token=${token}&id=${data}&tb=tb_dosen`);
    }

    function preview() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("foto").files[0]);
        oFReader.onload = function(oFREvent) {
            var img = document.getElementById("foto-modal");
            img.src = oFREvent.target.result;
        }
    }
</script>