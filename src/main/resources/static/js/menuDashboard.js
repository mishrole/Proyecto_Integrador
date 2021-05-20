// Reorganización de menu y contenido
function changeDashboard () {
    $('.menu__header > a > .marker > p').first().next().toggleClass('d-lg-block');
    $('.menu__header > a').toggleClass('d-none');
    $('.menu__header').toggleClass('justify-content-between');
    $('.menu__header').toggleClass('justify-content-around chevron__marker');
    $('.menu__body__list > li > a > div').toggleClass('justify-content-lg-start');
    $('.menu__body__list > li > a > div > p.d-none').toggleClass('d-lg-block');
    $('.menu__body').first().toggleClass('pe-lg-4');
    $('#menuSidebarLarge > div.menu__fixed').first().toggleClass('collapsed');
    $('#dashboardContent').toggleClass('col-md-10 col-md-11');
    $('#menuSidebarLarge').toggleClass('col-md-2 col-md-1');
}

// Reemplazar el icono del Menu en LG
$('#menuChevron').on('click', () => {
    let chevronSide = '';

    $('#menuChevron').empty();
    const icon = document.createElement("i");
    icon.className = 'primary__color';

    $('#menuSidebarLarge').toggleClass('active');
    
    if($('#menuSidebarLarge').hasClass('active')) {
        chevronSide = 'right'; // Ocultar
    } else {
        chevronSide = 'left'; // Mostrar
    }

    icon.setAttribute("data-feather", `chevrons-${chevronSide}`);
    $('#menuChevron').append(icon);
    feather.replace();

    changeDashboard();

});

// Reemplazar el icono del Menu en XS SM y MD
$('#menuIconBtn').on('click', () => {

    $('#menuIconBtn').empty();
    const icon = document.createElement("i");

    if($('#menuHamburger').attr('aria-expanded') === 'true') {
        icon.setAttribute("data-feather", "x");
    } else {
        icon.setAttribute("data-feather", "menu");
    }

    $('#menuIconBtn').append(icon);
    feather.replace();
    
});
