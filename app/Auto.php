<?php

namespace App;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Auto extends Eloquent
{

    protected $table = 'auto';
    public $timestamps = false;
    public $primaryKey = 'id';

    public function transmision()
    {
        return $this->belongsTo('App\Transmision', 'id');
    }

    public function ofertas()
    {
        return $this->belongsToMany('App\Oferta', 'oferta_auto', 'id_auto', 'id_oferta')->withPivot('precio', 'semanal');
    }


}