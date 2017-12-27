<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class AccesorioTranslation extends Eloquent {

    protected $table = 'accesorio_translation';
    public $timestamps = false;

    public function accesorio()
    {

        return $this->belongsTo('App\Accesorio', 'translatable_id');
    }

}