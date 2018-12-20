<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\review;
use App\User;

class ApiReviewController extends Controller
{
    public function getReview()
    {
         $review = review::join('user','user.id','=','review.id_user')
        ->get();
       

        return response()->json([
            'success'=>true,
            'message'=>"berhasil",
            'review'=>$review,
          ]);
    }

    public function detailReview($id_r)
    {
        // $id_user = $user->find($id)->id;
        $review = review::join('user', 'user.id', '=', 'review.id_user')
        ->where('id_review',$id_r)
        ->first();


          return response()->json([
            'success'=>true,
            'message'=>"asdf",
            'review'=>$review
          ]);
    }

    public function tambahReview(Request $request, User $user, $id)
    {
        $id_user = $user->find($id)->id;
        $judul = $request['judul'];
        $judul2 = $request['judul2'];
        $pengarang = $request['pengarang'];
        $detail = $request['detail'];
        $isi = $request['isi'];
        $review = review::create([
            'id_user' => $id_user,
            'judul_review' => $judul,
            'judul_buku' => $judul2,
            'pengarang' => $pengarang,
            'detail_buku' => $detail,
            'isi_review' => $isi,
        ]);

        return response()->json([
            'success'=>true,
            'message'=>"Kegiatan berhasil ditambahkan"
          ]);

    }
}
