(() => {
    const cards = document.querySelectorAll('.card');
    
    for(const card of cards) {
        card.addEventListener("click", () => {
            window.location.href = "./Shop_Item.html"
        });
    }
})();