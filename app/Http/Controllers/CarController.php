<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Lang;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use App\Seguro;
use App\Accesorio;
use App\Auto;
use App\Transmision;
use App\TransmisionTranslation;
use Illuminate\Http\Request;

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
        $autos=Auto::with( 'ofertas')->get();


        $seguros = Seguro::with('articulo', 'seguro_translation')->get();
        $accesorios = Accesorio::with('articulo', 'accesorio_translation')->get();


        $lugares= DB::table('lugar_translation')->get();
        $lugares = $lugares->where('locale', $locale);
        return view('index', ['lugares' => $lugares, 'autos' => $autos, 'seguros' => $seguros, 'accesorios' => $accesorios, 'locale' => $locale]);
    }

    public function getCarById(Request $request)
    {
        #var_dump($request);
        $locale = App::getLocale();
        $data = [];
        $element = [];
        $id = $request->id;
        $locale = $request->idioma;
        $auto = Auto::find($id);
        $auto_oferta = Auto::with( 'ofertas')->get()->where('id', '=', $id);
        $transmision_translate = TransmisionTranslation::where('translatable_id', '=', $auto->id_transmision)
            ->where('locale', $locale)
            ->get()->first();
        $element['locale'] = $locale;
        $element['auto'] = $auto;
        $element['auto_oferta'] = $auto_oferta;
        $element['transmision'] = $transmision_translate;
        $data['data'] = $element;
        #$data['auto'] = Auto::with('transmision')->whereIn('id', $id)->get();
        return response()->json($element);
    }
}