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
            window.location.href = "/admin/san-pham";
        },
        error: (error) => {
            console.log(error);
        }
    });
});
