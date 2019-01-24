<?php

namespace App\Http\Controllers\Master;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use vendor\autoload;
use App\Http\Model\Mast_Sponsor;
use Illuminate\Support\Facades\Redirect;
use Date;
use DateTime;
use Session;
use App;

class Mast_SponsorController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheck');
    }
    public function show(){ 
        $sponsor = Mast_Sponsor::all();
        return view('pages/cms/mast_sponsor/sponsor', compact('sponsor'));
    }

     public function input()
    {
        $sponsor = Mast_Sponsor::all();
        return  view('pages/cms/mast_sponsor/sponsor_input', compact('sponsor'));
    }

    public function edit($id)
    {
        $sponsor = Mast_Sponsor::where('id','=',$id)->first();
        return  view('pages/cms/mast_sponsor/sponsor_edit', compact('sponsor'));
    }

    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'id_outlet' => 'required',
                'item' => 'required',
                'price' => 'required',
                'description' => 'required',
            ]);

        $sponsor = new Mast_Sponsor;

            $sponsor->id_outlet = $request->id_outlet; 
            $sponsor->item = $request->item; 
            $sponsor->price = $request->price; 
            $sponsor->description = $request->description; 
            $sponsor->is_active = 1;  
            $sponsor->created_by = session()->get('session_id');

        $sponsor->save();

        return  redirect('/sponsor');
    }

    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

                'id_outlet' => 'required',
                'item' => 'required',
                'price' => 'required',
                'description' => 'required',

            ]);

        $sponsor = Mast_Sponsor::where('id','=',$id)->first();

            $sponsor->id_outlet = $request->id_outlet; 
            $sponsor->item = $request->item; 
            $sponsor->price = $request->price; 
            $sponsor->description = $request->description; 
            $sponsor->modified_by = session()->get('session_id');  

        $sponsor->save();

        return  redirect('/sponsor');
    }

    public function delete($id){
        $sponsor = Mast_Sponsor::where('id','=',$id)->first();
        $sponsor->is_active = 0;
        $sponsor->save();

        return  redirect('/sponsor');
    } 
}
