<?php

namespace App\Http\Controllers\Backend;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\testimonial;
use Auth;
use Session;


class TestimonialController extends Controller
{
    //view function is here......................................
    public function index()
    {
        $data['testimonials']=Testimonial::all();
        return view('backend.testimonial.testimonial-view',$data);
    }

      //Create function is here......................................
      public function create()
      {
          return view('backend.testimonial.testimonial-create');
      }

    //Store function is here..........................
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'client_name' => 'required',
            'client_profession' => 'required',
            'client_abbreviation' => 'required',
            'image' => 'required',
        ]);
       $userData=new Testimonial();
       $userData->client_name=$request->client_name;
       $userData->client_profession=$request->client_profession;
       $userData->client_abbreviation=$request->client_abbreviation;
        if($request->hasFile('image')){
            $file=$request->file('image');
            $extension=$file->getClientOriginalExtension();
            $newImage=time().'.'.$extension;
            $file->move('public/images/testimonial/',$newImage);
            $userData->image=$newImage;
        }else{
            return $request;
            $userData->image='';
        }
       $userData->save();
       Session::flash('success','testimonial Created successfully');
       return redirect()->route('about.testimonial.view');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
    //edit function is here.......................
    public function edit($id)
    {
        $editData=Testimonial::find($id);
        return view('backend.testimonial.testimonial-create',compact('editData'));
    }

    //update function is here.......................
    public function update(Request $request, $id)
    {
        $updateData=Testimonial::find($id);
        $updateData->client_name=$request->client_name;
        $updateData->client_profession=$request->client_profession;
        $updateData->client_abbreviation=$request->client_abbreviation;
        $updateData->image=$request->image;
        if($request->hasFile('image')){
            $file=$request->file('image');
            $extension=$file->getClientOriginalExtension();
            $myImage=time().'.'.$extension;
            $file->move('public/images/testimonial/',$myImage);
            $updateData->image=$myImage;
        }
        $updateData->save();
        Session::flash('success','testimonial Updated successfully');
       return redirect()->back();
    }

    //delete function is here...........................
    public function destroy(Request $request,$id)
    {
        $deleteData=testimonial::find($request->id);
        if(file_exists('public/images/testimonial/'.$deleteData->image)AND ! empty($deleteData->image))
        {
         unlink('public/images/testimonial/'.$deleteData->image);
        }
        $deleteData->delete();
 
       return redirect()->route('about.testimonial.view');

    }
}
