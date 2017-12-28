<!-- Stored in resources/views/child.blade.php -->

@extends('layouts.app')

@section('htmlheader_title', 'WiseCar')
{{--@section('contentheader_title', 'Pagina de Inicio')--}}
{{--@section('contentheader_description', 'Pagina de Inicio')--}}
@section('main-content')
    <div class="col-md-9 contencontent_height">
        <form>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.pickup')</label>
                    <select class="form-control" name="pickup" id="pickup">
                        @foreach ($lugares as $lugar)
                            <option value="{{$lugar->id}}">{{$lugar->nombre}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>@lang('message.pickupdh')</label>

                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control" id="pickupdh" name="pickupdh">
                    </div>
                    <!-- /.input group -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>@lang('message.pickupdhh')</label>

                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="glyphicon glyphicon-time"></i>
                        </div>
                        <input type="text" class="form-control" id="pickupdhh" name="pickupdhh">
                    </div>
                    <!-- /.input group -->
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.dropoff')</label>
                    <select class="form-control" name="dropoff" id="dropoff">
                        <option value="0">Otro Sitio</option>
                        @foreach ($lugares as $lugar)
                            <option value="{{$lugar->id}}">{{$lugar->nombre}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label>@lang('message.returndate')</label>

                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input type="text" class="form-control" id="returndate" name="returndate">
                    </div>
                    <!-- /.input group -->
                </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label>@lang('message.returnhour')</label>

                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="glyphicon glyphicon-time"></i>
                        </div>
                        <input type="text" class="form-control" id="returnhour" name="returnhour">
                    </div>
                    <!-- /.input group -->
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <div class="form-group">
                        <label>@lang('message.carmodel')</label>
                        <select class="form-control" id="carmodel" name="carmodel" disabled>
                            <option value="0">---</option>
                            @foreach ($autos as $auto)
                                <option value="{{$auto->id}}">{{$auto->modelo}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-6" hidden>
                <div class="form-group">
                    <label>@lang('message.code')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-sm-offset-4" hidden>

                <div class="form-group pull-left">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="returnsame" name="returnsame">
                            <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                            <span class="font-check">@lang('message.returnsame')</span>
                        </label>
                    </div>
                </div>

            </div>

            <div class="col-md-12 margin-bottom hidden" id="section_auto">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="top-car-component">
                        <span id="img_user"></span>
                        <span id="img_cdir"></span>
                        <span id="img_aire"></span>
                        <span id="img_music"></span>
                        <span id="img_puertas"></span>
                        <span id="img_maleta"></span>

                    </div>
                    <div class="text-center" id="img_car"></div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <hr class="hr-theme">
            <div class="col-md-12 margin-bottom hidden" id="section_seguros">
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">Seguros</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                            </button>

                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table table-condensed">
                            <tbody>
                            <tr>
                                <th width="50%">Seguro</th>
                                <th width="25%">MXN</th>
                                <th width="25%">Seleccionar</th>
                            </tr>

                            @foreach ($seguros as $seguro)
                                <tr>
                                    <td>{{$seguro->seguro_translation[0]->nombre}}</td>
                                    <td>{{$seguro->articulo->precio}}</td>
                                    <td>
                                        <div class="checkbox" style="margin-top: 0px">
                                            <label>
                                                <input type="checkbox"
                                                       id="seguro_{{$seguro->seguro_translation[0]->translatable_id}}"
                                                       name="seguro_{{$seguro->seguro_translation[0]->translatable_id}}"
                                                       rel="{{$seguro->articulo->precio}}"
                                                       class="checkbox_seguro">
                                                <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach


                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>

            <div class="col-md-12 margin-bottom hidden" id="section_accesorios">
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">Accesorios</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i
                                        class="fa fa-minus"></i>
                            </button>

                        </div>
                    </div>
                    <div class="box-body">
                        <table class="table table-condensed">
                            <tbody>
                            <tr>
                                <th width="50%">Accesorios</th>
                                <th width="25%">MXN</th>
                                <th width="25%">Seleccionar</th>
                            </tr>

                            @foreach ($accesorios as $accesorio)
                                <tr>
                                    <td>{{$accesorio->accesorio_translation[0]->nombre}}</td>
                                    <td>{{$accesorio->articulo->precio}}</td>
                                    <td>
                                        <div class="checkbox" style="margin-top: 0px">
                                            <label>
                                                <input type="checkbox"
                                                       id="accesorio_{{$accesorio->accesorio_translation[0]->translatable_id}}"
                                                       name="accesorio_{{$accesorio->accesorio_translation[0]->translatable_id}}"
                                                       rel="{{$accesorio->articulo->precio}}"
                                                       class="checkbox_accesorio">
                                                <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                                            </label>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach


                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>

            <div class="col-md-12 hidden" id="section_resumen">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="ion ion-ios-gear-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Insurances & Accesories</span>
                            <span class="info-box-number" id="insurance_value">0<small>$</small></span>
                            <input id="insurance_value_input" name="insurance_value_input" hidden>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-aqua-active"><i class="fa fa-fw fa-list-alt"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Sub Total</span>
                            <span class="info-box-number" id="subtotal_value">0<small>$</small></span>
                            <input id="subtotal_value_input" name="subtotal_value_input" hidden>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->

                <!-- fix for small devices only -->
                <div class="clearfix visible-sm-block"></div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green-active"><i
                                    class="ion ion-ios-calculator-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">States Tax</span>
                            <span class="info-box-number" id="states_tax_value">16<small>%</small></span>
                            <input id="states_tax_value_input" name="states_tax_value_input" hidden>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green-active"><i class="ion ion-ios-cart"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Total of MXN</span>
                            <span class="info-box-number" id="total_value">0<small>$</small></span>
                            <input id="total_value_input" name="total_value_input" hidden>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>


            <div class="col-md-12 margin-bottom hidden" id="section_button_personales">
                <div class="col-md-offset-5">
                    <a class="btn btn-app" id="show_personales">
                        <i class="fa fa-user"></i> Datos Personales
                    </a>
                </div>
            </div>

            <div class="col-md-12 margin-bottom hidden" id="section_datos_personales">
                <div class="col-md-12 content-header-wise margin-bottom">
                    <div class="col-md-5">Datos Personales</div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Enter ...">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Apellidos</label>
                        <input type="text" class="form-control" id="apellidos" name="appellidos"
                               placeholder="Enter ...">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="form-group">
                            <label>Sexo</label>
                            <select class="form-control" id="genero">
                                <option value="0">---</option>
                                <option value="M">Masculino</option>
                                <option value="F">Femenino</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Fecha de Nacimiento</label>

                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control" id="birthday">
                        </div>
                        <!-- /.input group -->
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Compañia</label>
                        <input type="text" class="form-control" id="compania" name="compania" placeholder="Enter ...">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="telefono" name="telefono">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Correo</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="correo" name="correo">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Confirmacion Correo</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="confirm_correo"
                               name="confirm_correo">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Fax</label>
                        <input type="text" class="form-control" placeholder="Enter ..." name="fax" id="fax">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Direccion</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="direccion" name="direccion">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Ciudad</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="ciudad" name="ciudad">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" class="form-control" placeholder="Enter ..." name="estado" id="estado">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Pais</label>
                        <input type="text" class="form-control" placeholder="Enter ..." id="pais" name="pais">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Zip</label>
                        <input type="text" class="form-control" placeholder="Enter ..." name="zip" id="zip">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Cantidad de Personas</label>
                        <input type="text" class="form-control" placeholder="Enter ..." name="cant_per" id="cant_per">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group pull-left">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="inhotel" name="inhotel">
                                <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                                <span class="font-check">En hotel</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 margin-bottom" hidden>
                <button class="btn btn-danger">@lang('message.go')</button>
            </div>
        </form>
        <hr class="hr-theme">
        <div class="row">
            <div class="col-md-12 separator-line">
                <h1 class="h1-theme">@lang('message.welcome')</h1>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at tellus sed massa
                    dictum euismod.</p>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at tellus sed massa
                    dictum euismod.
                    Integer aliquet fermentum ornare. Proin commodo finibus nulla, ut tincidunt tellus pretium et.
                    Vestibulum luctus rhoncus vehicula. Aliquam tortor enim, convallis et sapien et, venenatis
                    consectetur eros. Vestibulum lacinia commodo consectetur. Mauris eleifend diam eget purus hendrerit,
                    vitae malesuada urna gravida. Mauris euismod, sapien quis sodales tempor, nisi augue pulvinar urna,
                    et euismod ligula tellus in justo. Morbi vitae magna vel nisi pellentesque ornare ornare a elit.
                    Mauris eu porta ipsum. Quisque justo massa, malesuada sed enim id, ornare malesuada ipsum. Mauris
                    ultricies mollis ipsum, sed vulputate leo mattis iaculis. Nunc felis mauris, semper quis fringilla
                    eget, dapibus eu orci. Vivamus ornare est et varius dictum.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan
                    mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan
                    mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan
                    mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>

            </div>
        </div>
    </div>
    <div class="col-md-3">
        @include('layouts.partials.contentbar')
    </div>
@endsection

@section('extra-script')
    <script type="text/javascript">
        $(function () {
            $('#pickupdh').datetimepicker({
                //daysOfWeekDisabled: [0, 6],
                format: 'DD/MM/YYYY',
                showClear: true,
                //use24hours: true
            });


        });

        $(function () {
            $('#birthday').datetimepicker({
                //daysOfWeekDisabled: [0, 6],
                format: 'DD/MM/YYYY',
                showClear: true,
                //use24hours: true
            });


        });

        $(function () {
            $('#pickupdhh').datetimepicker({
                //daysOfWeekDisabled: [0, 6],
                format: 'LT',
                showClear: true,
                //use24hours: true
            });
            $('#pickupdhh').val('12:00 AM')


        })

        $(function () {
            $('#returndate').datetimepicker({
                //daysOfWeekDisabled: [0, 6],
                format: 'DD/MM/YYYY',
                showClear: true,
                //use24hours: true
            });


        });

        $(function () {
            $('#returnhour').datetimepicker({
                //daysOfWeekDisabled: [0, 6],
                format: 'LT',
                showClear: true,
                //use24hours: true
            });
            $('#returnhour').val('12:00 AM')

        })
    </script>
@endsection