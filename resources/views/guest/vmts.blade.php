@include('guest.includes.header')
@php
$visi = DB::table('tb_visi')->select("*")->whereRaw('id = ?', '1')->get()->first();
$misi = DB::table('tb_misi')->select("*")->whereRaw('id = ?', '1')->get()->first();
$tujuan = DB::table('tb_tujuan')->select("*")->whereRaw('id = ?', '1')->get()->first();
$sasaran = DB::table('tb_sasaran')->select("*")->whereRaw('id = ?', '1')->get()->first();
@endphp
<main>
        <section class="blog_area single-post-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12 posts-list">
                     <div class="single-post">
                        <div class="blog_details">
                           <h2 class="mb-3">VISI</h2>
                           <p class="mb-3">
                           {!! $visi->konten !!}
                           </p>
                           <h2 class="mb-3">MISI</h2>
                           <p class="mb-3">
                           {!! $misi->konten !!}
                           </p>
                           <h2 class="mb-3">Tujuan</h2>
                           <p class="mb-3">
                           {!! $tujuan->konten !!}
                           </p>
                           <h2 class="mb-3">Sasaran</h2>
                           <p class="mb-3">
                           {!! $sasaran->konten !!}
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    </main>
@php
$visi = $misi = $tujuan = $sasaran = null;
@endphp
@include('guest.includes.footer')