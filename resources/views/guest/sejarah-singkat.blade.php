@include('guest.includes.header')
@php
$sejarah_singkat = DB::table('tb_sejarah_singkat')->select("*")->whereRaw('id = ?', '1')->get()->first();
@endphp
<main>
        <section class="blog_area single-post-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12 posts-list">
                     <div class="single-post">
                        <div class="blog_details">
                           <h2 class="mb-3">SEJARAH SINGKAT</h2>
                           <p class="mb-3">
                           {!! $sejarah_singkat->konten !!}
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    </main>
@php
$sejarah_singkat = null;
@endphp
@include('guest.includes.footer')