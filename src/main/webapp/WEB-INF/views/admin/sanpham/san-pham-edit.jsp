<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/11/2023
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Cập nhật sản phẩm</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
            Cập nhật sản phẩm
        </h4>

        <div class="container mt-3">
            <form action="" method="POST" class="form-submit-product">
                <div class="row mb-4">
                    <label class="form-label">Chọn hình ảnh</label>
                    <input type="file" id="uploadImage"/>
                    <div class="list-images mt-4">
                    </div>
                </div>

                <div class="row">
                    <div class="col-3">
                        <label for="slug" class="form-label">Slug</label>
                        <input name="slug" type="text" class="form-control" id="slug" readonly/>
                    </div>

                    <div class="col-3">
                        <label for="ten" class="form-label">Tên</label>
                        <input name="ten" type="text" class="form-control" id="ten"/>
                    </div>

                    <div class="col-3">
                        <label for="gia" class="form-label">Giá</label>
                        <input name="gia" type="text" class="form-control" id="gia"/>
                    </div>

                    <div class="col-3">
                        <label for="so-luong" class="form-label">Số lượng</label>
                        <input name="soLuong" type="text" class="form-control" id="so-luong"/>
                    </div>

                    <div class="col-6 mt-4" id="danh-muc">
                        <select class="form-select" name="danhMucSlug">
                            <option value="" selected>Vui lòng chọn danh mục</option>
                            <c:forEach var="item" items="${categoriesProduct}">
                                <option value="${item.slug}">${item.ten}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="col-6 mt-4" id="thuong-hieu">
                        <select class="form-select" name="thuongHieuSlug">
                            <option selected>Vui lòng chọn thương hiệu</option>
                            <c:forEach var="item" items="${brandsProduct}">
                                <option value="${item.slug}">${item.ten}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row mt-4 mb-4">
                    <div class="col-6">
                        <div class="card" id="card-attribute">
                            <div
                                    class="d-flex justify-content-between align-items-center card-header"
                            >
                                <p>Thuộc tính</p>
                                <div class="col-4">
                                    <div class="input-group">
                                        <input
                                                type="text"
                                                class="form-control input-name-atrribute"
                                                placeholder="Nhập thuộc tính"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <p class="card-text card-text-none-attribute">
                                    Chưa có thuộc tính
                                </p>
                                <p class="thuoc-tinh"></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="card" id="card-variant">
                            <div
                                    class="d-flex justify-content-between align-items-center card-header"
                            >
                                <p>Biến thể</p>
                            </div>
                            <div class="card-body">
                                <div class="row mb-4 d-flex align-items-center">
                                    <div class="col-8">
                                        <div class="input-group">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="Thiết lập giá cho tất cả thuộc tính"
                                            />
                                            <button
                                                    class="btn btn-primary"
                                                    type="button"
                                                    id="btn-search"
                                            >
                                                Xác nhận!
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-variant">
                                    <thead>
                                    <tr>
                                        <th class="text-center" scope="col">Tên biến thể</th>
                                        <th class="text-center" scope="col">Giá</th>
                                        <th class="text-center" scope="col">Số lượng</th>
                                        <th class="text-center" scope="col">Chọn hình ảnh</th>
                                    </tr>
                                    </thead>
                                    <tbody class="table-variant-body" id="variants">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-4">
                    <div class="col-6">
                        <label for="chitietsanpham" class="form-label"
                        >Thông tin chi tiết</label
                        >
                        <textarea
                                class="form-control"
                                id="chitietsanpham"
                                name="thongTinChiTiet"
                        ></textarea>
                    </div>

                    <div class="col-6">
                        <label for="motasanpham" class="form-label">Mô tả sản phẩm</label>
                        <textarea
                                class="form-control"
                                id="motasanpham"
                                name="moTa"
                        ></textarea>
                    </div>
                </div>

                <div class="row d-flex">
                    <div class="form-check">
                        <input name="sanPhamMoi" class="form-check-input" type="checkbox" value="1"
                               id="san-pham-moi">
                        <label class="form-check-label" for="san-pham-moi">
                            Sản phẩm mới
                        </label>
                    </div>
                    <div class="form-check">
                        <input name="sanPhamNoiBat" class="form-check-input" type="checkbox" value="1"
                               id="san-pham-noi-bat">
                        <label class="form-check-label" for="san-pham-noi-bat">
                            Sản phẩm nổi bật
                        </label>
                    </div>
                    <div class="form-check">
                        <input name="sanPhamNhieuLuotXem" class="form-check-input" type="checkbox" value="1"
                               id="san-pham-nhieu-luot-xem">
                        <label class="form-check-label" for="san-pham-nhieu-luot-xem">
                            Sản phẩm nhiều lượt xem
                        </label>
                    </div>
                    <div class="form-check">
                        <input name="sanPhamPhoBien" class="form-check-input" type="checkbox" value="1"
                               id="san-pham-pho-bien">
                        <label class="form-check-label" for="san-pham-pho-bien">
                            Sản phẩm phổ biến
                        </label>
                    </div>
                </div>

                <button type="button" class="btn btn-success mb-4 btn-add-product">Submit</button>
            </form>
        </div>

    </div>
</div>

<script src="<c:url value='/template/admin/ckeditor/ckeditor.js'/>"></script>

<script>
    let ckeChiTietSanPham = CKEDITOR.replace("chitietsanpham");
    let ckeMoTaSanPham = CKEDITOR.replace("motasanpham");


    function detailSP() {
        var url = window.location.pathname.split("/");
        var slug = url[url.length - 1];
        console.log(slug);
        $.ajax({
            url: '/api/san-pham/' + slug,
            method: 'GET',
            dataType: 'json',
            success: function (req) {
                $("#slug").val(req.slug);
                $("#ten").val(req.ten);
                $("#gia").val(req.gia);
                $("#so-luong").val(req.soLuong);
                $("#motasanpham").val(req.moTa);
                $("#chitietsanpham").val(req.thongTinChiTiet);
                $("#danh-muc select").val(req.danhMuc.slug)
                $("#thuong-hieu select").val(req.thuongHieu.slug)
                let htmlImage = '';
                $.each(req.anh, (index, item) => {
                    htmlImage += `<img src="/assets/images/sanpham/\${item.hinhAnh}" class="view-image me-4" style="border: 1px solid #ddd;border-radius: 4px; padding: 5px;width: 150px;"/>`;
                })
                $(".list-images").append(htmlImage)

                let htmlThuocTinh = '';
                if(req.thuocTinh.length > 0){
                    $('.card-text-none-attribute').hide()
                }
                $.each(req.thuocTinh, (index, item) => {
                    htmlThuocTinh += `<div class="product-has-attribute mb-3" data-slug="\${item.slug}">
                                            <div class="name-attribute">
                                              <button type="button" class="btn btn-success position-relative">
                                                  \${item.ten}
                                                <span class="btn-remove-parent position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                                    <i class="fa fa-trash-o btn-remove-parent-trash" aria-hidden="true"></i>
                                                </span>
                                              </button>
                                            </div><div class="list-value-attribute mt-3">`;
                        $.each(item.giaTriThuocTinh, (index, item1) => {
                            htmlThuocTinh += `
                                                <button type="button" class="btn btn-secondary btn-sm position-relative me-3 btn-value-attr">
                                                         \${item1.giaTri}
                                                    <span class="btn-remove-children position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                                       <i class="fa fa-trash-o btn-remove-children-trash" aria-hidden="true"></i>
                                                    </span>
                                                </button>

                                           `;
                        })
                        htmlThuocTinh += `  </div><div class="input-group mt-3">
                                              <input type="text" class="form-control input-value-attribute" placeholder="Nhập giá trị">
                                          </div>
                                            </div> `;
                })
                $(".thuoc-tinh").append(htmlThuocTinh)

                let htmlBienThe = '';
                $.each(req.bienThe, (index, item) => {
                    htmlBienThe += `
                        <tr>
                              <td class="text-center name-variant">\${item.ten}</td>
                              <td>
                                <input type="text" value="\${item.gia}" class="form-control price-variant">
                              </td>
                              <td>
                                <input type="text"  value="\${item.soLuong}" class="form-control quantity-variant">
                              </td>
                              <td>
                                <input class="form-control image-variant"  type="file">`;
                    htmlBienThe += `<img src="/assets/images/sanpham/\${item.hinhAnh}" class="image-variant mt-2 hinhanhbase64" style="width: 150px;" />
                             </td>
                            </tr>`;
                })
                $("#variants").append(htmlBienThe)
                console.log(htmlBienThe)
            },
            error: function (xhr, status, error) {
                console.log(error);
                alert('Có lỗi xảy ra: ' + error);
            }
        });
    }
    detailSP();
</script>
</body>
</html>
