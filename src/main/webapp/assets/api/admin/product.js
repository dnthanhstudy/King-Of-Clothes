function validateProduct() {
    let ten = $("#ten").val().trim();
    let gia = $("#gia").val().trim();
    let soLuong = $("#so-luong").val().trim();

    if (ten === "") {
        showError("Tên sản phẩm không được để trống");
        return false;
    }
    if (gia === "") {
        showError("Giá không được để trống");
        return false;
    }
    else if(isNaN(gia)){
        showError("Giá không hợp lệ. Vui lòng nhập số");
        return false;
    }

    if (soLuong === "") {
        showError("Số lượng không được để trống");
        return false;
    }
    else if(isNaN(soLuong)){
        showError("Số lượng không hợp lệ. Vui lòng nhập số");
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
        $.each(data["bienThe"], function (index, item) {
            if (isNumber(item.gia) === false || isNumber(item.soLuong) === false) {
                showError("Số lượng hoặc giá không đúng định dạng. Xin kiểm tra lại");
                hasEmptyGiaTris = true;
                return false;
            }
        });
        if (hasEmptyGiaTris) {
            return false;
        }
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
