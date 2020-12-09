<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dosen</h1>
</div>
<div class="row">
    <div class="col">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Tambah Dosen</h6>
            </div>
            <div class="card-body">
                <form action="/tambah_dosen_baru_action" method="POST" enctype="multipart/form-data">
                    @csrf
                    @if (session()->has('error_msg'))
                    <div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
                    @elseif (session()->has('success_msg'))
                    <div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
                    @endif
                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="nama" name="nama" placeholder="Nama Lengkap" />
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="nip" name="nip" placeholder="NIP" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="jabatan" id="jabatan" class="form-control form-control-user" placeholder="Jabatan" />
                    </div>
                    <div class="form-group">
                        <input type="text" name="bidang" id="bidang" class="form-control form-control-user" placeholder="Bidang Keahlian" />
                    </div>
                    <div class="form-group">
                        <input type="email" name="email" id="email" class="form-control form-control-user" placeholder="E-mail" />
                    </div>
                    <div class="form-group">
                        Pilih Foto : <br /><input type="file" name="foto" />
                    </div><br /><br />
                    <button type="submit" class="btn btn-success btn-icon-split float-right">
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <span class="text">Simpan</span>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>