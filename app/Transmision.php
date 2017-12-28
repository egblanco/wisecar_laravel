<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Transmision extends Eloquent {

    protected $table = 'transmision';
    public $timestamps = false;
    public $primaryKey = 'id';

    public function transmision_translations(){
        return $this->hasMany('App\TransmisionTranslation', 'id');
    }

    public function autos(){
        return $this->hasMany('App\Auto', 'id_transmision');
    }

}