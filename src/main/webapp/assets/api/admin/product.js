$(".btn-add-product").on("click", function (event) {
    event.preventDefault();
    let data = getDataFromForm();
    data["thuocTinh"] = getAttributeValues();
    data["bienThe"] = getVariants();
    data["anh"] = getImageOfProduct();

    console.log(data);

    $.ajax({
        url: "/api/san-pham",
        method: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: (response) => {
            showSuccess("Thêm sản phẩm thành công");
        },
        error: (error) => {
            console.log("Error");
        }
    });
});
