$(document).ready(function () {

    var seguro_accesorio = 0;
    var tax = 16;
    var subtotal = 0;
    var total = 0;
    var idioma = $('meta[name="locale"]').attr('content');
    var precio_total = 0;
    var subtotal = 0;

    $('.checkbox_seguro').on("click", function () {
        if ($(this).prop('checked')) {
            seguro_accesorio += parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
            get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $('#returndate').val());
        }
        else {
            seguro_accesorio -= parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
            get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $('#returndate').val());
        }

    });

    $('.checkbox_accesorio').on("click", function () {
        if ($(this).prop('checked')) {
            seguro_accesorio += parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
            get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $('#returndate').val());
        }
        else {
            seguro_accesorio -= parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
            get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $('#returndate').val());
        }

    });

    function update_wrapper_heigth() {
        var contencontent_height = $(".contencontent_height").height();
        var sidebar_height = $(".sidebar").height();

        $(".content-wrapper, .right-side").css('min-height', +sidebar_height + contencontent_height);
    }

    $('#show_personales').on("click", function () {
        $('#section_datos_personales').removeClass('hidden');
        $('#show_personales').addClass('hidden');
        update_wrapper_heigth();
    });

    function clear_sections() {
        $('#section_auto').addClass('hidden');
        $('#section_seguros').addClass('hidden');
        $('#section_accesorios').addClass('hidden');
        $('#section_button_personales').addClass('hidden');
        $('#section_resumen').addClass('hidden');
        update_wrapper_heigth();
    }

    $('#pickupdh').on('dp.change', function (e) {
        get_precio_alquiler_auto_by_date($('#carmodel').val(), $(this).val(), $('#returndate').val());
    })

    $('#returndate').on('dp.change', function (e) {
        get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $(this).val());
    })

    function get_precio_alquiler_auto_by_date(id_auto, fecha_inicio, fecha_fin) {
        var data_value = {
            id_auto: id_auto,
            fecha_inicio: fecha_inicio,
            fecha_fin: fecha_fin,
            idioma: $('meta[name="locale"]').attr('content')
        }
        $.ajax({
            type: "post",
            data: data_value,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: "/get_precio_alquiler_auto_by_date_range/",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    if(parseInt(data.precio_total) != -1){
                        precio_total = parseInt(data.precio_total);
                        precio_total += seguro_accesorio;
                        subtotal = precio_total;
                        precio_total = precio_total + (precio_total * (16/100));
                        $('#total_value').html(precio_total + '<small>$</small>');
                        $('#total_value_input').val(precio_total);
                        $('#subtotal_value').html(subtotal + '<small>$</small>');
                        $('#subtotal_value_input').val(subtotal);
                        if(parseInt(data.dias) == 0 || parseInt(data.dias) == 1)
                            $('#cantidad_dias').html('Periodo de reserva: 1 Dia');
                        else
                            $('#cantidad_dias').html('Periodo de reserva: ' + data.dias + ' Dias');
                    }
                    else{

                    }

                }
            }
        });


    }

    //Select Car
    $('#carmodel').on('change', function () {

        var id_value = this.value;
        var idioma = $('meta[name="locale"]').attr('content');
        var data_value = {
            id: id_value,
            idioma: idioma
        }

        $.ajax({
            type: "post",
            data: data_value,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            url: "/get_car_by_id/",
            dataType: "json",
            success: function (data) {
                if (data != null) {
                    if (data.auto != null) {

                        var aire = '';
                        var music = '';
                        var grande = '';
                        var pequena = '';

                        if (data.auto.aire == '1') {
                            if (idioma == 'es')
                                aire = 'SI';
                            else
                                aire = 'YES'
                        }
                        else
                            aire = 'NO';

                        if (data.auto.cd_reproductor == '1') {
                            if (idioma == 'es')
                                music = 'SI';
                            else
                                music = 'YES'
                        }
                        else
                            music = 'NO';

                        if (idioma == 'es') {
                            grande = 'Grande ';
                            pequena = 'Pequeña ';
                        }
                        else {
                            grande = 'Big ';
                            pequena = 'Little ';
                        }

                        if (id_value != '0') {
                            $('#section_auto').removeClass('hidden');
                            $('#section_seguros').removeClass('hidden');
                            $('#section_accesorios').removeClass('hidden');
                            $('#section_button_personales').removeClass('hidden');
                            $('#section_resumen').removeClass('hidden');
                            $('#img_car').html('<img src="/img/car/' + data.auto.image + '" class="img-car-component" alt="User Image"/>');
                            var precio_diario = data.auto_oferta.ofertas[0].pivot.precio;
                            var precio_semanal = data.auto_oferta.ofertas[0].pivot.semanal;

                            $('#img_user').html('<img title="' + data.auto.pasajeros + '" id="cuser"  src="/img/icon/cUser.png" class="img-icon" alt="' + data.auto.pasajeros + '"/>');
                            $('#cuser').tooltip();

                            $('#img_cdir').html('<img title="' + data.transmision.nombre + '" id="cdir"  src="/img/icon/cDir.png" class="img-icon" alt="' + data.transmision.nombre + '"/>');
                            $('#cdir').tooltip();

                            $('#img_aire').html('<img title="' + aire + '" id="caire"  src="/img/icon/cAire.png" class="img-icon" alt="' + aire + '"/>');
                            $('#caire').tooltip();

                            $('#img_music').html('<img title="' + music + '" id="cmusic"  src="/img/icon/cMusic.png" class="img-icon" alt="' + music + '"/>');
                            $('#cmusic').tooltip();

                            $('#img_puertas').html('<img title="' + data.auto.puertas + '" id="cpuertas"  src="/img/icon/cPuertas.png" class="img-icon" alt="' + data.auto.puertas + '"/>');
                            $('#cpuertas').tooltip();

                            $('#img_maleta').html('<img title="' + data.auto.maletas_grandes + '-' + grande + '  ' + data.auto.maletas_pequenas + '-' + pequena + '" id="cmaleta"  src="/img/icon/cMaleta.png" class="img-icon" alt="' + data.auto.puertas + '"/>');
                            $('#cmaleta').tooltip();

                            $('#precio_semanal').html('Precio Semanal: <span class="bg-green-font">' + precio_semanal + '<small>$</small></span>');
                            $('#precio_diario').html('Precio diario: <span class="bg-red-font">' + precio_diario + '<small>$</small></span>');

                            update_wrapper_heigth();

                            get_precio_alquiler_auto_by_date($('#carmodel').val(), $('#pickupdh').val(), $('#returndate').val());
                        }
                        else {
                            clear_sections();
                        }


                    }
                    else {
                        clear_sections();
                    }
                }
            }
        });

    })

});