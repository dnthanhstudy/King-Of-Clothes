$('.product-price-origin').each(function(index, item) {
    let res = $(item).html().slice(0, -2);
    res = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(res);
    $(item).html(res);
});