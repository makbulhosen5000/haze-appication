@extends('frontend.layouts.master')
@section('content')


    <form action="{{ route('one.to.one.call.store') }}" enctype="multipart/form-data" class="my-5"
        style="margin-left: 300px; margin-right: 300px">
        @csrf
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="row mb-4">
            <div class="col">
                <label for="">Channel Name</label>
                <input type="text" class="form-control" placeholder="Channel Name" name="channel_name" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">Channel link</label>
                <input type="text" class="form-control" placeholder="Channel link" name="channel_link" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">Are you a gaming channel?</label>
                <input type="text" class="form-control" placeholder="Yes/No" name="channel_gaming" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">Describe What Your Channel Is About</label>
                <input type="text" class="form-control" placeholder="Shortly Describe What Your Channel"
                    name="channel_describe" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">Tell Us What You're Struggling With On Youtube And What You're frustrated
                    about.</label>
                <input type="text" class="form-control" placeholder="Answer" name="channel_Struggling" required >
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">Your Mail</label>
                <input type="text" class="form-control" placeholder="Your Email" name="email" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('public/images/haze/h1.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image1" id="file"
                    onchange="showImage(this,'image')" value='' required >
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h2.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image2" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h3.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image3" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h4.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image4" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h5.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image5" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h6.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image6" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h7.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image7" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('public/images/haze/h8.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image8" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h9.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image9" id="file"
                    onchange="showImage(this,'image')" value='' requered>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h10.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image10" id="file"
                    onchange="showImage(this,'image')" value='' required>

            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>

                <img src="{{ url('public/images/haze/h11.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="image11" id="file"
                    onchange="showImage(this,'image')" value='' required>

            </div>
        </div>


        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


@endsection
