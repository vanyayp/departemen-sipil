@include('guest.includes.header')
@php
$kontak = DB::table('tb_kontak')->select("*")->whereRaw('id = ?', '1')->get()->first();
@endphp

<main>
        <section class="blog_area single-post-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12 posts-list">
                     <div class="single-post">
                        <div class="blog_details">
                           <h2 class="mb-3">Kontak</h2>
                            <p>Alamat : &nbsp; {{ $kontak->alamat }}</p>
                            <p>E-mail : &nbsp; {{ $kontak->email }}</p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    </main>


@php
$kontak = null;
@endphp
@include('guest.includes.footer')