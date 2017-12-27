<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class SeguroTranslation extends Eloquent {

    protected $table = 'seguro_translation';
    public $timestamps = false;

    public function seguro()
    {

        return $this->belongsTo('App\Seguro', 'translatable_id');
    }

}