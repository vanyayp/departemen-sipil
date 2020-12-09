@include('guest.includes.header')
@php
$staff = DB::table('tb_staff')->select("*")->get();
$i = 0;
@endphp
<main class="mb-5">
        <section class="blog_area single-post-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12 posts-list">
                     <div class="single-post">
                        <div class="blog_details">
                            <table class="table table-striped">
                            <thead>
                                    <tr>
                                        <th scope="col" class="align-middle text-center">No</th>
                                        <th class="align-middle text-center">Foto</th>
                                        <th class="align-middle text-center">NIP</th>
                                        <th class="align-middle text-center">Nama Lengkap</th>
                                        <th class="align-middle text-center">Jabatan</th>
                                        <th class="align-middle text-center">E-mail</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($staff as $d)
                                    @php
                                    $i++;
                                    @endphp
                                    <tr>
                                        <th scope="row" class="align-middle text-center">{{ $i }}</th>
                                        <td class="align-middle text-center"><img src="{{ asset($d->foto) }}" style="max-width: 80px;width: 100%" /></td>
                                        <td class="align-middle text-center">{{ $d->nip }}</td>
                                        <td class="align-middle text-center">{{ $d->nama }}</td>
                                        <td class="align-middle text-center">{{ $d->jabatan }}</td>
                                        <td class="align-middle text-center">{{ $d->email }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                              </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    </main>


@php
$staff = null;
@endphp
@include('guest.includes.footer')