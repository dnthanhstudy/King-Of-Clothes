// loadProductActive();
loadProductInActive();
checkChuanBiDat();

async function huyDatHang() {
    await $.ajax({
        url: 'http://localhost:8080/api/hoadon/huydathang/' + idkh,
        method: 'GET',
        success: function (req) {
            loadProductActive()
        },
        error: function (xhr, status, error) {
            showError('Có lỗi xảy ra, hãy liên hệ admin');
        }
    });
}

async function checkChuanBiDat() {
    loadProductActive();
    await $.ajax({
        url: '/api/hoadon/chuanbidat/' + customerIdWhenLogin,
        method: 'GET',
        success: async function (req) {
            var data = req.data;
            console.log(data)
            if (data.length != 0) {
                if (await showConfirm("Bạn hiện có giỏ hàng đang chuẩn bị đặt hàng,bạn có muốn quay lại quá trình đặt hàng không ?")) {
                    window.location.href = "/checkout"
                } else {
                    await huyDatHang()
                }
            }
        },
        error: function (xhr, status, error) {
            console.log("false")
            console.log('Có lỗi xảy ra: ' + error);
        }
    });
}

function formatNumber(number) {
    return new Intl.NumberFormat('vi-VN').format(number);
}

$('.checked-all').on('click', function () {
    if ($(this).is(":checked")) {
        $('.checked-one').each((index, item) => {
            $(item).prop('checked', true);
        })
    } else {
        $('.checked-one').each((index, item) => {
            $(item).prop('checked', false);
        })
    }
    const checked = findAllChecked();
    $('.total-checked').text(checked.length)
    loadTotalCart(checked);
})

$('#buy-product').on('click', function () {
    const checked = findAllChecked();
    if (checked.length === 0) {
        showModalError("Vui lòng chọn sản phẩm cần mua");
        return false;
    }
    checkQuantity(checked,
        function () {

            //  showSuccess("Bạn có thể mua được hàng nè");
            muaHang();
        },
        function (error) {
            showModalError(error.responseJSON.error)
        });

})

$('#cart').on('click', function (e) {
    const eleClick = $(e.target);
    if (eleClick.hasClass('btn-attr-value')) {
        const eleParent = eleClick.closest('.btn-attr-name');
        eleParent.find('.fa-check').each((index, item) => {
            $(item).remove();
        });
        eleClick.prepend(`<i class="fas fa-check"></i>`);
    } else if (eleClick.hasClass('btn-add') || eleClick.hasClass('fa-plus')) {
        updateQuantity(eleClick, "+")
    } else if (eleClick.hasClass('btn-remove') || eleClick.hasClass('fa-minus')) {
        updateQuantity(eleClick, "-")
    } else if (eleClick.hasClass('btn-change-variant')) {
        updateVariant(eleClick);
    } else if (eleClick.hasClass('checked-one')) {
        const checked = findAllChecked();
        $('.total-checked').text(checked.length)
        loadTotalCart(checked);
    } else if (eleClick.hasClass('btn-remove-cart-item')) {
        deleteCart(eleClick);
    } else if (eleClick.hasClass('btn-not-change')) {
        const parent = eleClick.closest('.cart-item');
        parent.find('.list-attr-name').removeClass('show')
    }

    const eleNameAttr = eleClick.closest('.cart-item').find('.list-attr-name');
    if (!eleNameAttr.hasClass('show')) {
        removeIonChecked(eleClick);
    }
})

$('#cart-disable').on('click', function (e) {
    const eleClick = $(e.target);
    if (eleClick.hasClass('deleteBienThe')) {
        deleteBienThe(eleClick);
    }
})

$('#cart').on('input', function (e) {
    const eleClick = $(e.target);
    if (eleClick.hasClass('product-quantity')) {
        let enteredQuantity = parseInt(eleClick.val());
        if (isNaN(enteredQuantity) || enteredQuantity <= 0) {
            enteredQuantity = 1;
        }

        eleClick.val(enteredQuantity);
        updateCart(eleClick);
    }

})

function findAllChecked() {
    let checked = [];
    $('.checked-one:checked').each((index, item) => {
        checked.push(parseInt($(item).val()));
    })
    return checked;
}

function loadTotalCart(data) {
    $.ajax({
        url: "/api/gio-hang-chi-tiet/checked/" + customerCodeWhenLogin,
        method: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: (response) => {
            if (data.length === 0) {
                $('.total-cart').text(0 + " ₫");
                $('.total-discount').text(0 + " ₫");
                $('.total-buy').text(0 + " ₫")
                $('.total-checked').text(0)
            } else {
                $('.total-cart').text(formatNumber(response.tongTienHang) + " ₫");
                $('.total-discount').text(formatNumber(response.tietKiem) + " ₫");
                $('.total-buy').text(formatNumber(response.tongSoTien) + " ₫")
            }

        },
        error: (error) => {

        }
    });
}

function loadGia(donGia, giaMua) {
    if (donGia == giaMua) {
        return `
            <b class="ms-2 price-discount product-price-custom-vnd">${giaMua}</b>
        `;
    } else {
        return `
            <del class="price-origin product-price-custom-vnd">${donGia}</del>
            <b class="ms-2 price-discount product-price-custom-vnd">${giaMua}</b>
        `;
    }
}

function loadGiaInActice(giaGoc, giaMua) {
    if (giaGoc == giaMua) {
        return `
            <b class="ms-2 price-discount product-price-custom-vnd">${giaMua}</b>
        `;
    } else {
        return `
            <del class="price-origin product-price-custom-vnd">${giaGoc}</del>
            <b class="ms-2 price-discount product-price-custom-vnd">${giaMua}</b>
        `;
    }
}

function checkHetHangGioHang(item) {
    let flag = item.trangThaiSanPham && item.soLuongConLaiBienThe > 0;
    return flag;
}

function loadProductActive() {
    $.ajax({
        url: "/api/gio-hang/" + customerCodeWhenLogin,
        method: "GET",
        dataType: "json",
        success: (response) => {
            console.log(response)
            let html = '';
            $.each(response.gioHang, (index, item) => {
                let checkHetHang = checkHetHangGioHang(item);
                let genderInput = checkHetHang == true ? `<input value="${item.id}" name="idghct" class="form-check-input checked-one cart-detail-id" type="checkbox" />` : `<input value="${item.id}" name="idghct" class="form-check-input checked-one cart-detail-id" type="checkbox" disabled />`;
                let setClassCart = checkHetHang == true ? "cart-item" : "special-card";

                //chèn ảnh hết hàng
                let soldOutImage = checkHetHang ? '' : '<img src="/repository/hethang.jpg" style="width: 100px;" class="out-of-stock-image" />';

                console.log(checkHetHang)
                html += `<div style="border-bottom: 1px solid #dedede" class="${setClassCart}">
                              <div class="row mt-2 d-flex justify-content-center align-items-center">
                                <div class="col-5">
                                  <div class="form-check align-items-center justify-content-between mb-3">
                                    ${genderInput}
                                    <label class="form-check-label">
                                      <div class="mb-3" style="max-width: 540px">
                                        <div class="row g-0">
                                          <div class="col-lg-3">
                                            <div class="img-container"> 
                                                <a href="/san-pham/${item.slug}">
                                                  <img
                                                    src="/repository/${item.image}"
                                                    class="img-fluid rounded-start cart-item-image"
                                                    alt="..."
                                                  />
                                                </a>
                                                  <!-- Ảnh thông báo hết hàng -->
                                                 ${soldOutImage}
                                            </div>
                                          </div>
                                          <div class="col-lg-9">
                                            <div class="card-body">
                                              <a style="color: black; text-decoration: none" href="/san-pham/${item.slug}"
                                                ><h5 class="card-title line-clamp-2">${item.tenSanPham}</h5></a
                                              >
                                              <div class="btn-group">
                                                <span
                                                  class="dropdown-toggle"
                                                  data-bs-toggle="dropdown"
                                                  data-bs-auto-close="false"
                                                  aria-expanded="false"
                                                >
                                                  Phân loại hàng
                                                </span> <ul style="width: 450px !important;" class="dropdown-menu p-3 list-attr-name">`;

                let htmlThuocTinh = '';
                let nameVariant = [];
                $.each(item.thuocTinh, (indexThuocTinh, itemThuocTinh) => {
                    htmlThuocTinh += ` <li>
                                            <div class="selector mt-2 btn-attr-name">
                                              <label>${itemThuocTinh.ten}:</label>
                                                <div class="d-flex">`;

                    let htmlGiaTriThuocTinh = '';
                    $.each(itemThuocTinh.giaTriThuocTinh, (indexGiaTriThuocTinh, itemGiaTriThuocTinh) => {
                        let isFlag = false;
                        $.each(item.giaTriThuocTinhChecked, (indexGiaTriThuocTinhChecked, itemGiaTriThuocTinhChecked) => {
                            if (itemGiaTriThuocTinhChecked === itemGiaTriThuocTinh.id) {
                                nameVariant.push(itemGiaTriThuocTinh.giaTri);
                                isFlag = true;
                                return false;
                            }
                        })
                        let iconCheck = '';
                        let isDisable = false;
                        if (isFlag) {
                            iconCheck = `<i class="fas fa-check"></i>`;
                        }
                        htmlGiaTriThuocTinh += `<div class="me-2">
                                                    <button value="${itemGiaTriThuocTinh.id}" style="border: 2px solid #c3817b" class="btn btn-light btn-attr-value">
                                                        ${iconCheck}
                                                        ${itemGiaTriThuocTinh.giaTri}
                                                    </button>
                                                </div>`;


                    })
                    htmlThuocTinh += htmlGiaTriThuocTinh;
                })
                htmlThuocTinh += ` <li class="text-right mt-2">
                                        <button type="button" class="btn btn-light btn-not-change">
                                          Cancel
                                        </button>
                                        <button
                                          type="button"
                                          class="btn text-light btn-change-variant"
                                          style="background-color: #c3817b"
                                        >
                                          Submit
                                        </button>
                                      </li></ul></div>
                                        <div class="mt-2">
                                            <p class="name-variant">${nameVariant.join(" , ")}</p>
                                            <input class="variant-id" type="hidden" name="" value="${item.idBienThe}">
                                        </div>`;

                html += htmlThuocTinh;

                html += `</div>
                              </div>
                            </div>
                          </div>
                        </label>
                      </div>
                    </div>
                    <div class="col-2 d-flex">
                   ${loadGia(item.donGia, item.giaMua)}
                    </div>
                    <div class="col-2">
                      <span>
                        <div class="input-group change-quantity" style="width: 100px">
                          <div class="input-group-btn">
                            <button class="btn btn-sm btn-primary btn-minus btn-remove">
                              <i class="fa fa-minus"></i>
                            </button>
                          </div>
                          <input
                            type="text"
                            class="form-control form-control-sm bg-secondary text-center slthis product-quantity"
                            value="${item.soLuong}"
                          />
                          <div class="input-group-btn">
                            <button class="btn btn-sm btn-primary btn-plus btn-add">
                              <i class="fa fa-plus"></i>
                            </button>
                          </div>
                        </div>
                      </span>
                    </div>
                    <div class="col-2">
                      <b class="price-buy product-price-custom-vnd">${item.soTien}</b>
                    </div>
                    <div class="col-1">
                      <a class="btn-remove-cart-item fs-5" style="cursor: pointer">Xóa</a>
                    </div>
                  </div>
                </div>`;
            })
            $('#cart').html(html);

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

        }
    });
}

function checkQuantity(data, successCallback, errorCallback) {
    $.ajax({
        url: "/api/gio-hang-chi-tiet/checked-quantity/" + customerCodeWhenLogin,
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

function updateCart(ele) {
    let eleCartItem = ele.closest('.cart-item');
    if (!eleCartItem.length) {
        eleCartItem = ele.closest('.special-card');
    }
    let data = {};
    data['id'] = eleCartItem.find('.cart-detail-id').val();
    data['soLuong'] = eleCartItem.find('.product-quantity').val();
    data['idBienThe'] = eleCartItem.find('.variant-id').val();
    $.ajax({
        url: "/api/gio-hang-chi-tiet",
        method: "PUT",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: (response) => {
            showSuccess("Cập nhật giỏ hàng thành công");
            console.log(response);
            if (response.isLoadCart) {
                loadProductActive();
            } else {
                loadOneCartItem(response, eleCartItem);
            }
            $.ajax({
                url: "/api/gio-hang/" + customerCodeWhenLogin,
                method: "GET",
                dataType: "json",
                success: (response) => {
                    if (response === null) {
                        $('.quantity-cart').text(0);
                    } else {
                        const size = response.gioHang.length;
                        $('.quantity-cart').text(size);
                    }
                },
                error: (error) => {
                }
            });
        },
        error: (error) => {
            showError(error.responseJSON.error)
            if(Object.keys(error.responseJSON.details).length > 0){
                eleCartItem.find('.product-quantity').val(error.responseJSON.details.quantity);
            }
        }
    });
}

function updateQuantity(ele, operator) {
    const eleParent = ele.closest('.change-quantity');
    const eleInput = eleParent.find('input');
    let quantity = parseInt(eleInput.val());

    let quantityCurrent = quantity;

    if (operator === "+") {
        quantity += 1;
    } else {
        if (quantity > 1) {
            quantity -= 1;
        }
    }
    if (quantityCurrent == 1 && operator === '-') {

    } else {
        eleInput.val(quantity);
        updateCart(ele);
    }
}

function updateVariant(ele) {
    const parent = ele.closest('.list-attr-name');
    const eleBtnCheck = parent.find('.fa-check');

    let variantIds = [];
    eleBtnCheck.each((index, item) => {
        const eleBtn = $(item).parent();
        variantIds.push(eleBtn.attr("value"));
    })

    changeVariant(variantIds,
        function (response) {
            showConfirm("Bạn muốn thay đổi sản phẩm phải không?")
                .then((confirmed) => {
                    if (confirmed) {
                        var cartItem = ele.closest('.cart-item');
                        if (!cartItem.length) {
                            cartItem = ele.closest('.special-card');
                        }
                        cartItem.find('.variant-id').val(response.id);
                        updateCart(ele);
                        // ele.closest('.cart-item').find('.variant-id').val(response.id)
                        // updateCart(ele)
                    }
                });
        }, function (error) {
            showModalError("Có lỗi xảy ra")
        })
}

function changeVariant(data, successCallback, errorCallback) {
    $.ajax({
        url: "/api/bien-the",
        method: "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        data: JSON.stringify(data),
        success: (response) => {
            successCallback(response)
        },
        error: (error) => {
            errorCallback(errorCallback)
        }
    });
}

function loadOneCartItem(data, eleCartItem) {
    eleCartItem.find('.cart-item-image').attr('src', `/repository/${data.image}`);
    eleCartItem.find('.product-quantity').val(data.soLuong);
    eleCartItem.find('.price-origin').text(formatNumber(data.donGia) + " đ");
    eleCartItem.find('.price-discount').text(formatNumber(data.giaMua) + " đ");
    eleCartItem.find('.price-buy').text(formatNumber(data.soTien) + " đ");

    const listAttrName = eleCartItem.find('.list-attr-name');

    let nameVariant = [];
    let htmlThuocTinh = '';
    $.each(data.thuocTinh, (indexThuocTinh, itemThuocTinh) => {
        htmlThuocTinh += ` <li>
                                <div class="selector mt-2 btn-attr-name">
                                  <label>${itemThuocTinh.ten}:</label>
                                    <div class="d-flex">`;

        let htmlGiaTriThuocTinh = '';
        $.each(itemThuocTinh.giaTriThuocTinh, (indexGiaTriThuocTinh, itemGiaTriThuocTinh) => {
            let isFlag = false;
            $.each(data.giaTriThuocTinhChecked, (indexGiaTriThuocTinhChecked, itemGiaTriThuocTinhChecked) => {
                if (itemGiaTriThuocTinhChecked === itemGiaTriThuocTinh.id) {
                    nameVariant.push(itemGiaTriThuocTinh.giaTri);
                    isFlag = true;
                    return false;
                }
            })
            let iconCheck = '';
            if (isFlag) {
                iconCheck = `<i class="fas fa-check"></i>`;
            }
            htmlGiaTriThuocTinh += `<div class="me-2">
                                                    <button value="${itemGiaTriThuocTinh.id}" style="border: 2px solid #c3817b" class="btn btn-light btn-attr-value">
                                                        ${iconCheck}
                                                        ${itemGiaTriThuocTinh.giaTri}
                                                    </button>
                                                </div>`;


        })
        htmlThuocTinh += htmlGiaTriThuocTinh;
    })
    htmlThuocTinh += ` <li class="text-right mt-2">
                                        <button type="button" class="btn btn-light btn-not-change">
                                          Cancel
                                        </button>
                                        <button
                                          type="button"
                                          class="btn text-light btn-change-variant"
                                          style="background-color: #c3817b"
                                        >
                                          Submit
                                        </button>
                                      </li>`;

    listAttrName.html(htmlThuocTinh);
    listAttrName.removeClass('show')

    eleCartItem.find('.name-variant').text(nameVariant.join(" , "));
    $('.variant-id').val(data.idBienThe)

    const checked = findAllChecked();
    $('.total-checked').text(checked.length)
    loadTotalCart(checked);
}

function deleteCart(eleClick) {
    showConfirm("Bạn muốn xóa sản phẩm này phải không?")
        .then((confirmed) => {
            if (confirmed) {
                const eleInputId = eleClick.closest('.cart-item').find('.cart-detail-id');
                const id = parseInt(eleInputId.val());
                $.ajax({
                    url: "/api/gio-hang-chi-tiet",
                    method: "DELETE",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(id),
                    success: (response) => {
                        showSuccess("Xóa sản phẩm trong giỏ hàng thành công");
                        loadProductActive();
                    },
                    error: (error) => {

                    }
                });
            }
        });
}

function removeIonChecked(eleClick) {
    let nameVariants = eleClick.closest('.cart-item').find('.name-variant').text();

    let nameVariant = nameVariants.split(" , ");

    const eleParent = eleClick.closest('.cart-item').find('.btn-attr-name');
    eleParent.find('.fa-check').remove();

    eleParent.find('button').each((index, item) => {
        let textButton = $(item).text().trim();
        nameVariant.forEach(itemButton => {
            if (textButton === itemButton) {
                $(item).prepend(`<i class="fas fa-check"></i>`);
            }
        })
    });
}

function loadProductInActive() {
    $.ajax({
        url: "/api/xoa-bien-the/cart/" + customerCodeWhenLogin,
        method: "GET",
        dataType: "json",
        success: (response) => {
            console.log(response)


            let html = '';
            $.each(response, (index, item) => {
                html += `<div class="special-card" style="border-bottom: 1px solid #dedede">
                            <div class="row mt-2 d-flex justify-content-center align-items-center cart-delete">
                                <input type="hidden" class="cart-id" value="${item.id}">
                                <div class="col-5">
                                    <div class="form-check align-items-center justify-content-between mb-3 datacart">
                                            <div class="mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-lg-3">
                                                        <img src="/repository/${item.anh}"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-lg-9">
                                                        <div class="card-body">
                                                           <h5 class="card-title line-clamp-2">${item.ten}</h5>
                                                            <div class="btn-group">
                                                                <span class="dropdown-toggle">
                                                                    Phân loại hàng
                                                                </span>
                                                            </div>
                                                            <p class="text-dark mt-3">${item.giaTriBienThe}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-2 d-flex">
                                    ${loadGiaInActice(item.giaGoc, item.giaMua)}
                                </div>
                                <div class="col-2">
                                <span>
                                    <div class="input-group " style="width: 100px;">
                                        ${item.soLuong}
                                    </div>
                                </span>
                                </div>
                                <div class="col-2">
                                    <b class="product-price-custom-vnd">${item.thanhTien}</b>
                                </div>
                                <div class="col-1" style="background: #fff;height: 200px">
                                    <p class="fs-5 d-flex justify-content-center align-items-center deleteBienThe" style="cursor: pointer; color: red; margin-top: 80px; opacity: 1 ">Xóa</p>
                                </div>
                            </div>
                    </div>`;
            })
            $('#cart-disable').html(html);

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

        }
    });
}

function deleteBienThe(eleClick) {
    showConfirm("Bạn muốn xóa sản phẩm này phải không?")
        .then((confirmed) => {
            if (confirmed) {
                const eleInputId = eleClick.closest('.cart-delete').find('.cart-id');
                const id = parseInt(eleInputId.val());
                $.ajax({
                    url: "/api/xoa-bien-the/delete/" + id,
                    method: "DELETE",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(id),
                    success: (response) => {
                        showSuccess("Xóa sản phẩm thành công");
                        loadProductInActive();
                    },
                    error: (error) => {

                    }
                });
            }
        });
}
