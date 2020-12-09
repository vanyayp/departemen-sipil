@include('guest.includes.header')
<main>
        <section class="blog_area single-post-area">
            <div class="container">
               <div class="row">
                  <div class="col-lg-12 posts-list">
                     <div class="single-post">
                     <div class="feature-img">
                     <img class="img-fluid" src="{{ asset($gambar) }}">
                  </div>
                        <div class="blog_details">
                            <small>{!! $log !!}</small>
                           <h2 class="mb-3">{{ $judul }}</h2>
                           <p class="mb-3">
                           {!! $konten !!}
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
    </main>
@include('guest.includes.footer')