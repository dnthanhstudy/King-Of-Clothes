actionPriceFilter();

$("#filter").on("change", "input[type='checkbox']", function(){
    const priceFilter = $('#price-filter').val();
    filterAndPageable(1, 9, priceFilter);
});

$("#gia").on("click", "button", function(e){
    e.preventDefault();
    const priceFilter = $(this).val();
    $('#price-filter').val($(this).val());
    filterAndPageable(1, 9, priceFilter);
});

function filterAndPageable(page, limit, priceFilter){
    let filters = getCheckedWhenFilter();
    if(Object.keys(filters).length === 0){
        window.location.href = "/danh-sach-san-pham";
    }
    if(priceFilter !== 'not-filter'){
        let inputEle = `<input type="hidden" value="${priceFilter}" name="gia"/>`;
        $('.value-server').append(inputEle);
    }
    Object.keys(filters).map(function(key) {
        let name = key;
        let value = filters[key].join(",");

        let inputEle = `<input type="hidden" value="${value}" name="${name}"/>`;
        $('.value-server').append(inputEle);
        $('#page-product').val(page);
        $('#limit-product').val(limit);
        $('#form-submit-product').submit();
    })
}

function getCheckedWhenFilter(){
    let checkboxChecked = $('#filter input[type="checkbox"]:checked');
    let filters = {};
    checkboxChecked.each(function () {
        var name = $(this).attr('name');
        var value = $(this).val();

        if (!(name in filters)) {
            filters[name] = [];
        }
        filters[name].push(value);
    });
    return filters;
}

function actionPriceFilter(){
    const priceFilter = $('#price-filter').val();
    if(priceFilter !== 'not-filter'){
        let prices = $('#gia button');
        prices.each(function () {
            var value = $(this).val();
            if(value === priceFilter){
                $(this).addClass('btn-secondary');
                return false;
            }
        });
    }
}