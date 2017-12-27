$(document).ready(function () {

    //Select Car
    $('#carmodel').on('change', function() {
        if( this.value != '0' )
            $('#section_auto').removeClass('hidden');
        else
            $('#section_auto').addClass('hidden');

    })

});