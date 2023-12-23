loadProductActive();

function loadProductActive(){
    $.ajax({
        url: "/api/gio-hang/" + customerCodeWhenLogin,
        method: "GET",
        dataType: "json",
        success: (response) => {
            let html = '';
            $.each(response.gioHang, (index, item) => {
                html += `<div style="border-bottom: 1px solid #dedede">
                              <div class="row mt-2 d-flex justify-content-center align-items-center">
                                <div class="col-5">
                                  <div class="form-check align-items-center justify-content-between mb-3">
                                    <input class="form-check-input" type="checkbox" />
                                    <label class="form-check-label">
                                      <div class="mb-3" style="max-width: 540px">
                                        <div class="row g-0">
                                          <div class="col-lg-3">
                                            <a href="">
                                              <img
                                                src="/repository/${item.image}"
                                                class="img-fluid rounded-start"
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
                                                </span> <ul style="width: 320px !important;" class="dropdown-menu p-3">`;

                let htmlThuocTinh = '';
                let nameVariant = [];
                $.each(item.thuocTinh, (indexThuocTinh, itemThuocTinh) => {
                    htmlThuocTinh += ` <li>
                                            <div class="selector mt-2">
                                              <label>${itemThuocTinh.ten}:</label>
                                                <div class="d-flex">`;

                    let htmlGiaTriThuocTinh = '';
                    $.each(itemThuocTinh.giaTriThuocTinh, (indexGiaTriThuocTinh, itemGiaTriThuocTinh) => {
                        let isFlag = false;
                        $.each(item.giaTriThuocTinhChecked, (indexGiaTriThuocTinhChecked, itemGiaTriThuocTinhChecked) => {
                            if(itemGiaTriThuocTinhChecked === itemGiaTriThuocTinh.id){
                                nameVariant.push(itemGiaTriThuocTinh.giaTri);
                                isFlag = true;
                                return false;
                            }
                        })
                        let iconCheck = '';
                        if(isFlag){
                            iconCheck = `<i class="fas fa-check"></i>`;
                        }
                        htmlGiaTriThuocTinh += `<div class="me-2">
                                                    <button style="border: 2px solid #c3817b" class="btn btn-light">
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
                                          class="btn text-light"
                                          style="background-color: #c3817b"
                                        >
                                          Submit
                                        </button>
                                      </li></ul></div><div class="mt-2"><p>${nameVariant.join(" , ")}</p></div>`;

                html += htmlThuocTinh;

                html += `</div>
                              </div>
                            </div>
                          </div>
                        </label>
                      </div>
                    </div>
                    <div class="col-2">
                        <del>${item.donGia}</del>
                            ${item.giaMua}
                    </div>
                    <div class="col-2">
                      <span>
                        <div class="input-group" style="width: 100px">
                          <div class="input-group-btn">
                            <button class="btn btn-sm btn-primary btn-minus">
                              <i class="fa fa-minus"></i>
                            </button>
                          </div>
                          <input
                            type="text"
                            class="form-control form-control-sm bg-secondary text-center slthis"
                            value="${item.soLuong}"
                          />
                          <div class="input-group-btn">
                            <button class="btn btn-sm btn-primary btn-plus">
                              <i class="fa fa-plus"></i>
                            </button>
                          </div>
                        </div>
                      </span>
                    </div>
                    <div class="col-2">
                      <b>${item.soTien}</b>
                    </div>
                    <div class="col-1">
                      <a style="cursor: pointer">Xóa</a>
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