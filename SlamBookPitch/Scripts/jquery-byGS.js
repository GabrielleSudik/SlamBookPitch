$(function () {

    //this is your own jquery page.
    //no idea if you're doing it right lol

    //try: hiding bigReveal stuff onload
    //then reveal on hover, maybe fade when unhovered.

    $('li: even').addClass('.firstFontFamily');
    $('li: odd').addClass('.secondFontFamily');

    $('.bigReveal').hide();

    $('.bigReveal').hover(function () {
        $('.bigReveal').show('fast').fadeOut(2000);

    });
});