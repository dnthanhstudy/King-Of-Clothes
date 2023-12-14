$(".btn-add-product").on("click", function (event) {
    event.preventDefault();
    let data = getDataFromForm();
    data["anh"] = getImageOfProduct();
    if(data["anh"].length === 0){
        showError("Vui lòng chọn hình ảnh của sản phẩm");
        return false;
    }
    data["thuocTinh"] = getAttributeValues();
    if(data["thuocTinh"].length === 0){
        showError("Gía trị thuộc tính không được để trống");
        return false;
    }
    data["bienThe"] = getVariants();

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
