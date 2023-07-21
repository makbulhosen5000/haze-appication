@extends('frontend.layouts.master')
@section('content')


    <form action="{{ route('one.to.one.call.store') }}" method="POST" enctype="multipart/form-data" class="my-5"
        style="margin-left: 300px; margin-right: 300px">
        @csrf
        @if (Session::get('success'))
          <div class="alert alert-danger alert-dismissible">
              <button type="button" class="close"  data-dismiss="alert">&times;</button>
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
                <label for="">Your EMail</label>
                <input type="text" class="form-control" placeholder="Your Email" name="email" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ asset('images/haze/h1.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h2.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h3.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
        
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h4.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h5.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h6.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h7.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h8.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h9.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h10.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
         <div class="row mb-4">
            <div class="col">
                <label for="">You Must Provide Us With These Screenshots Of Your Own Channel. (Overview)*</label>
                <img src="{{ url('images/haze/h11.png') }}" id="image" style="width:495px;height:300px">
                <input id="my-input" class="form-control" type="file" name="images[]" required >
            </div>
        </div>
       

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>


@endsection
