<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class OfertaAuto extends Eloquent {

    protected $table = 'oferta_auto';
    public $timestamps = false;
    public $primaryKey = 'id';

}