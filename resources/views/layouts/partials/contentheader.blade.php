<!-- Content Header (Page header) -->
<section class="content-header">
    {{--<h1>--}}
    {{--@yield('contentheader_title', 'Page Header here')--}}
    {{--<small>@yield('contentheader_description')</small>--}}
    {{--</h1>--}}
    {{--<ol class="breadcrumb">--}}
    {{--<li><a href="#"><i class="fa fa-dashboard"></i> {{ trans('adminlte_lang::message.level') }}</a></li>--}}
    {{--<li class="active">{{ trans('adminlte_lang::message.here') }}</li>--}}
    {{--</ol>--}}
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-9 content-header-wise">
                <div class="col-md-5">@lang('message.makereservationnow')</div>
                <div class="col-md-4"><span class="content-header-wise-action">@lang('message.view')</span>
                    <span class="content-header-wise-action">@lang('message.modify')</span>
                    <span class="content-header-wise-action">@lang('message.cancel')</span></div>
                <div class="col-md-3">
                    <span class="content-header-wise-step">@lang('message.step')</span>
                    <span class="content-header-wise-step">1</span>
                    <span class="content-header-wise-step">2</span>
                    <span class="content-header-wise-step">3</span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-4 content-header-wise-face"><i class="fa fa-facebook"></i></div>
                <div class="col-md-4 content-header-wise-twt"><i class="fa fa-twitter"></i></div>
                <div class="col-md-4 content-header-wise-gplus"><i class="fa fa-google-plus"></i></div>
            </div>
        </div>
    </div>
</section>