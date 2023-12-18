function validateProduct() {
    let ten = $("#ten").val();
    let gia = $("#gia").val();
    let soLuong = $("#so-luong").val();

    if (ten === "") {
        showError("Tên sản phẩm không được để trống");
        return false;
    }
    if (gia === "") {
        showError("Giá không được để trống");
        return false;
    }

    if (soLuong === "") {
        showError("Số lượng không được để trống");
        return false;
    }


    return true;
}

$(".btn-add-product").on("click", function (event) {
    event.preventDefault();
    if (validateProduct()) {
        let data = getDataFromForm();
        data["anh"] = getImageOfProduct();
        if (data["anh"].length === 0) {
            showError("Vui lòng chọn hình ảnh của sản phẩm");
            return false;
        }
        let hasEmptyGiaTris = false;
        data["thuocTinh"] = getAttributeValues();
        $.each(data["thuocTinh"], function (index, item) {
            if (item.giaTris.length === 0) {
                showError("Vui lòng nhập giá trị thuộc tính");
                hasEmptyGiaTris = true;
                return false;
            }
        });
        if (hasEmptyGiaTris) {
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
    }
});
