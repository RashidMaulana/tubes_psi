<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use App\Models\Pemilik;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
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
        $data = ['LoggedUserInfo'=>Pemilik::where('id','=',session('LoggedUser'))->first()];
        return view('dashboard',$data);
    }

    function logout(){
        if(session()->has('LoggedUser')){
            session()->pull('LoggedUser');
            return(redirect('/'));
        }
    }

}
