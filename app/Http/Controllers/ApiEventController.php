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

    public function tambahEvent(Request $request, User $user, $id)
    {
        $id_user = $user->find($id)->id;
        $nama= $request['nama'];
        $waktu = $request['waktu'];
        $tempat = $request['tempat'];
        $deskripsi = $request['deskripsi'];
        $event = event::create([
            'id_user' => $id_user,
            'nama_event' => $nama,
            'waktu' => $waktu,
            'tempat' => $tempat,
            'deskripsi' => $deskripsi
        ]);

        return response()->json([
            'success'=>true,
            'message'=>"Kegiatan berhasil ditambahkan"
          ]);

    }
}
