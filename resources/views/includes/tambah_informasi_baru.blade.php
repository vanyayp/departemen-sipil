<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Informasi Penting</h1>
</div>
<div class="row">
    <div class="col">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Tambah Informasi Penting</h6>
            </div>
            <div class="card-body">
                <form action="/tambah-informasi-baru-action" method="POST">
                    @csrf
                    @if (session()->has('error_msg'))
                    <div class="alert alert-danger text-center my-4">{{ session('error_msg')  }}</div>
                    @elseif (session()->has('success_msg'))
                    <div class="alert alert-success text-center my-4">{{ session('success_msg')  }}</div>
                    @endif
                    <div class="form-group">
                        <input type="judul" class="form-control form-control-user" id="judul" name="judul" placeholder="Judul" />
                    </div>
                    <div class="form-group">
                        <textarea name="konten" id="konten" rows="10" class="w-100"></textarea>
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