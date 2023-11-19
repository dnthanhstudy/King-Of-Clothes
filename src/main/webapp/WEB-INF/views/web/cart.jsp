<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Shopping Cart</p>
        </div>
    </div>
</div>
<div class="container-fluid pt-5">
    <div class="px-xl-5">
        <div class="khung mb-3">
            <div class="row">
                <div class="col-5">
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" id="allchecked">
                        <label class="form-check-label">
                            Sản phẩm
                        </label>
                    </div>
                </div>
                <div class="col-2">
                    <span>Đơn giá</span>
                </div>
                <div class="col-2">
                    <span>Số lượng</span>
                </div>
                <div class="col-2">
                    <span>Tổng tiền</span>
                </div>
                <div class="col-1">
                    <span>Thao tác</span>
                </div>
            </div>
        </div>
        <div class="khung mb-3">
            <div id="cart">
                <div class="row mt-2" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="form-check mb-3">
                            <input class="form-check-input" type="checkbox" value="">
                            <label class="form-check-label" >
                                <div class="mb-3" style="max-width: 540px;">
                                    <div class="row g-0">
                                        <div class="col-lg-3">
                                            <img src="/template/web/img/anh2.png" class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-lg-9">
                                            <div class="card-body">
                                                <h5 class="card-title">Áo polo nam </h5>
                                                <span>Trắng, Size M</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="col-2">
                        <span>99.000₫</span>
                    </div>
                    <div class="col-2">
                    <span>
                        <div class="input-group quantity" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                    </span>
                    </div>
                    <div class="col-2">
                        <span>99.000₫</span>
                    </div>
                    <div class="col-1">
                        <a>Xóa</a>
                    </div>
                </div>
                <div class="row mt-2" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                            <input type="checkbox" class="custom-control-input" checked id="price-2">
                            <label class="custom-control-label" for="price-2">
                                <div class="mb-3" style="max-width: 540px;">
                                    <div class="row g-0">
                                        <div class="col-lg-3">
                                            <img src="/template/web/img/anh3.png" class="img-fluid rounded-start" alt="...">
                                        </div>
                                        <div class="col-lg-9">
                                            <div class="card-body">
                                                <h5 class="card-title">Áo polo nam </h5>
                                                <span>Xanh than, Size L</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="col-2">
                        <span>99.000₫</span>
                    </div>
                    <div class="col-2">
                    <span>
                        <div class="input-group quantity" style="width: 100px;">
                                    <div class="input-group-btn">
<button class="btn btn-sm btn-primary btn-minus" >
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                    </span>
                    </div>
                    <div class="col-2">
                        <span>99.000₫</span>
                    </div>
                    <div class="col-1">
                        <a>Xóa</a>
                    </div>
                </div>
                <%--    Tổng tiền    --%>
            </div>

            <%--           Thành tiền --%>
            <div>
                <div class="row mt-2" style="border-bottom: 1px solid #dedede;height: 75px">
                    <div class="col-5">
                    </div>
                    <div class="col-2">
                    </div>
                    <div class="col-2 mt-3" >
                        <strong>Thành tiền : </strong>
                    </div>
                    <div class="col-2 mt-3" >
                        <span><strong id="thanhtien">0 ₫</strong></span>
                    </div>
                    <div class="col-1">
                    </div>
                </div>
            </div>

        </div>

        <div class="khung mb-3" >
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                <div class="col-7"></div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            <span><i class='bx bxs-coupon bx-tada bx-flip-vertical' style='color:#b29898' ></i> Voucher</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class=" text-cyan">Chọn hoặc nhập mã</span>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-2 mt-2">
                    <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                        <input type="checkbox" class="custom-control-input" checked id="price-all1">
                        <label class="custom-control-label" for="price-all1">Chọn tất cả (3)</label>
                    </div>
                </div>
                <div class="col-1 mt-2">
                    <a>Xóa</a>
                </div>
                <div class="col-4 mt-2" >
                    <span>Lưu vào mục đã thích</span>
                </div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            Tổng thanh toán (<span id="totalproduct">0</span> sản phẩm): <span class="text-danger" style="font-size: 25px" id="tongthanhtoan">0₫</span>
                        </div>
                        <div class="col-6 text-right">
                            <button class="btn text-light w-75" onclick=" muahang()" style="background-color: #C3817B">Mua hàng</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </div>
</div>



<script>
    var idkh = <%=SecurityUtils.getPrincipal().getId()%>;
    var dsCheckbox = [];

    $("#allchecked").click(function (){
        var isChecked = $(this).is(":checked");
        if (isChecked){
            $("input[name='idghct']").prop('checked',true)
        }else{
            $("input[name='idghct']").prop('checked',false)
        }
        loadDataCheckbox();

    })
    async function ghct(){
        await  $.ajax({
            url: '/api/user/giohang/'+idkh,
            method: 'GET',
            success: function(data) {
                var tbody =$("#cart");
                tbody.empty();
                data.forEach(function (sp){
                        var html =
                            `
                                        <div class="row mt-2" style="border-bottom: 1px solid #dedede">
                <div class="col-5">
                    <div class="form-check align-items-center justify-content-between mb-3 datacart">
                        <input class="form-check-input" type="checkbox" name="idghct" value="\${sp.idGhct}">
                        <label class="form-check-label">
                            <div class="mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-lg-3">
                                        <img src="/template/web/img/anh2.png" class="img-fluid rounded-start" alt="...">
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="card-body">
                                            <h5 class="card-title">\${sp.tenSanPham}</h5>
                                            <span>\${sp.tenBienThe}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </label>
                    </div>
                </div>
                <div class="col-2">
                    <span>\${sp.giaTien}₫</span>
                </div>
                <div class="col-2">
                    <span>
                        <div class="input-group quantity" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" onclick="thayDoiSoLuong(\${sp.idGhct},-1)">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="\${sp.soLuong}" id="soluong-\${sp.idGhct}">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus" onclick="thayDoiSoLuong(\${sp.idGhct},1)">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                    </span>
                </div>
                <div class="col-2">
                    <span id="tongtien-\${sp.idGhct}">\${sp.tongTien}</span>
                </div>
                <div class="col-1">
                    <a>Xóa</a>
                </div>
            </div>

                            `;
                        tbody.append(html);
                    })
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }

    function tongTien(){
        $.ajax({
            url: '/api/user/giohang/subtotal/'+idkh,
            method: 'GET',
            success: function(req) {
                var data = req.data;
                $("#thanhtien").html(data+"₫");
                $("#tongthanhtoan").html(data+"₫");

            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });

    }

    function thayDoiSoLuong(idghct,sl){
        $.ajax({
            url: '/api/user/giohang/thaydoisoluong',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                idGhct:idghct,
                soLuong:sl
            }),
            success: async function (req) {
                       await ghct();
                var data = req.data;
                $("#soluong-"+data.idGhct).val(data.soLuong);
                $("#tongtien-"+data.idGhct).html(data.tongTien);
                 tongTienTheoGhct(dsCheckbox);
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
    function muahang() {
        var listsp = getValByCheckbox();
        if (listsp.length == 0) {
            showError("Bạn chưa chọn sản phẩm để mua")
        }
        var listspAsNumbers = listsp.map(str => Number(str));

        var data = JSON.stringify({
            dsghct: listspAsNumbers,
        });
        $.ajax({
            url: '/api/user/giohang/dathang/' + idkh,
            method: 'POST',
            contentType: 'application/json',
            data: data,
            success: function (req) {
                window.location.href = "/checkout"
            },
            error: function (xhr, status, error) {
                showError("Có lỗi xảy ra");
            }
        });
    }
    async function  init(){
        await ghct();
        //tongTien()
    }
    // Đặt sự kiện delegating cho phần tử body để bắt sự kiện click của checkbox

    $(document).on('click', 'input[name="idghct"]', function() {
        // Xử lý sự kiện tại đây
        loadDataCheckbox()
    });
    function loadDataCheckbox(){
        var listCheckbox = getValByCheckbox();
        dsCheckbox = listCheckbox;
        tongTienTheoGhct(dsCheckbox)
    }
    function getValByCheckbox(){
        return $("input[name='idghct']:checked").map(function () {
            return this.value;
        }).get();
    }
    function tongTienTheoGhct(listCheckbox){
        if (listCheckbox.length==0){
            $("#thanhtien").html(0+"₫");
            $("#tongthanhtoan").html(0+"₫");
            $("#totalproduct").html(0);
            return;
        }
        var data = JSON.stringify({
            collection:listCheckbox
        });
        $.ajax({
            url: '/api/user/giohang/subtotaltheoghct/'+idkh,
            method: 'POST',
            contentType: 'application/json',
            data:data ,
            success: function (req) {
                var data = req.data;
                $("#thanhtien").html(data+"₫");
                $("#tongthanhtoan").html(data+"₫");
                $("#totalproduct").html(listCheckbox.length);
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
    init();
</script>