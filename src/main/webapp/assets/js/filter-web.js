$("#filter").on("change", "input:checkbox", function(){
    filter();
});

function filter(){
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

    let urlFinal = "";
    for(var key in filters){
        let url = key + "=" + filters[key].join(",") + "&";
        urlFinal += url;
    }
    urlFinal = urlFinal.slice(0, -1);
    window.location.href = "/danh-sach-san-pham?" + urlFinal;
}