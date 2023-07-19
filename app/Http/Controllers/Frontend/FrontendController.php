<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Controllers\Controller;
use App\Models\Contact;
use Illuminate\Http\Request;
use App\Models\Logo;
use App\Models\ContactUs;
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
        return view('frontend.pages.one-to-one-call');
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
            'image1' => 'required',
            'image2' => 'required',
            'image3' => 'required',
            'image4' => 'required',
            'image5' => 'required',
            'image6' => 'required',
            'image7' => 'required',
            'image8' => 'required',
            'image9' => 'required',
            'image10' => 'required',
            'image11' => 'required',

        ]);
        $storeData = new OneToOneCall();
        $storeData->channel_name = $request->channel_name;
        $storeData->channel_link = $request->channel_link;
        $storeData->channel_gaming = $request->channel_gaming;
        $storeData->channel_describe = $request->channel_describe;
        $storeData->channel_Struggling = $request->channel_Struggling;
        $storeData->email = $request->email;
        //image 1
        if ($request->hasFile('image1')) {
            $file = $request->file('image1');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image1 = $newImage;
        } else {
            return $request;
            $storeData->image1 = '';
        }
                
        //image 2
        if ($request->hasFile('image2')) {
            $file = $request->file('image2');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image2 = $newImage;
        } else {
            return $request;
            $storeData->image2 = '';
        }

        //image 3
        if ($request->hasFile('image3')) {
            $file = $request->file('imag31');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image3 = $newImage;
        } else {
            return $request;
            $storeData->image3 = '';
        }

        //image 1
        if ($request->hasFile('image4')) {
            $file = $request->file('image4');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image4 = $newImage;
        } else {
            return $request;
            $storeData->image4 = '';
        }

        //image5
        if ($request->hasFile('image5')) {
            $file = $request->file('image5');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image5 = $newImage;
        } else {
            return $request;
            $storeData->image5 = '';
        }

        //image6
        if ($request->hasFile('image6')) {
            $file = $request->file('image6');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image6 = $newImage;
        } else {
            return $request;
            $storeData->image6 = '';
        }

        //image7
        if ($request->hasFile('image7')) {
            $file = $request->file('image7');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image7 = $newImage;
        } else {
            return $request;
            $storeData->image7 = '';
        }

        //image8
        if ($request->hasFile('image8')) {
            $file = $request->file('image8');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image8 = $newImage;
        } else {
            return $request;
            $storeData->image8 = '';
        }

        //image9
        if ($request->hasFile('image9')) {
            $file = $request->file('image9');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image9 = $newImage;
        } else {
            return $request;
            $storeData->image9 = '';
        }

        //image10
        if ($request->hasFile('image10')) {
            $file = $request->file('image10');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image10 = $newImage;
        } else {
            return $request;
            $storeData->image10 = '';
        }
        //image11
        if ($request->hasFile('image11')) {
            $file = $request->file('image11');
            $extension = $file->getClientOriginalExtension();
            $newImage = time() . '.' . $extension;
            $file->move('public/images/haze/one-to-one/', $newImage);
            $storeData->image11 = $newImage;
        } else {
            return $request;
            $storeData->image11 = '';
        }
        
        $storeData->save();
        Session::flash('success', 'Data Send successfully');
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
    

    //__ Subscriber EmailView__ //
    public function SubscriberIndex()
    {
       $subscriber['subscriberEmail'] = NewsLetterSubscriber::orderBy('id', 'desc')->get();
       return view('frontend.email.subscriber-email-view', $subscriber);
    }
    public function SubscriberDestroy($id)
    {
        $data = NewsLetterSubscriber::find($id);
        $data->delete();
        return redirect()->route('subscriber.email.view');
    }

    //__ User Email function for Contact Us__ //
    public function UserEmailView()
    {
        $mail['userEmail'] = ContactUs::orderBy('id', 'desc')->get();
        return view('frontend.email.user-email-view', $mail);
    }

    //__ Contact Us Delete function__ //
    public function destroy($id)
    {
        $contactUs = ContactUs::find($id);
        $contactUs->delete();
        return redirect()->back();
    }
}
