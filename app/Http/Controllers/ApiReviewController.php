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
        // $review = review::all();

        return response()->json([
            'success'=>true,
            'message'=>"berhasil",
            'review'=>$review,
          ]);
    }
}
