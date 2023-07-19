
@extends('frontend.layouts.master')
@section('content')

    <main class="custom" id="main-content" role="main">
        <a id="cst-v2-section-MUkFEPvI9" style="opacity: 0; width: 0 !important; display: block;"></a>
        <section
            class="checklist section-height__medium



  section__column-layout__two-column



  section__heading-alignment--left
 checklist___ed32a"
            data-preview-item="checklist" data-section-uid="MUkFEPvI9">
            <div class="checklist__container checklist__container___ed32a">
                <div class="checklist__wrapper">

                    <header class="section__headings section__headings___ed32a">

                        <h2 class="section__heading">Haze Agency</h2>


                        <p class="section__subheading">This is Haze Agency, Where we manage your Youtube channels for you.
                            We offer Thumbnails &amp; Titles Strategist, Video Editors, Script Writers, Voiceover Artists
                            &amp; Youtube Strategies who'll guide your Youtube channel to extreme heights.</p>

                    </header>



                    <article class="section__content section__content___ed32a">
                        <ul class="checklist__list section__body">

                            <li class="checklist__list-item">
                                <i class="fa fa-signal" aria-hidden="true"></i>
                                <p>Youtube Strategist, We have experts who'll guide your Youtube channel to blow up. A
                                    strategist's work is the most important as Youtube without a plan is doomed for failure,
                                    We'll look over your channel making sure their getting as much views &amp; engagement
                                    possible and most importantly building a strong Community.</p>
                            </li>

                            <li class="checklist__list-item">
                                <i class="fa fa-youtube-play" aria-hidden="true"></i>
                                <p>Video editors, We here at haze have excellent video editors who have experience editing
                                    Youtube videos &amp; how a video must get maximum retention possible. We'll edit videos
                                    that we see fit best with your Youtube Channel.</p>
                            </li>

                            <li class="checklist__list-item">
                                <i class="fa fa-photo" aria-hidden="true"></i>
                                <p>Thumbnails &amp; Titles, Thumbnails &amp; Titles are single handedly the most important
                                    thing a Youtuber needs to master in order to succeed in the race, even if your videos
                                    are poorly made if you get people to click your video, that video is a winning video.
                                    But Thumbnails &amp; Titles are mostly made by our Youtube professionals.</p>
                            </li>

                            <li class="checklist__list-item">
                                <i class="fa fa-microphone" aria-hidden="true"></i>
                                <p>Voiceover Artists, We here at haze have amazing voiceover artists who deliver top quality
                                    of voiceovers, Sound quality is really important for your Youtube videos to do well.</p>
                            </li>

                            <li class="checklist__list-item">
                                <i class="fa fa-file-text-o" aria-hidden="true"></i>
                                <p>Script Writers, Video scripts are one of the most important elements for a video to get
                                    maximum retention, If hooks or interest isn't created </p>
                            </li>

                        </ul>
                    </article>

                </div>
            </div>
        </section>




        <a id="cst-v2-section-mwkAE3-p6" style="opacity: 0; width: 0 !important; display: block;"></a>
        <section
            class="
    description section-height__medium
    


  section__column-layout__two-column


    
  section__heading-alignment--left

   description___a1627"
            data-preview-item="description" data-section-uid="mwkAE3-p6">
            <div class="description__container">
                <article class="description__wrapper">

                    <header class="section__headings section__headings___a1627">

                        <h2 class="section__heading">Buy now</h2>


                        <p class="section__subheading">Contact us over on Discord Haze#1639</p>

                    </header>


                    <div class="section__content section__content___a1627">
                        <div class="section__body">
                            *Note: If you're looking for just 1-2 services please contact us through Discord to purchase the
                            services and to make things flow smoother. If you're looking to hire every listed services then
                            please contact us below.
                        </div>

                    </div>
                </article>
            </div>
        </section>




        <a id="cst-v2-section-G5dAnYVgW" style="opacity: 0; width: 0 !important; display: block;"></a>
        <section class="lead-capture section__content-alignment--left section-height__medium"
            data-preview-item="lead_capture" data-section-uid="G5dAnYVgW">

            <div class="lead-capture__container">
                <div class="lead-capture__wrapper">
                    <div class="section__content">

                        <header class="section__headings">

                            <h2 class="section__heading">Hire us now.</h2>


                            <p class="section__subheading">If you're looking to hire everything listed in Hazency then drop
                                your email below. As every Youtube channel is different so drop your email so that we can
                                contact you immediately.</p>

                        </header>



                        <form action="{{ route('store.subscribers.email') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @if (Session::get('success'))
                                <div class="alert alert-danger alert-dismissible">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong>{{ Session::get('success') }}</strong>
                                </div>
                            @endif
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            <div class="input-group input-group-lg">
                                <span class="input-group-text">Email</span>
                                <input type="email" name="email" class="form-control" aria-label="Sizing example input"
                                    placeholder="Enter Your Email" aria-describedby="inputGroup-sizing-lg" required>
                            </div>
                            <input type="submit" class="btn btn-success p-3 mt-3">
                        </form>
    </main>
@endsection
 {{-- put it bellow in master page AND script link and toastr.success massage put together --}}
