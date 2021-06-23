<?php

namespace App\Http\Controllers;
use App\Models\Pemilik;
use Illuminate\Http\Request;

class MainController extends Controller
{
    function profile() {
        $data = ['LoggedUserInfo'=>Pemilik::where('id','=',session('LoggedUser'))->first()];
        return view('profile',$data);
    }
}
