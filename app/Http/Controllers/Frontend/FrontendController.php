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
            // 'channel_name' => 'required',
            // 'channel_link' => 'required',
            // 'channel_gaming' => 'required',
            // 'channel_describe' => 'required',
            // 'channel_Struggling' => 'required',
            // 'email' => 'required',
            //'image1' => 'required',
            //'image2' => 'required',
            //'image3' => 'required',
            // 'image4' => 'required',
            // 'image5' => 'required',
            // 'image6' => 'required',
            // 'image7' => 'required',
            // 'image8' => 'required',
            // 'image9' => 'required',
            // 'image10' => 'required',
            // 'image11' => 'required',

        ]);
        $storeData = new OneToOneCall();
        $images = [];
        foreach ($request->images as $image) {
              $ext = $image->extension();
              $fileName = $image->getClientOriginalName(). ".".$ext;
              $newImage = $image->storeAs("images/",  $fileName, "public" );
        $images[] = $newImage;
        }
        $storeData->image1 = $images[0];
        $storeData->image2 = $images[1];

        $storeData->save();
        Session::flash('success', 'Subscriber Data Sent successfully');
        return redirect()->back();
}

        // $storeData->channel_name = $request->channel_name;
        // $storeData->channel_link = $request->channel_link;
        // $storeData->channel_gaming = $request->channel_gaming;
        // $storeData->channel_describe = $request->channel_describe;
        // $storeData->channel_Struggling = $request->channel_Struggling;
        // $storeData->email = $request->email;

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
    public function SubscriberChannelDestroy($id)
    {
        $deleteData = OneToOneCall::find($id);
        $deleteData->delete();
        // $deleteData = OneToOneCall::find($request->id);
        // if (file_exists('public/images/call/' . $deleteData->image) and !empty($deleteData->image)) {
        //     unlink('public/images/call/' . $deleteData->image);
        // }
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
