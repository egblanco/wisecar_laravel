<?php

namespace App\Http\Controllers;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Seguro;
use App\Accesorio;

class CarController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {

        $autos= DB::table('auto')->get();
        return view('index', ['autos' => $autos]);
    }

    public function index($locale)
    {
        \Illuminate\Support\Facades\App::setLocale($locale);
        $autos= DB::table('auto')->get();



        $seguros = Seguro::with('articulo', 'seguro_translation')->get();
        $accesorios = Accesorio::with('articulo', 'accesorio_translation')->get();


        $lugares= DB::table('lugar_translation')->get();
        $lugares = $lugares->where('locale', $locale);
        return view('index', ['lugares' => $lugares, 'autos' => $autos, 'seguros' => $seguros, 'accesorios' => $accesorios]);
    }
}