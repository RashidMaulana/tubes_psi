<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Pemilik;
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
}
