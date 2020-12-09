@include('guest.includes.header')
@php
$ban = DB::table('tb_berita')->select("*")->orderByDesc('log')->get();
@endphp
<main>
    <section class="whats-news-area pt-50 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row d-flex justify-content-between">
                        <div class="col-lg-12 col-md-12">
                            <div class="section-tittle mb-30">
                                <h3>Berita</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Nav Card -->
                            <div class="tab-content" id="nav-tabContent">
                                <!-- card one -->
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="whats-news-caption">
                                        <div class="row">
                                            @foreach($ban as $con)
                                            <div class="col-lg-3 col-md-3 mb-5">
                                                <div style="max-height: 120px;height: auto;overflow: hidden;">
                                                    <img src="{{ asset($con->gambar) }}" class="w-100" />
                                                </div>
                                                <div class="w-100">
                                                    <small>Diposting :&nbsp;{{$con->log }}</small><br />
                                                    <a href="/berita/{{ $con->id }}" class="text-dark w-100 text-justify">{{ $con->judul }}</a>
                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>


@php
$ban = null;
@endphp
@include('guest.includes.footer')