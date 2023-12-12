<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 180px">
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
                        <input class="form-check-input allchecked" type="checkbox">
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

            </div>
            <div>

                <div class="row mt-2" style="">
                    <div class="col-5">
                    </div>
                    <div class="col-2">
                    </div>
                    <div class="col-2 mt-3">
                        <strong>Thành tiền : </strong>
                    </div>
                    <div class="col-2 mt-3">
                        <span><strong id="thanhtien">0 ₫</strong></span>
                    </div>
                    <div class="col-1">
                    </div>
                    <%--                    --%>
                    <div class="col-5">
                    </div>
                    <div class="col-2">
                    </div>
                    <div class="col-2 mt-3">
                        <strong>Số tiền giảm : </strong>
                    </div>
                    <div class="col-2 mt-3">
                        <span><strong id="sotiengiam">0 ₫</strong></span>
                    </div>
                    <div class="col-1">
                    </div>

                </div>
            </div>
        </div>

        <div class="khung mb-3">
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                <div class="col-7"></div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            <span><i class='bx bxs-coupon bx-tada bx-flip-vertical'
                                     style='color:#b29898'></i> Voucher</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class=" text-cyan">Chọn hoặc nhập mã</span>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-2 mt-2">
                    <div class="form-check mb-3">
                        <input class="form-check-input allchecked" type="checkbox">
                        <label class="form-check-label">
                            Sản phẩm
                        </label>
                    </div>
                </div>
                <div class="col-1 mt-2">
                    <a>Xóa</a>
                </div>
                <div class="col-4 mt-2">
                    <span>Lưu vào mục đã thích</span>
                </div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            Tổng thanh toán (<span id="totalproduct">0</span> sản phẩm): <span class="text-danger"
                                                                                               style="font-size: 25px"
                                                                                               id="tongthanhtoan">0₫</span>
                        </div>
                        <div class="col-6 text-right">
                            <button class="btn text-light w-75" onclick="muahang()" style="background-color: #C3817B">
                                Mua hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>


<script>


    var idkh = <%=SecurityUtils.getPrincipal().getId()%>;
    async function huyDatHang(){
        await $.ajax({
            url: 'http://localhost:8080/api/hoadon/huydathang/'+idkh,
            method: 'GET',
            success: function(req) {
                ghct()
            },
            error: function(xhr, status, error) {
                showError('Có lỗi xảy ra, hãy liên hệ admin');
            }
        });
    }
    checkChuanBiDat();
    async function checkChuanBiDat(){
        await ghct()
        await $.ajax({
            url: '/api/hoadon/chuanbidat/'+idkh,
            method: 'GET',
            success: async function (req) {
                var data = req.data;
                if (data.length != 0) {
                    if (await showConfirm("Bạn hiện có giỏ hàng đang chuẩn bị đặt hàng,bạn có muốn quay lại quá trình đặt hàng không ?")) {
                        window.location.href = "/checkout"
                    }
                    else {
                        await huyDatHang()
                    }
                }
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }

    var dsCheckbox = [];

    $(".allchecked").click(function () {
        var isChecked = $(this).is(":checked");
        if (isChecked) {
            $(".allchecked").prop("checked", true);
            $("input[name='idghct']").prop('checked', true)
        } else {
            $(".allchecked").prop("checked", false);
            $("input[name='idghct']").prop('checked', false)
        }
        loadDataCheckbox();
    })

    async function getThuocTinhSanPham(slug) {
        let thuocTinhSanPham;
        await $.ajax({
            url: '/api/san-pham/' + slug,
            method: 'GET',
            success: function (req) {
                thuocTinhSanPham = req.thuocTinh;
            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
        return thuocTinhSanPham;
    }

    function getDsBienThe(thuocTinhSanPham, idsp,arrTenBienThe) {
        let html = '';

        thuocTinhSanPham.forEach(function (item,index) {
            console.log(item)
            html += `
        <li>
                                            <div class="color-selector">
                                                <label>\${item.ten}:</label>
                <div class="color-buttons">
        `;
            let dsGiaTriThuocTinh = item.giaTriThuocTinh;
            dsGiaTriThuocTinh.forEach(function (thuoctinhchitiet) {
                let isActive = thuoctinhchitiet.giaTri==arrTenBienThe[index]?"active":"";
                var ten = thuoctinhchitiet.giaTri;
                var id1 = thuoctinhchitiet.id;
                html += `
                    <button class="color-button ghct-\${idsp} button-giatri giatri-\${item.id} \${isActive}" data-thuoctinh="\${item.id}" data-id="\${id1}">\${ten}</button>
                `
            });
            html += `
            </div>
                                            </div>
                                        </li>
                `;
        })
        return html;
    }

    function setGiaTien(giaTien,giaTienKm,idGhct) {
        var html = '';
        console.log(giaTienKm)
        if (!giaTienKm){
            html+=  `
            <b id="giatienbienthe-km-\${idGhct}">\${giaTien}₫</b>
            `
        }else{
            html+=`
            <b id="giatienbienthe-km-\${idGhct}">\${giaTienKm}₫</b>
            <p><del id="giatienbienthe-\${idGhct}">\${giaTien}₫</del></p>
            `
        }
        return html;
    }
    async function ghct() {
        await $.ajax({
            url: '/api/user/giohang/' + idkh,
            method: 'GET',
            success: function (data) {
                console.log(data)
                var tbody = $("#cart");
                tbody.empty();
                if (data.length==0){
                    tbody.append(`
                    <h3 class="text-center"> Bạn chưa thêm sản phẩm vào giỏ hàng</h3>
                    `)
                }else{
                    data.forEach(async function (sp){
                        console.log(sp)
                        const thuocTinhSanPham =await getThuocTinhSanPham(sp.slugSanPham);
                        const htmlGiaTien = setGiaTien(sp.giaTien,sp.giaTienKm,sp.idGhct);
                        const htmlthuoctinh = getDsBienThe(thuocTinhSanPham,sp.idGhct,sp.tenBienThe.split(","));
                        var html =
                            `
<div class="row mt-2" style="border-bottom: 1px solid #dedede">
    <div class="col-5">
                               <div class="form-check align-items-center justify-content-between mb-3 datacart">
                                   <input class="form-check-input" type="checkbox" name="idghct" value="\${sp.idGhct}">
            <label class="form-check-label"">
                <div class="mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-lg-3">
<a href="/san-pham/\${sp.slugSanPham}">
                            <img src="/assets/images/sanpham/\${sp.image}" class="img-fluid rounded-start" alt="...">
</a>
                        </div>
                        <div class="col-lg-9">
                            <div class="card-body">
                                <a style="color: black; text-decoration: none;" href="/san-pham/\${sp.slugSanPham}"><h5 class="card-title line-clamp-2">\${sp.tenSanPham}</h5></a>
                                <div class="btn-group">
                                                    <span class="dropdown-toggle"  data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false" >
                                                        Phân loại hàng
                                                    </span>
                                    <ul class="dropdown-menu p-3" >
                                        \${htmlthuoctinh}
                                        <li class="text-right ">
                                            <button type="button" class="btn btn-light cancelbutton"  >Back</button>
                                            <button type="button" class="btn text-light cancelbutton xacnhanthuoctinh" value="ghct-\${sp.idGhct}" style="background-color: #C3817B" >Xác nhận</button>
                                        </li>
                                    </ul>

                                </div>
                                <p id="tenbienthe-\${sp.idGhct}">\${sp.tenBienThe}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </label>
        </div>
    </div>
    <div class="col-2">
                    \${htmlGiaTien}
                </div>
 <div class="col-2">
                    <span>
                        <div class="input-group " style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" onclick="thayDoiSoLuong(\${sp.idGhct},-1)">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center slthis" data-idghct="\${sp.idGhct}" value="\${sp.soLuong}" id="soluong-\${sp.idGhct}">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus" onclick="thayDoiSoLuong(\${sp.idGhct},1)">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                    </span>
                </div>
    <div class="col-2">
        <b id="tongtien-\${sp.idGhct}">\${sp.tongTien}₫</b>
    </div>
    <div class="col-1">
        <a>Xóa</a>
    </div>
</div>

                            `;
                        tbody.append(html);
                    })
                }


            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }


    $(document).on("click", '.button-giatri', function () {
        var giatri = $(this).data('thuoctinh'); // Lấy giá trị của data-thuoctinh từ button được click

        $('.giatri-' + giatri).removeClass('active'); // Loại bỏ lớp active từ tất cả các button có class giatri-1
        $(this).addClass('active'); // Thêm lớp active cho các button có giatri-1 tương ứng
    });
    $(document).on("click", '.cancelbutton', function () {
        $(this).closest(".show").removeClass('show');
    });
    $(document).on("input", '.slthis', function () {

        let idghct = $(this).attr("data-idghct");

        thayDoiSoLuong(idghct,0);
    });
    $(document).on("click", '.xacnhanthuoctinh', function () {
        let getGiaTri = $(this).val();
        let activeGetGiaTri = $(`.\${getGiaTri}.active`);
        let dsThuocTinhId = [];
        activeGetGiaTri.each(function () {
            dsThuocTinhId.push($(this).data('id'));
        });
        var ghctId = getGiaTri.split("-")[1];
        updateGioHangChiTiet(ghctId, dsThuocTinhId)
    });

    function updateGioHangChiTiet(idghct, dsThuocTinhId) {
        $.ajax({
            url: '/api/user/giohang/updateCart?idghct=' + idghct + '&data=' + dsThuocTinhId.join(","),
            method: 'GET',
            success: function (req) {
                $("#tenbienthe-"+idghct).text(req.tenBienThe);
                $("#giatienbienthe-"+idghct).text(req.giaTienKm+"₫");
                $("#giatienbienthe-km-"+idghct).text(req.giaTien+"₫");
                $("#tongtien-"+idghct).text(req.giaTien+"₫");
                tongTienTheoGhct(dsCheckbox);
                showSuccess("Thành công");
            },
            error: function (xhr, status, error) {
                showError("Có lỗi xảy ra")
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }

    function tongTien() {
        $.ajax({
            url: '/api/user/giohang/tongtienghct?dsghct=',
            method: 'GET',
            success: function (req) {
                var data = req.data;
                $("#thanhtien").html(data + "₫");
                $("#tongthanhtoan").html(data + "₫");

            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });

    }

    function thayDoiSoLuong(idghct, sl) {
        let slgValue = $("#soluong-" + idghct).val().trim(); // Lấy giá trị từ input và loại bỏ các khoảng trắng ở đầu và cuối chuỗi

        // Kiểm tra nếu giá trị nhập vào là rỗng hoặc không phải là số
        let soLuongHienTai;
        if (slgValue === '' ) {
            soLuongHienTai = 1; // Gán giá trị mặc định là 1
        }else if (isNaN(slgValue)){
            soLuongHienTai = 1; // Gán giá trị mặc định là 1
            $("#soluong-" + idghct).val(1)
        }else {
            soLuongHienTai = parseInt(slgValue)+sl; // Chuyển đổi giá trị thành số nguyên
            if (soLuongHienTai<1){
                showError("Số lượng không thể bé hơn 0");
                return;
            }
            $("#soluong-" + idghct).val(soLuongHienTai)
        }

        // Gọi API với giá trị soLuongHienTai

        console.log(soLuongHienTai);

        $.ajax({
            url: '/api/user/giohang/thaydoisoluong',
            method: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({
                idGhct: idghct,
                soLuong: soLuongHienTai
            }),
            success: async function (req) {
                var data = req.data;
                $("#tongtien-" + data.idGhct).text(data.tongTien+"₫");
                tongTienTheoGhct(dsCheckbox);
            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }


    function muahang() {
        var listsp = getValByCheckbox();
        if (listsp.length == 0) {
            showError("Bạn chưa chọn sản phẩm để mua")
            return;
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
                //     console.log(req)
                window.location.href = "/checkout"
            },
            error: function (xhr, status, error) {
                console.log(error)
                showError("Có lỗi xảy ra");
            }
        });
    }



    // Đặt sự kiện delegating cho phần tử body để bắt sự kiện click của checkbox

    $(document).on('click', 'input[name="idghct"]', function () {
        // Xử lý sự kiện tại đây
        loadDataCheckbox()
    });

    function loadDataCheckbox() {
        var listCheckbox = getValByCheckbox();
        if (listCheckbox.length==0){
            $(".allchecked").prop("checked",false)
        }
        dsCheckbox = listCheckbox;
        tongTienTheoGhct(dsCheckbox)
    }

    function getValByCheckbox() {
        return $("input[name='idghct']:checked").map(function () {
            return this.value;
        }).get();
    }

    function tongTienTheoGhct(listCheckbox) {
        if (listCheckbox.length == 0) {
            $("#thanhtien").html(0 + "₫");
            $("#tongthanhtoan").html(0 + "₫");
            $("#totalproduct").html(0);
            return;
        }
        $.ajax({
            url: '/api/user/giohang/tongtienghct?dsghct=' + listCheckbox.join(","),
            method: 'GET',
            contentType: 'application/json',
            success: function (req) {
                var data = req.data;
                $("#thanhtien").html(data.tongTien + "₫");
                $("#tongthanhtoan").html(data.tongTienThuc + "₫");
                $("#sotiengiam").html(data.soTienGiam + "₫");
                $("#totalproduct").html(listCheckbox.length);
            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
</script>