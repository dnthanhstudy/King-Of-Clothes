let images = [];
$("#uploadImage").change(function (event) {
    var reader = new FileReader();
    var file = $(this)[0].files[0];
    reader.onload = function (e) {
        let imageBase64 = e.target.result;
        let name = file.name;

        let image = {};
        image["hinhanhbase64"] = imageBase64;
        image["hinhanh"] = name;

        images.push(image);
    };
    reader.readAsDataURL(file);
    openImage(this);
});

function openImage(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            let img = $(
                '<img class="view-image me-4" style="border: 1px solid #ddd;border-radius: 4px; padding: 5px;width: 150px;">'
            );
            img.attr("src", reader.result);
            img.appendTo(".list-images");
        };
        reader.readAsDataURL(input.files[0]);
    }
}


$(".table-variant").on("click", function (e) {
    const eleClick = $(e.target);
    if (eleClick.hasClass("variant-image")) {
        $(eleClick).change(function (event) {
            var reader = new FileReader();
            var file = $(this)[0].files[0];
            reader.onload = function (e) {

            };
            reader.readAsDataURL(file);
            const className = eleClick.attr("class");
            const lastClass = className.substr(className.lastIndexOf(' ') + 1);
            openImageVariant(this, lastClass, eleClick.parent())
        });
    }
});

function openImageVariant(input, imageView,eleClick) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            let img = $(
                `<img class="${imageView} mt-2 hinhanhbase64" style="width: 150px;">`
            );
            img.attr("src", reader.result);
            eleClick.append(img);
        };
        reader.readAsDataURL(input.files[0]);
    }
}

