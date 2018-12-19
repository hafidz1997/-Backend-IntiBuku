<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class review extends Model
{
    protected $table = 'review';
    protected $primaryKey = 'id_review';

    
    protected $fillable = [
        'id_user',
        'judul_review',
        'judul_buku',
        'pengarang' ,
        'detail_buku' ,
        'isi_review'
    ];
}
