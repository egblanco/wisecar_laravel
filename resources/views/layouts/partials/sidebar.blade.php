<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar sidebar-style">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar sidebar-style">

        <!-- Sidebar user panel (optional) -->
        @if (! Auth::guest())
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="{{asset('/img/user2-160x160.jpg')}}" class="img-circle" alt="User Image" />
                </div>
                <div class="pull-left info">
                    <p>{{ Auth::user()->name }}</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> {{ trans('adminlte_lang::message.online') }}</a>
                </div>
            </div>
        @endif

        <div class="row center-block text-center">
            <img src="{{asset('/img/icon114x1142.png')}}">
        </div>


        <!-- search form (Optional) -->
        {{--<form action="#" method="get" class="sidebar-form">--}}
            {{--<div class="input-group">--}}
                {{--<input type="text" name="q" class="form-control" placeholder="{{ trans('adminlte_lang::message.search') }}..."/>--}}
              {{--<span class="input-group-btn">--}}
                {{--<button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>--}}
              {{--</span>--}}
            {{--</div>--}}
        {{--</form>--}}
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu side-bar-wise">
            {{--<li class="header">{{ trans('adminlte_lang::message.header') }}</li>--}}
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="{{ url('home') }}"><i class='fa fa-link'></i> <span>HOME</span></a></li>
            <li hidden><a href="#" class="menu-font"><span>CARS</span></a></li>
            <li hidden><a href="#"><span>RATES</span></a></li>
            <li hidden><a href="#"><span>WISE DEALS</span></a></li>
            <li hidden><a href="#"><span>FAQS</span></a></li>
            <li hidden><a href="#"><span>TRAVEL TRIPS</span></a></li>
            <li hidden><a href="#"><span>TESTIMONIALS</span></a></li>
            <li hidden><a href="#"><span>CONTACT US</span></a></li>
        </ul><!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
