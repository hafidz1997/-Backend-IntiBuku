<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class komentar extends Model
{
    protected $table = 'komentar';
    protected $primaryKey = 'id_komentar';

    
    protected $fillable = [
        'id_review',
        'id_user',
        'isi_komentar',
    ];
}
