$(document).ready(function () {

    var seguro_accesorio = 0;
    var tax = 16;
    var subtotal = 0;
    var total = 0;

    $('.checkbox_seguro').on("click", function () {
        if ($(this).prop('checked')) {
            seguro_accesorio += parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
        }
        else{
            seguro_accesorio -= parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
        }

    });

    $('.checkbox_accesorio').on("click", function () {
        if ($(this).prop('checked')) {
            seguro_accesorio += parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
        }
        else{
            seguro_accesorio -= parseInt($(this).attr('rel'));
            $('#insurance_value').html(seguro_accesorio + '<small>$</small>');
            $('#insurance_value_input').val(seguro_accesorio);
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

                        if(data.auto.aire == '1'){
                            if(idioma == 'es')
                                aire = 'SI';
                            else
                                aire = 'YES'
                        }
                        else
                            aire = 'NO';

                        if(data.auto.cd_reproductor == '1'){
                            if(idioma == 'es')
                                music = 'SI';
                            else
                                music = 'YES'
                        }
                        else
                            music = 'NO';

                        if(idioma == 'es') {
                            grande = 'Grande ';
                            pequena = 'Pequeña ';
                        }
                        else{
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

                            $('#img_user').html('<img title="' + data.auto.pasajeros + '" id="cuser"  src="/img/icon/cUser.png" class="img-icon" alt="' + data.auto.pasajeros + '"/>');
                            $('#cuser').tooltip();

                            $('#img_cdir').html('<img title="' + data.transmision.nombre + '" id="cdir"  src="/img/icon/cDir.png" class="img-icon" alt="' + data.transmision.nombre + '"/>');
                            $('#cdir').tooltip();

                            $('#img_aire').html('<img title="' + aire + '" id="caire"  src="/img/icon/cAire.png" class="img-icon" alt="' + aire + '"/>');
                            $('#caire').tooltip();

                            $('#img_music').html('<img title="' + music + '" id="cmusic"  src="/img/icon/cMusic.png" class="img-icon" alt="' + music + '"/>');
                            $('#cmusic').tooltip();

                            $('#img_puertas').html('<img title="' + data.auto.puertas + '" id="cpuertas"  src="/img/icon/cPuertas.png" class="img-icon" alt="' +  data.auto.puertas  + '"/>');
                            $('#cpuertas').tooltip();

                            $('#img_maleta').html('<img title="' + data.auto.maletas_grandes + '-' + grande + '  ' + data.auto.maletas_pequenas + '-' + pequena  + '" id="cmaleta"  src="/img/icon/cMaleta.png" class="img-icon" alt="' +  data.auto.puertas  + '"/>');
                            $('#cmaleta').tooltip();

                            update_wrapper_heigth();
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