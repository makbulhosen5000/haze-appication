<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;
use App\Models\Logo;
use App\Models\NewsLetterSubscriber;
use App\Models\OneToOneCall;
use Session;



class FrontendController extends Controller
{
    public function index(){
        $data['logo'] = Logo::first();
        $data['contact'] = Contact::first();
        return view('frontend.layouts.home',$data);
    }

    public function HazeAgency()
    {
        return view('frontend.pages.haze-agency');
    }
    
    //__ one to one call __ //
    public function OneToOneCall(){
        $allData = OneToOneCall::all();
        return view('frontend.pages.one-to-one-call',compact('allData'));
    }
      //__ one to one call store __ //
    public function OneToOneCallStore(Request $request)
    {
        $validatedData = $request->validate([
            'channel_name' => 'required',
            'channel_link' => 'required',
            'channel_gaming' => 'required',
            'channel_describe' => 'required',
            'channel_Struggling' => 'required',
            'email' => 'required',
            'images' => 'required|array'

        ]);
        $storeData = new OneToOneCall();
        $storeData->channel_name = $request->channel_name;
        $storeData->channel_link = $request->channel_link;
        $storeData->channel_gaming = $request->channel_gaming;
        $storeData->channel_describe = $request->channel_describe;
        $storeData->channel_Struggling = $request->channel_Struggling;
        $storeData->email = $request->email;
        $images = [];
        foreach ($request->images as $image) {
              $ext = $image->extension();
              $fileName = $image->getClientOriginalName(). ".".$ext;
              $newImage = $image->storeAs("images/",  $fileName, "public" );
        $images[] = $newImage;
        }
        $storeData->image1 = $images[0];
        $storeData->image2 = $images[1];
        $storeData->image3 = $images[2];
        $storeData->image4 = $images[3];
        $storeData->image5 = $images[4];
        $storeData->image6 = $images[5];
        $storeData->image7 = $images[6];
        $storeData->image8 = $images[7];
        $storeData->image9 = $images[8];
        $storeData->image10 = $images[9];
        $storeData->image11 = $images[10];
        $storeData->save();
        Session::flash('success', 'Subscriber Data Sent successfully');
        return redirect()->back();
    }
    public function addSubscriber(Request $request)
    {
        $request->validate([
            'email' => 'required',
        ]);
        $userData = new NewsLetterSubscriber();
        $userData->email = $request->email;
        $userData->save();
        Session::flash('success', 'Subscriber Email Send successfully');
        return redirect()->back();
    }

    //__ SubscriberChannelView __//
    public function SubscriberChannelView()
    {
        $channel['subscriberChannel'] = OneToOneCall::orderBy('id', 'desc')->get();
        return view('frontend.email.subscriber-channel-view', $channel);
    }
    //__ Subscriber EmailView__ //
    public function SubscriberIndex()
    {
       $subscriber['subscriberEmail'] = NewsLetterSubscriber::orderBy('id', 'desc')->get();
       return view('frontend.email.subscriber-email-view', $subscriber);
    }

    //__ Subscriber Channel Destroy function __ //
    public function SubscriberChannelDestroy(Request $request,$id)
    {;
        $deleteData = OneToOneCall::find($request->id);
        if (file_exists('storage/'.$deleteData->image1) and !empty($deleteData->image1)) {
            unlink('storage/'.$deleteData->image1);
        }
        if (file_exists('storage/' . $deleteData->image2) and !empty($deleteData->image2)) {
            unlink('storage/' . $deleteData->image2);
        }
        if (file_exists('storage/' . $deleteData->image3) and !empty($deleteData->image3)) {
            unlink('storage/' . $deleteData->image3);
        }
        if (file_exists('storage/' . $deleteData->image4) and !empty($deleteData->image4)) {
            unlink('storage/' . $deleteData->image4);
        }
        if (file_exists('storage/' . $deleteData->image5) and !empty($deleteData->image5)) {
            unlink('storage/' . $deleteData->image5);
        }
        if (file_exists('storage/' . $deleteData->image6) and !empty($deleteData->image6)) {
            unlink('storage/' . $deleteData->image6);
        }
        if (file_exists('storage/' . $deleteData->image7) and !empty($deleteData->image7)) {
            unlink('storage/' . $deleteData->image7);
        }
        if (file_exists('storage/' . $deleteData->image8) and !empty($deleteData->image8)) {
            unlink('storage/' . $deleteData->image8);
        }
        if (file_exists('storage/'.$deleteData->image9) and !empty($deleteData->image9)) {
            unlink('storage/'.$deleteData->image9);
        }
        if (file_exists('storage/' . $deleteData->image10) and !empty($deleteData->image10)) {
            unlink('storage/' . $deleteData->image10);
        }
        if (file_exists('storage/' . $deleteData->image11) and !empty($deleteData->image11)) {
            unlink('storage/' . $deleteData->image11);
        }
        $deleteData->delete();
        return redirect()->back();
    }

    //__ Subscriber Destroy function __ //
    public function SubscriberDestroy($id)
    {
        $delete = NewsLetterSubscriber::find($id);
        $delete->delete();
        return redirect()->route('subscriber.email.view');
    }

}
