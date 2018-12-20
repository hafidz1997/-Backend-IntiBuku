<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\review;
use App\komentar;

class ApiKomentarController extends Controller
{
    public function getKomentar(User $user, $id_r)
    {
        $komentar = komentar::join('review', 'review.id_review', '=', 'komentar.id_reviews')
        ->join('user', 'user.id', '=', 'komentar.id_user')
        ->where('id_review',$id_r)
        ->get();
      

        return response()->json([
            'success'=>true,
            'message'=>"berhasil",
            'komentar'=>$komentar,
          ]);
    }

    // public function tambahEvent(Request $request, User $user, $id)
    // {
    //     $id_user = $user->find($id)->id;
    //     $nama= $request['nama'];
    //     $waktu = $request['waktu'];
    //     $tempat = $request['tempat'];
    //     $deskripsi = $request['deskripsi'];
    //     $event = event::create([
    //         'id_user' => $id_user,
    //         'nama_event' => $nama,
    //         'waktu' => $waktu,
    //         'tempat' => $tempat,
    //         'deskripsi' => $deskripsi
    //     ]);

    //     return response()->json([
    //         'success'=>true,
    //         'message'=>"Kegiatan berhasil ditambahkan"
    //       ]);

    // }
}
