<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Destinations;
use Illuminate\Support\Facades\Hash;
use App\Models\Pemilik;
use App\Models\Transactions;
use Illuminate\Support\Facades\DB;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Carbon\Carbon;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        return view('pages.auth.login');
    }

    function check(Request $request){
        $request ->validate([
            'username'=>'required',
            'password'=>'required',
        ]);

        $userInfo = Pemilik::where('username','=',$request->username)->first();

        if(!$userInfo){
            return back() ->with('fail','Username yang anda masukkan salah');
        }else{
            if((Hash::check($request->password,$userInfo->password ) )){
                $request->session()->put('LoggedUser',$userInfo->id);
                return redirect('dashboard');
            }else{
                return back()-> with('fail', 'Password yang anda masukkan salah.');
            }
        }
    }

    function dashboard() {
        $data = Pemilik::where('id','=',session('LoggedUser'))->first();
        $destinasi = DB::table('destinations')->where('pemiliks_id',$data->id)->get();
        foreach($destinasi as $d){
            $fasilitas = DB::table('facilities')->where('destinations_id','=',$d->id)->get();
        };
        foreach($fasilitas as $f){
            $transaksi = DB::table('transactions')->where('facilities_id','=',$f->id)->get();
        };
        dd($transaksi);
        $bulan = Transactions::select('bulan')->groupBy('bulan')->get()->toArray();
        $profit = Transactions::select(DB::raw('sum(profits) as profit'))->groupBy('bulan')->get()->toArray();
        $total = Transactions::sum('profits');

        return view('dashboard',['LoggedUserInfo' => $data,
         'destinasi' => $destinasi,
          'fasilitas' => $fasilitas,
           'transaksi' => $transaksi,
           'bulan' => json_encode($bulan, JSON_NUMERIC_CHECK),
           'profit' => json_encode($profit, JSON_NUMERIC_CHECK),
           'total' => $total
        ]);
    }

    function logout(){
        if(session()->has('LoggedUser')){
            session()->pull('LoggedUser');
            return(redirect('/'));
        }
    }

}
