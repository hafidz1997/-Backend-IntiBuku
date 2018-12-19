<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\event;

class ApiEventController extends Controller
{
    public function getEvent()
    {
         $event = event::join('user','user.id','=','event.id_user')
        ->get();
      

        return response()->json([
            'success'=>true,
            'message'=>"berhasil",
            'event'=>$event,
          ]);
    }
}
