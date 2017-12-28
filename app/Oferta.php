<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Oferta extends Eloquent {

    protected $table = 'oferta';
    public $timestamps = false;
    public $primaryKey = 'id';

    public function autos()
    {
        return $this->belongsToMany('App\Auto', 'oferta_auto')->withPivot('precio', 'semanal');
    }
}