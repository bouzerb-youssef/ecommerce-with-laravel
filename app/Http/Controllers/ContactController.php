<?php

namespace App\Http\Controllers;

use App\Models\Newsletter;

use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
     
            $request->validate([
                'name' => 'required',
                'email' => 'required',
                'message' => 'required',
                ]);

            $contact = Contact::create([
            
    
                'name' => $request->name,
                'email' => $request->email,
                'message' => $request->message,
               
            ]);
            $contact->save();

            return redirect()->back()->with('success', 'the form was sended');
        
         
       
    }
    public function newsletter(Request $request)
    {
         
     
            $request->validate([
                
                'email' => 'required',
               
                ]);

            $Newsletter = Newsletter::create([
                  
                'email' => $request->email,
                  
            ]);
            $Newsletter->save();
            return redirect()->back()->with('success', 'the email was sended');
        
    }
//github

}
