<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Users</h1>
</div>
<div class="row">
    <div class="col">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Tambah User</h6>
            </div>
            <div class="card-body">
                <form action="tambah-user-baru-action" method="POST">
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
                        <input type="text" class="form-control form-control-user" id="nim" name="nim" placeholder="NIM" />
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control form-control-user" id="password" placeholder="Password" name="password" />
                    </div>
                    <div class="form-group">
                        <input type="password" name="repassword" class="form-control form-control-user" id="repassword" placeholder="Re-enter Password" />
                    </div>
                    <br /><br />
                    <button type="submit" class="btn btn-success btn-icon-split float-right">
                        <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                        </span>
                        <span class="text">Tambah</span>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>