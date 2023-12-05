<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Thêm khuyến mại</title>
<section>
    <div class="content-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Thông tin cơ bản</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form-valide" action="#" method="post">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="">Tên khuyến mãi
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="tenKM" name="val-text"
                                                           placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="">Mã khuyến mãi <span
                                                        class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="maKM" name="val-text"
                                                           placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="">Thời gian sử dụng mã
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-3">
                                                    <input type="datetime-local" class="form-control" id="ngayBatDau"
                                                           name="val-datetime-local">
                                                </div>
                                                <div class="col-lg-3">
                                                    <input type="datetime-local" class="form-control" id="ngayKetThuc"
                                                           name="val-datetime-local">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label">Mô tả thêm <span
                                                        class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <textarea class="form-control" id="moTa" name="val-text" rows="2"
                                                              placeholder="..."></textarea>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="card-header">
                            <h4 class="card-title">Thiết lập giảm giá</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form-valide" action="#" method="post">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-username">Loại giảm giá
                                                    | Mức giảm
                                                </label>
                                                <div class="col-lg-6">
                                                    <form action="#">
                                                        <div class="input-group mb-3">
                                                            <div class="input-group-prepend">
                                                                <select class="form-control default-select"
                                                                        id="loaiGiamGia">
                                                                    <option selected="">Chọn loại</option>
                                                                    <option value="1">Theo phần trăm</option>
                                                                    <option value="0">Theo mức tiền</option>
                                                                </select>
                                                            </div>
                                                            <input type="text" class="form-control" id="giaTriGiam"
                                                                   name="val-text" placeholder="Nhập giá trị">
                                                        </div>


                                                    </form>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="">Số lượng
                                                    <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="soLuong" name="val-text"
                                                           placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="">Sản phẩm áp dụng <span
                                                        class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <div class="col-lg-12 ml-auto">
                                                        <button type="button" class="btn btn-primary light mb-2"
                                                                data-toggle="modal" data-target=".bd-example-modal-lg">
                                                            Thêm sản phẩm
                                                        </button>
                                                        <div class="modal fade bd-example-modal-lg" tabindex="-1"
                                                             role="dialog" aria-hidden="true" id="modalSanPham">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Thêm sản phẩm</h5>
                                                                        <button type="button" class="close"
                                                                                data-dismiss="modal">
                                                                            <span>&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <div class="d-flex justify-content-between">
                                                                            <hr>
                                                                            <table class="table table-hover table-striped">
                                                                                <thead>
                                                                                <tr>
                                                                                    <th scope="col"><div class="custom-control custom-checkbox ml-2">
                                                                                        <input type="checkbox" class="custom-control-input" id="checkAll" required="">
                                                                                        <label class="custom-control-label" for="checkAll"></label>
                                                                                    </div></th>
                                                                                    <th scope="col">Tên SP</th>
                                                                                    <th scope="col">Giá</th>
                                                                                    <th scope="col">Danh muc</th>
                                                                                    <th scope="col">Thương hiệu</th>
                                                                                </tr>
                                                                                </thead>
                                                                                <tbody class="tbody-product">
                                                                                </tbody>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button"
                                                                                class="btn btn-danger light"
                                                                                data-dismiss="modal">Đóng
                                                                        </button>
                                                                        <button type="button" class="btn btn-primary" id="getValue" data-dismiss="modal">
                                                                            Xác nhận
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 ml-auto">
                                                    <a href="#" class="btn btn-success" id="addDiscount">Xác nhận</a>
                                                    <a href="/admin/khuyen-mai" class="btn btn-danger">Hủy</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>

    function loadKhuyenMai() {
        $.ajax({
            url: '/api/san-pham',
            method: 'GET',
            success: function (response) {
                // var cardsanpham = $('#cardSanPham');
                // cardsanpham.empty();
                // data.data.forEach(function (item) {
                //     var card = `
                //         <tr>
                //                 <td>
                //                 <div class="form-check">
                //                   <input class="form-check-input" type="checkbox" value="\${item.slug}" id="flexCheckDefault" name="mailId[]">
                //                 </div>
                //                 </td>
                //
                //                 <td class="ml-1 pl-9">\${item.id}</td>
                //                 <td class="ml-1 pl-9">\${item.ten}</td>
                //                 <td class="ml-1 pl-9">\${item.gia}</td>
                //         </tr>
                //         `
                //     cardsanpham.append(card);
                // })
                let html = '';
                $.each(response.data, (index, item) => {
                    html += `<tr>
                                 <td>
                                    <div class="form-check">
                                      <input class="form-check-input" type="checkbox" value="\${item.slug}" id="flexCheckDefault" name="mailId[]">
                                    </div>
                                </td>
                                <td>\${item.ten}</td>
                                <td>\${item.gia}</td>
                                <td>\${item.danhMuc.ten}</td>
                                <td>\${item.thuongHieu.ten}</td>
                           </tr>`;
                })
                $('.tbody-product').html(html);
            },
            error: function (xhr, status, error) {
                console.log(error);
            }
        });
    }

    loadKhuyenMai();

    var checkedValues = [];
    $("#getValue").click(function (){
        checkedValues = []
        $('.form-check-input:checked').each(function () {
            checkedValues.push($(this).val());
        });
        $('#modalSanPham').modal('hide');
        console.log(checkedValues);
        for (var x in checkedValues) {
            var sp = {
                slug: x,
            }
        }
    })

    $("#addDiscount").click(function () {
        var maKM = $("#maKM").val();
        var tenKM = $("#tenKM").val();
        var loaiGiamGia = $('#loaiGiamGia option:selected').val();
        var ngayBatDau = $("#ngayBatDau").val();
        var ngayKetThuc = $("#ngayKetThuc").val();
        var soLuong = $("#soLuong").val();
        var giaTriGiam = $("#giaTriGiam").val();
        var moTa = $("#moTa").val();
        var ngayBatDauFMT = convertDateFormat(ngayBatDau);
        var ngayKetThucFMT = convertDateFormat(ngayKetThuc);
        var listSanPham = [];
        for (var x in checkedValues) {
            listSanPham.push(checkedValues[x]);
        }
        var km = {
            ma: maKM,
            ten: tenKM,
            loai: loaiGiamGia,
            soLuong: soLuong,
            giaTri: giaTriGiam,
            ngayBatDau: ngayBatDauFMT,
            ngayKetThuc: ngayKetThucFMT,
            trangThai: "ACTIVE",
            moTa: moTa,
            listSanPham: listSanPham,
        }
        console.log(km);
        $.ajax({
            url: '/api/khuyen-mai/create',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(km),
            success: function (response) {
                window.location.href = "/admin/khuyen-mai";
                // console.log(response)
            },
            error: function (xhr, status, error) {
                console.log(error);
            }
        });
    })

    function convertDateFormat(inputDate) {
        var date = new Date(inputDate);

        return date;
    }

</script>