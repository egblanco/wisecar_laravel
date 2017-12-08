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
    </div>
    <div class="col-md-3"></div>
@endsection