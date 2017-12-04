$(document).ready(function () {

    //this is your own jquery page.
    //no idea if you're doing it right lol

    //try: hiding bigReveal stuff onload
    //then reveal on hover, maybe fade when unhovered.

    //$('li: even').addClass('.firstFontFamily');
    //$('li: odd').addClass('.secondFontFamily');

    $('.bigReveal1').hide();
    $('.bigReveal2').hide();

    $('.introQ1').click(function () {
        $('.bigReveal1').show('fast');
    });

    $('.introQ2').click(function () {
        $('.bigReveal2').show('fast');
    });

});