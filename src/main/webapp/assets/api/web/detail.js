const lenOfAttribute = parseInt($('#len-attribute').val());
let variantId = null;
$("#product").on("change", "input[type='radio']", function () {
    const lenChecked = $('#product input[type="radio"]:checked').length;
    if (lenChecked === lenOfAttribute) {
        let attributeId = [];
        $('#product input[type="radio"]:checked').each(function () {
            attributeId.push(parseInt($(this).val()));
        })
        $.ajax({
            url: "/api/bien-the",
            method: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(attributeId),
            success: (response) => {
                variantId = response.id;
                $('.product-origin').text(response.gia);

                if (response.hinhAnh !== null) {
                    $('.product-image-primary').attr('src', '/assets/images/sanpham/' + response.hinhAnh);
                }
                if (response.soLuong !== null) {
                    $('.product-quantity').text(response.soLuong + " sản phẩm có sẵn")
                }
                if (response.khuyenMaiHienThiResponse !== null) {
                    $('.product-buy').text(response.giaBan)
                }

                $('.product-price-custom-vnd').each(function (index, item) {
                    let res = $(item).html();
                    if (res.indexOf("đ") === -1) {
                        let numericValue = parseInt(res.replace(/[^\d]/g, ''));
                        let formattedValue = new Intl.NumberFormat('vi-VN', {
                            style: 'currency',
                            currency: 'VND'
                        }).format(numericValue);
                        $(item).html(formattedValue);
                    }
                });

            },
            error: (error) => {
                console.log(error);
            }
        });
    }
});

$("#buy-product-now").on('click', function () {
    actionWhenClick($(this));
});

$('#add-cart').on('click', function () {
   actionWhenClick($(this));
});

function createCart(successCallback, errorCallback) {
    let data = {};
    data['maKhachHang'] = customerCodeWhenLogin;
    $.ajax({
        url: "/api/gio-hang",
        method: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: (response) => {
            successCallback(response);
        },
        error: (error) => {
            errorCallback(error);
        }
    })
}

function addProduct(data, successCallback, errorCallback) {
    $.ajax({
        url: "/api/gio-hang-chi-tiet",
        method: "POST",
        contentType: "application/json; charset=utf-8",
        data: JSON.stringify(data),
        success: (response) => {
            successCallback();
        },
        error: (error) => {
            errorCallback(error);
        }
    })
}

function actionWhenClick(buttonClick){
    if (customerCodeWhenLogin === "null") {
        window.location.href = '/login?is_not_login';
    }
    else if (variantId === null) {
        showError("Vui lòng chọn sản phẩm")
    } else {
        createCart(
            function (response) {
                let data = {};
                data['idGioHang'] = response;
                data['idBienThe'] = variantId;
                data['soLuong'] = parseInt($('#quantity').val());
                data['idSanPham'] = parseInt($('#product-id').val());

                addProduct(data,
                    function () {
                        console.log(buttonClick.prop('id'))
                        if (buttonClick.prop('id') === "add-cart") {
                            showSuccess("Thêm sản phẩm vào giỏ hàng thành công");
                            variantId = null;
                            $('#product').find('input[type=radio]').prop('checked', false);
                            $('#quantity').val(1);
                        } else {
                            // redirect hiển thị giỏ hàng
                            window.location.href = "/cart"
                        }
                    }
                    ,
                    function (error) {
                        showError(error.responseJSON.error)
                    }
                )

            }, function (error) {
                console.log(error)
            })
    }
}