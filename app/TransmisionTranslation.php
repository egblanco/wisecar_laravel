<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class TransmisionTranslation extends Eloquent {

    protected $table = 'transmision_translation';
    public $timestamps = false;
    public $primaryKey = 'id';

    public function transmision()
    {
        return $this->belongsTo('App\Trasnmision', 'id');
    }

}