<?php

namespace App\Http\Controllers\Transaction;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use vendor\autoload;
use App\Http\Model\Trans_Order;
use App\Http\Model\Trans_Tagihan;
use App\Http\Model\Det_Order;
use App\Http\Model\Mast_Dokter;
use App\Http\Model\Mast_Medrep;
use Illuminate\Support\Facades\Redirect;
use Date;
use DateTime;
use Session;
use App;

class Trans_OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('logincheck');
    }
    public function show(){ 
        $order = Trans_Order::all_order();
        return view('pages/cms/tr_order/order', compact('order'));
    }

    public function view($id)
    {
        $order = Trans_Order::all_order()->where('id','=',$id)->first();
        $dokter = Mast_Dokter::all();
        $medrep = Mast_Medrep::all();

        $detail = Det_Order::all()->where('id_trans_order','=',$order->id_trans_order);
        return  view('pages/cms/tr_order/order_view', compact('order','detail','dokter','medrep'));
    }

    public function input()
    {
        $id_trans_order = strtotime(date('D-m-y H:i:s'));
        $dokter = Mast_Dokter::all();
        $medrep = Mast_Medrep::all();
        return  view('pages/cms/tr_order/order_input', compact('id_trans_order','dokter','medrep'));
    }



    //strtotime(date('D-m-y H:i:s'));

    public function detailedit($id)
    {
        $detail = Det_Order::all()->where('id','=',$id)->first();
        return  view('pages/cms/tr_order/detail_edit', compact('detail'));
    }

    public function detailinput($id)
    {
        $id_trans_order = $id;
        $detail = Det_Order::all()->where('id_trans_order','=',$id_trans_order);
        return  view('pages/cms/tr_order/detail_input', compact('id_trans_order','detail'));
    }

    function detailinsert (Request $request, $id)  
    {

        $validatedData = $request->validate([

                'qty' => 'required',
                'kemasan' => 'required',
                'ukuran' => 'required',
                'harga' => 'required',
            ]);

        $order = new Det_Order;

            $order->id_trans_order = $id; 
            $order->qty = $request->qty; 
            $order->kemasan = $request->kemasan; 
            $order->ukuran = $request->ukuran; 
            $order->harga = $request->harga; 
            $order->created_by = session()->get('session_id');  

        $order->save();

        return Redirect::back()->with('message','Detail transaksi diperbaharui!');
    }

    function detailupdate (Request $request, $id)  
    {

        $validatedData = $request->validate([

                'qty' => 'required',
                'kemasan' => 'required',
                'ukuran' => 'required',
                'harga' => 'required',
            ]);

        $order = Det_Order::where('id','=',$id)->first();;

            $order->qty = $request->qty; 
            $order->kemasan = $request->kemasan; 
            $order->ukuran = $request->ukuran; 
            $order->harga = $request->harga; 
            $order->modified_by = session()->get('session_id');  

        $order->save();

        return redirect('detail/'.$order->id_trans_order.'/input/');
    }



    function insert (Request $request)  
    {

        $validatedData = $request->validate([

                'id_trans_order' => 'required',
                'id_medrep' => 'required',
                'id_dokter' => 'required',
                'id_so' => 'required',
                'no_so' => 'required',
                'tgl_so' => 'required',
                'tgl_trans_order' => 'required',


                'tgl_tagihan' => 'required',
                'id_faktur' => 'required',
                'tgl_faktur' => 'required',
                'is_lunas' => 'required',
            ]);

        $order = new Trans_Order;

            $order->id_trans_order = $request->id_trans_order; 
            $order->id_medrep = $request->id_medrep; 
            $order->id_dokter = $request->id_dokter; 
            $order->id_so = $request->id_so; 
            $order->no_so = $request->no_so; 
            $order->tgl_so = $request->tgl_so; 
            $order->tgl_trans_order = $request->tgl_trans_order;
            $order->created_by = session()->get('session_id');  

        $order->save();

        $tagihan = new Trans_Tagihan;

            $tagihan->id_trans_order = $request->id_trans_order; 
            $tagihan->id_faktur = $request->id_faktur; 
            $tagihan->tgl_faktur = $request->tgl_faktur; 
            $tagihan->tgl_tagihan = $request->tgl_tagihan; 
            $tagihan->is_lunas = $request->is_lunas; 
            $tagihan->created_by = session()->get('session_id');  

        $tagihan->save();

        return  redirect('detail/'.$request->id_trans_order.'/input/');
    }

    function update (Request $request, $id)  
    {
        $validatedData = $request->validate([

                'id_medrep' => 'required',
                'id_dokter' => 'required',
                'id_so' => 'required',
                'no_so' => 'required',
                'tgl_so' => 'required',
                'tgl_trans_order' => 'required',

                'tgl_tagihan' => 'required',
                'id_faktur' => 'required',
                'tgl_faktur' => 'required',
                'is_lunas' => 'required',

            ]);

        $order = Trans_Order::where('id','=',$id)->first();

            $order->id_medrep = $request->id_medrep; 
            $order->id_dokter = $request->id_dokter; 
            $order->id_so = $request->id_so; 
            $order->no_so = $request->no_so; 
            $order->tgl_so = $request->tgl_so; 
            $order->tgl_trans_order = $request->tgl_trans_order; 
            $order->modified_by = session()->get('session_id');  

        $order->save();

        $tagihan = Trans_Tagihan::where('id_trans_order','=',$order->id_trans_order)->first();

            $tagihan->id_trans_order = $order->id_trans_order; 
            $tagihan->id_faktur = $request->id_faktur; 
            $tagihan->tgl_faktur = $request->tgl_faktur; 
            $tagihan->tgl_tagihan = $request->tgl_tagihan; 
            $tagihan->is_lunas = $request->is_lunas; 
            $tagihan->modified_by = session()->get('session_id');    

        $tagihan->save();

        return  redirect('/order');
    }

    function active (Request $request, $id)  
    {

        $order = Trans_Order::where('id_trans_order','=',$id)->first();

            $order->is_active = 1; 
            $order->modified_by = session()->get('session_id');  

        $order->save();

        return  redirect('/order');
    }

    public function delete($id){
        $order = Trans_Order::where('id','=',$id)->first();
        $order->is_active = 0;
        $order->save();

        return  redirect('/order');
    } 

    public function detaildelete($id){
        $order = Det_Order::where('id','=',$id)->first();
        $order->delete();

        return Redirect::back()->with('message','Detail transaksi diperbaharui!');
    }
}
