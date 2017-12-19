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
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.pickupdh')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.returnsame')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.returndate')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.carmodel')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>@lang('message.code')</label>
                    <input class="form-control" type="text">
                </div>
            </div>
            <div class="col-md-12 margin-bottom">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <div class="top-car-component">
                        <span><img src=""><img src="{{asset('/img/icon/cUser.png')}}" class="img-icon"
                                               alt="User Image"/></span>
                        <span><img src=""><img src="{{asset('/img/icon/cDir.png')}}" class="img-icon" alt="User Image"/></span>
                        <span><img src=""><img src="{{asset('/img/icon/cAire.png')}}" class="img-icon"
                                               alt="User Image"/></span>
                        <span><img src=""><img src="{{asset('/img/icon/cMusic.png')}}" class="img-icon"
                                               alt="User Image"/></span>
                        <span><img src=""><img src="{{asset('/img/icon/cPuertas.png')}}" class="img-icon"
                                               alt="User Image"/></span>
                        <span><img src=""><img src="{{asset('/img/icon/cMaleta.png')}}" class="img-icon"
                                               alt="User Image"/></span>

                    </div>
                    <div class="text-center"><img src="{{asset('/img/car/car.png')}}" class="img-car-component"
                                                  alt="User Image"/></div>
                </div>
                <div class="col-md-3"></div>
            </div>
            <hr class="hr-theme">
            <div class="col-md-12 margin-bottom">
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
                                <th>Seguros</th>
                                <th>USD</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>Lorem Ipsun</td>

                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Yech lk</td>

                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="col-md-12 margin-bottom">
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
                                <th>Accesorios </th>
                                <th>(Precio por dia) USD</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>Lorem I</td>

                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Strucn lk</td>

                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-red"><i class="ion ion-ios-gear-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">Insurances</span>
                            <span class="info-box-number">34<small>$</small></span>
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
                            <span class="info-box-number">120<small>$</small></span>
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
                        <span class="info-box-icon bg-green-active"><i class="ion ion-ios-calculator-outline"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-text">States Tax</span>
                            <span class="info-box-number">340<small>$</small></span>
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
                            <span class="info-box-text">Total of USD</span>
                            <span class="info-box-number">56<small>$</small></span>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
            </div>
            <div class="col-md-12 margin-bottom">
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">Datos Pesonales</h3>

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
                                <th>Seguros</th>
                                <th>USD</th>
                            </tr>
                            <tr>
                                <td>1.</td>
                                <td>Lorem Ipsun</td>

                            </tr>
                            <tr>
                                <td>2.</td>
                                <td>Yech lk</td>

                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
            <div class="col-md-12 margin-bottom">
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