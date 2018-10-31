<?php

namespace App\Http\Controllers\Transaction;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use vendor\autoload;
use App\Http\Model\Transaction_Laundry;
use App\Http\Model\Detail_Payment;
use App\Http\Model\Detail_Item;
use App\Http\Model\Detail_Task;
use App\Http\Model\Master_Promo;
use App\Http\Model\Master_Outlet;
use Illuminate\Support\Facades\Redirect;
use Date;
use DateTime;
use Session;
use App;

class Tr_LaundryController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheck');
    }
    public function show(){ 
        $laundry = Transaction_Laundry::all_trans();
        return view('pages/cms/tr_laundry/laundry', compact('laundry'));
    }

    public function view($id)
    {
        $outlet = Master_Outlet::all_outlet();
        $laundry = Transaction_Laundry::all_trans()->where('id','=',$id)->first();

        $item = Detail_Item::all_item()->where('id_laundry','=',$id);
        $payment = Detail_Payment::all_payment()->where('id_laundry','=',$id);
        $task = Detail_Task::all_task()->where('id_laundry','=',$id);
        $promo = Master_Promo::all_promo()->where('id','=',$laundry->id_promo)->first();
        return  view('pages/cms/tr_laundry/laundry_view', compact('laundry','outlet','item','payment','task','promo'));
    }

    public function delete($id){
        $laundry = Transaction_Laundry::where('id','=',$id)->first();
        $laundry->is_active = 0;
        $laundry->save();

        return  redirect('/laundry');
    } 
}
