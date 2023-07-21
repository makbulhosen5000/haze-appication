@extends('backend.layouts.admin-master')
@section('content')

<!-- Content Wrapper. Contains page content start -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header bg-light">
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
                    <h5 class="display-5">User Email List</h5>
                </div>
            </div>
        </div>
    </div>
            <table id="example2" class="table table-bordered table-hover text-center">
                {{-- table start --}}
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>channel_name</th>
                        <th>channel_link</th>
                        <th>channel_gaming</th>
                        <th>channel_describe</th>
                        <th>channel_Struggling</th>
                        <th>Email</th>
                        <th>Image1</th>
                        <th>Image2</th>
                        <th>Image3</th>
                        <th>Image4</th>
                        <th>Image5</th>
                        <th>Image6</th>
                        <th>Image7</th>
                        <th>Image8</th>
                        <th>Image9</th>
                        <th>Image10</th>
                        <th>Image11</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($subscriberChannel as $key => $channel)
                    <tr>
                        <td>{{$key++}}</td>
                        <td>{{$channel->channel_name}}</td>
                        <td>{{$channel->channel_link}}</td>
                        <td>{{$channel->channel_gaming}}</td>
                        <td>{{$channel->channel_describe}}</td>
                        <td>{{$channel->channel_Struggling}}</td>
                        <td>{{$channel->email}}</td>

                         <td>
                          <img src="{{ asset("storage/".$channel->image1) }}" width="100px";height='100px' alt="">
                        </td> 

                         <td>
                          <img src="{{ !empty($channel->image2) ? url('storage/images/call/'.$channel->image2) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td>  
                         <td>
                          <img src="{{ !empty($channel->image3) ? url('public/images/call/'.$channel->image2) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td>  
                         <td>
                          <img src="{{ !empty($channel->image4) ? url('public/images/call/'.$channel->image4) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td>                      
                         <td>
                          <img src="{{ !empty($channel->image5) ? url('public/images/call/'.$channel->image5) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image6) ? url('public/images/call/'.$channel->image6) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image7) ? url('public/images/call/'.$channel->image7) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image8) ? url('public/images/call/'.$channel->image8) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image9) ? url('public/images/call/'.$channel->image9) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image10) ? url('public/images/call/'.$channel->image10) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 
                         <td>
                          <img src="{{ !empty($channel->image11) ? url('public/images/call/'.$channel->image11) : url('public/images/not_found_img.png') }}"id="image" width="100px";height='100px'>
                        </td> 

                        <td>
                            <a href="{{route('subscribers.channel.destroy',$channel->id)}} " id="delete" class="btn btn-danger" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            {{-- table end --}}



</div>
{{-- card end --}}

  </div>
 <!-- Content Wrapper. Contains page content end-->
@endsection