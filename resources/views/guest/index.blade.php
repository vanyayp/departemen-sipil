@include('guest.includes.header')
<main>
    <div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Trending Top -->
                        <div class="trending-top mb-30">
                            <div class="trend-top-img">
                                @php
                                $ban = DB::table('tb_headline')->select("*")->whereRaw('id = ?', '1')->get()->first();
                                @endphp
                                <img src="{{ $ban->gambar }}" alt="">
                                <div class="trend-top-cap">
                                    <h2>
                                        <a href="#">
                                            {{ $ban->judul }}
                                            @php
                                            $ban = null;
                                            @endphp
                                        </a>
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Riht content -->
                    <div class="col-lg-4">
                        <div class="mb-4">
                            <h3>INFORMASI PENTING</h3>
                        </div>

                        @php
                        $ban = DB::table('tb_informasi')->select("*")->orderByDesc('log')->limit(3)->get();
                        @endphp
                        @foreach($ban as $con)

                        <div class="trand-right-single d-flex">
                            <div class="trand-right-cap">
                                <span class="color1">Diposting :&nbsp;{{$con->log }}</span>
                                <h4><a href="/informasi/{{ $con->id }}">{{ $con->judul }}</a></h4>
                            </div>
                        </div>
                        @endforeach
                        @php
                        $ban = null;
                        @endphp
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="whats-news-area pt-50 pb-20">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row d-flex justify-content-between">
                        <div class="col-lg-12 col-md-12">
                            <div class="section-tittle mb-30">
                                <h3>Berita Terbaru</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="whats-news-caption">
                                        <div class="row">

                                            @php
                                            $ban = DB::table('tb_berita')->select("*")->orderByDesc('log')->limit(8)->get();
                                            @endphp
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
                            <!-- End Nav Card -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
@include('guest.includes.footer')