<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class event extends Model
{
    protected $table = 'event';
    protected $primaryKey = 'id_event';

    protected $fillable = [
        'id_user',
        'nama_event',
        'waktu',
        'tempat' ,
        'deskripsi' 
    ];
}
