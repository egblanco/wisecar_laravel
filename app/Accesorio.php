<?php

namespace App;
use Illuminate\Database\Eloquent\Model as Eloquent;

class Accesorio extends Eloquent {

    protected $table = 'accesorio';
    public $timestamps = false;

    public function articulo()
    {
        return $this->belongsTo('App\Articulo', 'id');
    }

    public function accesorio_translation()
    {
        $locale = \Illuminate\Support\Facades\App::getLocale();
        return $this->hasMany('App\AccesorioTranslation', 'translatable_id')->where('locale', $locale);
    }

}