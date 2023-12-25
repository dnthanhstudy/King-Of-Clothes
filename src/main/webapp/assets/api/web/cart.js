loadProductActive();

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
    const checked = findÁllChecked();
    $('.total-checked').text(checked.length)
    loadTotalCart(checked);
})

$('#buy-product').on('click', function () {
    const checked = findÁllChecked();
    if (checked.length === 0) {
        showError("Vui lòng chọn sản phẩm cần mua");
        return false;
    }
    checkQuantity(checked,
        function () {
            showSuccess("Bạn có thể mua được hàng nè");
        },
        function (error) {
            showError(error.responseJSON.error)
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
        const checked = findÁllChecked();
        $('.total-checked').text(checked.length)
        loadTotalCart(checked);
    } else if (eleClick.hasClass('btn-remove-cart-item')) {
        deleteCart(eleClick);
    } else if (eleClick.hasClass('btn-not-change')) {
        const parent = eleClick.closest('.cart-item');
        parent.find('.list-attr-name').removeClass('show')
    }

    const eleNameAttr = eleClick.closest('.cart-item').find('.list-attr-name');
    if(!eleNameAttr.hasClass('show')){
        removeIonChecked(eleClick);
    }
})

function findÁllChecked() {
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
                $('.total-cart').text(0);
                $('.total-discount').text(0);
                $('.total-buy').text(0)
                $('.total-checked').text(0)
            } else {
                $('.total-cart').text(response.tongTienHang);
                $('.total-discount').text(response.tietKiem);
                $('.total-buy').text(response.tongSoTien)
            }

        },
        error: (error) => {

        }
    });
}

function loadProductActive() {
    $.ajax({
        url: "/api/gio-hang/" + customerCodeWhenLogin,
        method: "GET",
        dataType: "json",
        success: (response) => {
            let html = '';
            $.each(response.gioHang, (index, item) => {
                html += `<div style="border-bottom: 1px solid #dedede" class="cart-item">
                              <div class="row mt-2 d-flex justify-content-center align-items-center">
                                <div class="col-5">
                                  <div class="form-check align-items-center justify-content-between mb-3">
                                    <input value="${item.id}" class="form-check-input checked-one cart-detail-id" type="checkbox" />
                                    <label class="form-check-label">
                                      <div class="mb-3" style="max-width: 540px">
                                        <div class="row g-0">
                                          <div class="col-lg-3">
                                            <a href="">
                                              <img
                                                src="/repository/${item.image}"
                                                class="img-fluid rounded-start cart-item-image"
                                                alt="..."
                                              />
                                            </a>
                                          </div>
                                          <div class="col-lg-9">
                                            <div class="card-body">
                                              <a style="color: black; text-decoration: none" href=""
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
                        <del class="price-origin">${item.donGia}</del>
                        <p class="ms-2 price-discount">${item.giaMua}</p>
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
                      <b class="price-buy">${item.soTien}</b>
                    </div>
                    <div class="col-1">
                      <a class="btn-remove-cart-item" style="cursor: pointer">Xóa</a>
                    </div>
                  </div>
                </div>`;
            })
            $('#cart').html(html);
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
    const eleCartItem = ele.closest('.cart-item');

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
            loadOneCartItem(response, eleCartItem);

        },
        error: (error) => {
            console.log(error)
        }
    });
}

function updateQuantity(ele, operator) {
    const eleParent = ele.closest('.change-quantity');
    let eleInput = eleParent.find('input');
    let quantity = parseInt(eleInput.val());

    if (operator === "+") {
        quantity += 1;
    } else {
        if (quantity === 1) {
            quantity = 1;
        } else {
            quantity -= 1;
        }
    }
    eleInput.val(quantity);

    updateCart(ele)
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
                        ele.closest('.cart-item').find('.variant-id').val(response.id)
                        updateCart(ele)
                    }
                });
        }, function (error) {

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
    eleCartItem.find('.price-origin').text(data.donGia);
    eleCartItem.find('.price-discount').text(data.giaMua);
    eleCartItem.find('.price-buy').text(data.soTien);

    const listAttrName = eleCartItem.find('.list-attr-name');
    console.log(listAttrName)

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
                                        <button type="button" class="btn btn-light">
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

    const checked = findÁllChecked();
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

function removeIonChecked(eleClick){
    let nameVariants = eleClick.closest('.cart-item').find('.name-variant').text();

    let nameVariant = nameVariants.split(" , ");

    const eleParent = eleClick.closest('.cart-item').find('.btn-attr-name');
    eleParent.find('.fa-check').remove();

    eleParent.find('button').each((index, item) => {
        let textButton = $(item).text().trim();
        nameVariant.forEach(itemButton => {
            if(textButton === itemButton){
                $(item).prepend(`<i class="fas fa-check"></i>`);
            }
        })
    });
}