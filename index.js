(() => {
    const cards = document.querySelectorAll('.card');
    
    for(const card of cards) {
        card.addEventListener('click', () => {
            window.location.href = './Shop_Item.html';
        });
    }

    const btnSingIn = document.querySelector('.btn__Sing-In');
    btnSingIn.addEventListener('click', (e) => {
        e.preventDefault();
        window.location.href = '../_Home/Home.html';
    })

})();