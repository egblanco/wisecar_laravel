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
use Carbon\Carbon;

class CarController extends Controller
{
    /**
     * Show the profile for the given user.
     *
     * @param  int $id
     * @return Response
     */
    public function show($id)
    {

        $autos = DB::table('auto')->get();
        return view('index', ['autos' => $autos]);
    }

    public function index($locale)
    {
        \Illuminate\Support\Facades\App::setLocale($locale);
        $autos = DB::table('auto')->get();
        $autos = Auto::with('ofertas')->get();


        $seguros = Seguro::with('articulo', 'seguro_translation')->get();
        $accesorios = Accesorio::with('articulo', 'accesorio_translation')->get();


        $lugares = DB::table('lugar_translation')->get();
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
        $auto_oferta = Auto::with('ofertas')->get()->where('id', '=', $id)->first();
        #var_dump($auto_oferta->ofertas);
        #$auto['precio'] = 0;
        #$auto['semanal'] = 0;
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

    public function getPrecioAlquilerAutoByDateRange(Request $request)
    {
        $fecha_inicio = $request->fecha_inicio;
        $fecha_fin = $request->fecha_fin;
        $id_auto = $request->id_auto;
        $locale = $request->idioma;
        $auto_oferta = '';
        $format = 'd/m/Y';
        $data = [];

        if ($id_auto != '0') {
            $auto_oferta = Auto::with('ofertas')->get()->where('id', '=', $id_auto)->first();


            if ($fecha_inicio != '')
                $fecha_inicio = Carbon::createFromFormat($format, $fecha_inicio);
            if ($fecha_fin != '')
                $fecha_fin = Carbon::createFromFormat($format, $fecha_fin);

            if ($fecha_fin != '' && $fecha_inicio != '') {
                $diferencia = $fecha_fin->diffInDays($fecha_inicio);

                if ($diferencia >= 7) {

                    $resto_division = $diferencia % 7;
                    $parte_entera = floor($diferencia / 7);

                    $precio_total = $auto_oferta->ofertas[0]->pivot->precio * $resto_division + $auto_oferta->ofertas[0]->pivot->semanal * $parte_entera;
                    $data['precio_total'] = $precio_total;
                    $data['dias'] = $diferencia;
                }
                if ($diferencia == 0) {
                    $precio_total = $auto_oferta->ofertas[0]->pivot->precio;
                    $data['precio_total'] = $precio_total;
                    $data['dias'] = $diferencia;
                }
                if (0 < $diferencia && $diferencia < 7) {
                    $precio_total = $auto_oferta->ofertas[0]->pivot->precio * $diferencia;
                    $data['precio_total'] = $precio_total;
                    $data['dias'] = $diferencia;
                }

                return response()->json($data);
            } else {
                $data['precio_total'] = -1;
                $data['dias'] = 0;
                return response()->json($data);
            }

        } else {
            $data['precio_total'] = -1;
            $data['dias'] = 0;
            return response()->json($data);
        }

    }
}