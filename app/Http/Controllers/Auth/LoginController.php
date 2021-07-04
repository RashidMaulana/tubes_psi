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
        // dd($data);
        // $destinasi = DB::table('destinations')->where('pemiliks_id',$data->id)->get();
        $destinasi = DB::table('transactions')
        ->join('facilities as f','transactions.facilities_id','f.id')
        ->join('destinations as d','f.destinations_id','d.id')
        ->where('d.pemiliks_id',$data->id)
        ->get();
     
        // dd($destinasi);
        // foreach($destinasi as $d){
        //     $fasilitas = DB::table('facilities')->where('destinations_id','=',$d->id)->get();
        // };
        // dd($fasilitas);
        // for ($i=0; $i <count($fasilitas) ; $i++) { 
        //     $transaksi = DB::table('transactions')->where('facilities_id','=',$fasilitas[$i]->id)->get();
        // }
        $visitor = Transactions::select(DB::raw('sum(visitors_id) as visitor'))
                                            ->join('facilities as f','transactions.facilities_id','f.id')
                                            ->join('destinations as d','f.destinations_id','d.id')
                                            ->where('d.pemiliks_id',$data->id)->groupBy('bulan')->get()->toArray();

        $bulan = Transactions::select('bulan')->join('facilities as f','transactions.facilities_id','f.id')
                                              ->join('destinations as d','f.destinations_id','d.id')
                                              ->where('d.pemiliks_id',$data->id)->groupBy('bulan')->orderBy('tanggal','ASC')->get()->toArray();

        $profit = Transactions::select(DB::raw('sum(profits) as profit'))
                                        ->join('facilities as f','transactions.facilities_id','f.id')
                                        ->join('destinations as d','f.destinations_id','d.id')
                                        ->where('d.pemiliks_id',$data->id)->groupBy('bulan')->get()->toArray();
        $total = Transactions::join('facilities as f','transactions.facilities_id','f.id')
                             ->join('destinations as d','f.destinations_id','d.id')
                             ->where('d.pemiliks_id',$data->id)->sum('profits');

        return view('dashboard',['LoggedUserInfo' => $data,
           'destinasi' => $destinasi,
           'bulan' => json_encode($bulan, JSON_NUMERIC_CHECK),
           'profit' => json_encode($profit, JSON_NUMERIC_CHECK),
           'visitor' => json_encode($visitor, JSON_NUMERIC_CHECK),
           'total' => $total,
        ]);
    }

    function logout(){
        if(session()->has('LoggedUser')){
            session()->pull('LoggedUser');
            return(redirect('/'));
        }
    }

}
