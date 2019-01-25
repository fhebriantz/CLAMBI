<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Trans_Order extends Model
{
    protected $table = 'lw_trans_order';
    const UPDATED_AT = 'modified_date';
    const CREATED_AT = 'created_date';

    public static function all_order(){
        
        $lw_trans_order = DB::table('lw_trans_order')
            ->join('lw_mast_dokter', 'lw_mast_dokter.id', '=', 'lw_trans_order.id_dokter')
            ->join('lw_mast_medrep', 'lw_mast_medrep.id', '=', 'lw_trans_order.id_medrep')
            ->select('lw_trans_order.*','lw_mast_dokter.nama_dokter','lw_mast_dokter.alamat as alamat_dokter','lw_mast_dokter.telp as tlp_dokter','lw_mast_medrep.nama_medrep')
            ->where('lw_trans_order.is_active','!=',0)
            ->get();

    return $lw_trans_order;
    }
}
