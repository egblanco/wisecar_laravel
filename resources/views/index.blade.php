<!-- Stored in resources/views/child.blade.php -->

@extends('layouts.app')

@section('htmlheader_title', 'WiseCar')
{{--@section('contentheader_title', 'Pagina de Inicio')--}}
{{--@section('contentheader_description', 'Pagina de Inicio')--}}

@section('main-content')
    <div class="col-md-9">
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
            <div class="col-md-12">
                <button class="btn btn-danger">@lang('message.go')</button>
            </div>
        </form>
        <hr class="hr-theme">
        <div class="row">
            <div class="col-md-12 separator-line">
                <h1 class="h1-theme">@lang('message.welcome')</h1>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at tellus sed massa dictum euismod.</p>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                <p class="p-theme">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque at tellus sed massa dictum euismod.
                    Integer aliquet fermentum ornare. Proin commodo finibus nulla, ut tincidunt tellus pretium et.
                    Vestibulum luctus rhoncus vehicula. Aliquam tortor enim, convallis et sapien et, venenatis
                    consectetur eros. Vestibulum lacinia commodo consectetur. Mauris eleifend diam eget purus hendrerit,
                    vitae malesuada urna gravida. Mauris euismod, sapien quis sodales tempor, nisi augue pulvinar urna,
                    et euismod ligula tellus in justo. Morbi vitae magna vel nisi pellentesque ornare ornare a elit.
                    Mauris eu porta ipsum. Quisque justo massa, malesuada sed enim id, ornare malesuada ipsum. Mauris
                    ultricies mollis ipsum, sed vulputate leo mattis iaculis. Nunc felis mauris, semper quis fringilla
                    eget, dapibus eu orci. Vivamus ornare est et varius dictum.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>
                <p class="p-theme">Phasellus vel venenatis lorem. Aenean magna felis, maximus ullamcorper accumsan mattis, dapibus ut
                    metus. Morbi laoreet odio a elit tempor, sed consequat velit faucibus. Aliquam sed magna aliquet,
                    imperdiet metus vel, imperdiet turpis. Maecenas varius nunc vitae metus mollis iaculis. Quisque
                    faucibus orci eu erat porta, dapibus ullamcorper mi lobortis. Ut ut eros ante. Proin accumsan quis
                    erat sit amet faucibus. Curabitur accumsan quis odio ut ullamcorper. Suspendisse ultricies nibh
                    efficitur fringilla pellentesque. Maecenas sed convallis ex.</p>

            </div>
        </div>
    </div>
    <div class="col-md-3"></div>
@endsection