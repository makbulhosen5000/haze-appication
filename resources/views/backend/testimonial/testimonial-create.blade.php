@extends('backend.layouts.admin-master')
@section('content')

<!-- Content Wrapper. Contains page content start -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header bg-muted">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#" class="text-dark" >Home</a></li>
              <li class="breadcrumb-item active text-dark">User</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

<div class="card">
    <div class="head bg-muted">
        <div class="card-body ">
            <div class="row">
            <div class="col-md-12  d-flex justify-content-between align-items-center">
                  @if(isset($editData))
                  <h5 class="display-5">Edit testimonial</h5>
                    @else
                    <h5 class="display-5">Create testimonial</h5>
                  @endif
                  <a href="{{route('about.testimonial.view')}}" class="btn btn-warning text-dark"> <i class="fa fa-list"></i> testimonials List</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 offset-3 pt-3">
        <form action="{{(@$editData)?route('about.testimonial.update',$editData->id):route('about.testimonial.store')}} " method="POST" enctype="multipart/form-data">
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
                <div class="form-group">
                    <label for="my-input">Client Name</label>
                    <input id="my-input" class="form-control" type="text" name="client_name" placeholder="Enter Your Client Name" value="{{@$editData->client_name}}" required>
                    <font style="color:red">{{($errors->has('client_name'))?($errors->first('client_name')):''}} </font>
                </div>
                <div class="form-group">
                  <label for="my-input">Client Profession</label>
                  <input id="my-input" class="form-control" type="text" name="client_profession" placeholder="Enter Your Client Profession" value="{{@$editData->client_profession}}" required>
                  <font style="color:red">{{($errors->has('client_profession'))?($errors->first('client_profession')):''}} </font>
              </div>
                <div class="form-group">
                    <label for="my-input">Client Abbreviation</label>
                    <textarea type="text" id="" cols="54" rows="10" name="client_abbreviation">{{ @$editData->client_abbreviation }}</textarea>
                   
                    <font style="color:red">{{($errors->has('client_abbreviation'))?($errors->first('client_abbreviation')):''}} </font>
                </div>
                <div class="form-group">
                    <label for="my-input">Image</label>
                  <img src="{{(!empty($editData->image))?url('public/images/testimonials_images/'.$editData->image):url('public/images/not_found_img.png')}}" id="image" style="width:430px;height:200px">
                  <input id="my-input" class="form-control" type="file" name="image" id="file" onchange="showImage(this,'image')" value=''>
                </div>
                <div class="form-group">
                <button type="submit" id="button" class="btn btn-success">{{(@$editData)?"Update":"Submit"}} </button>
                </div>
          </form>
        </div>
    </div>


</div>
{{-- card end --}}

  </div>
 <!-- Content Wrapper. Contains page content end-->
@endsection
