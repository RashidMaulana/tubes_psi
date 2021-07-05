<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Pemilik;
use App\Models\Transactions;
use Illuminate\Http\Request;

class MainController extends Controller
{
    function profile() {
        $data = Pemilik::where('id','=',session('LoggedUser'))->first();
        $destinasi = DB::table('destinations')->where('pemiliks_id','=',$data->id)->get();
        return view('profile',['LoggedUserInfo'=>$data, 'destinasi'=>$destinasi]);
    }

    function tablekeuntungan(){
        $data = Pemilik::where('id','=',session('LoggedUser'))->first();

        $destinasi = DB::table('transactions')
        ->join('facilities as f','transactions.facilities_id','f.id')
        ->join('destinations as d','f.destinations_id','d.id')
        ->where('d.pemiliks_id',$data->id)
        ->get();
        return view('datatable',['LoggedUserInfo' => $data, 'destinasi' => $destinasi]);
    }
    function grafikpengunjung(){
        $data = Pemilik::where('id','=',session('LoggedUser'))->first();

        $tanggal = Transactions::select('tanggal')->join('facilities as f','transactions.facilities_id','f.id')
                                              ->join('destinations as d','f.destinations_id','d.id')
                                              ->where('d.pemiliks_id',$data->id)->groupBy('tanggal')->orderBy('tanggal','ASC')->get()->toArray();
        $visitor = Transactions::select(DB::raw('sum(visitors_id) as visitor'))
        ->join('facilities as f','transactions.facilities_id','f.id')
        ->join('destinations as d','f.destinations_id','d.id')
        ->where('d.pemiliks_id',$data->id)->groupBy('tanggal')->get()->toArray();

        return view('grafik',['LoggedUserInfo' => $data,'tanggal' => json_encode($tanggal, JSON_NUMERIC_CHECK), 'visitor' => json_encode($visitor, JSON_NUMERIC_CHECK)]);

    }
}
