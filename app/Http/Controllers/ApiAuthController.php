<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticateUsers;
use App\User;
use Auth;

class ApiAuthController extends Controller
{
    public function register(Request $request, User $user){

            $nama = $request['nama'];
            $username = $request['username'];
            $email = $request['email'];
            $password = $request['password'];

                   
            $user = user::create([
                    'nama' => $nama,
                    'username' => $username,
                    'email' => $email,
                    'password' => bcrypt($password)
                ]);

            return response()->json([
              'success'=>true,
              'message'=>"user berhasil ditambahkan"
            ]);
    }
    
    public function login(Request $request, User $user)
    {
        if(!Auth::attempt(['username' => $request->username, 'password' => $request->password]))
        {
            return response()->json(['error' => 'Username atau password salah'], 401);
        }
        $user = $user->find(Auth::user()->id);
        if($user->api_token==NULL){
          $user->api_token = bcrypt($request->username);
          $user->save();
        }
        $data_user = $user;
  
        return response()->json([
          'success'=>true,
          'message'=>"Berhasil login",
          'data_user'=>$data_user
        ]);
    }    
}
