<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class ApiProfilController extends Controller
{
    public function getProfil(User $user, $id)
    {
        $id_user = $user->find($id)->id;
        $profil = user::where('id', $id_user)->first();
      
        return response()->json([
            'success'=>true,
            'message'=>"berhasil",
            'profil'=>$profil,
          ]);
    }
}
