<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Seguro extends Eloquent {

    protected $table = 'seguro';
    public $timestamps = false;

    public function articulo()
    {
        return $this->belongsTo('App\Articulo', 'id');
    }

    public function seguro_translation()
    {
        $locale = \Illuminate\Support\Facades\App::getLocale();
        return $this->hasMany('App\SeguroTranslation', 'translatable_id')->where('locale', $locale);
    }

}