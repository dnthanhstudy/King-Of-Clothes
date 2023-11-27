<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/31/2023
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="btnalldiachi" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"  >
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content" >
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Địa chỉ của tôi</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="height: 450px; overflow-y: scroll;">
                <div class="row" id="alldiachi">
                    <div class="col-10">
                        <div class="ms-3" style="border-bottom: #6C757D">
                            <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
                            <div class="hstack gap-3 ms-3">
                                <div>
                                    <span class="text-dark">Khánh Linh</span>
                                </div>
                                <div class="vr" style="height: 30px"></div>
                                <div >
                                    <span class="">0987654321</span>
                                </div>
                            </div>
                            <div class="ms-3">
                                <p class="">Xóm yên lương, Xã Ngọc Lương, Huyện Yên Thủy, Hòa Bình</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <a class="text-decoration-none" style="color: #00aced" data-bs-target="#formdiachi" data-bs-toggle="modal">Cập nhật</a>
                    </div>

                </div>
                <button class="btn btn-light" onclick="themDiaChi()" data-bs-target="#formdiachi" data-bs-toggle="modal" >
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                        <path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/>
                    </svg>
                    Thêm địa chỉ mới</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="xacNhanDiaChi()">Xác nhận</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="formdiachi" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" style="overflow:hidden;">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Cập nhật địa chỉ</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-6">
                        <div class="mb-3">
                            <label  class="form-label">Tên người nhận</label>
                            <input type="text" class="form-control" name="tenNguoiNhan" id="tennguoinhanform">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Số điện thoại</label>
                            <input type="text" id="sdtform" name="soDienThoai" class="form-control" >
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mb-3">
                            <label class="form-label">Thành phố</label>
                            <select style="width: 100%" class="form-control" name="idThanhPho" id="thanhpho"></select>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Quận/Huyện</label>
                            <select class="form-control " style="width: 100%" name="idHuyen" id="quanhuyen"></select>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Xã</label>
                            <select class="form-control" style="width: 100%" name="idXa" id="xa"></select>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mb-3">
                            <label class="form-label">Số nhà</label>
                            <textarea class="form-control" name="soNha" id="sonha" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="macDinh" value="true"  id="defaultform">
                            <label class="form-check-label" >
                                Đặt làm địa chỉ mặc định
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-light" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Trở lại</button>
                <button class="btn btn-danger" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" onclick="hoanThanh()">Hoàn thành</button>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Check Out</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Check Out</p>
        </div>
    </div>
</div>
<div class="container-fluid pt-5">
    <div class="px-xl-5">
        <div class="khung card">
            <div class="row">
                <h5 style="color: #C3817B"><i class="bi bi-geo-alt-fill"></i> Địa chỉ nhận hàng</h5>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <h5 class="font-weight-bold" id="tennguoinhan">Tuấn Anh <span id="sdt">0389478937</span> </h5>
                </div>
                <div class="col-7">
                    <span id="diachi">Xóm ninh hoà, Xã Yên Trị, Huyện Yên Thủy, Hòa Bình, Vietnam </span><span style="background-color: #C3817B; color: white" id="defaultdc">Mặc định</span>
                </div>
                <div class="col-1">
                    <button class="custom-button" data-bs-target="#btnalldiachi" data-bs-toggle="modal" style="border: none;background: none;padding: 0;cursor: pointer;color: blue;text-decoration: none;">Thay đổi</button>
                </div>
            </div>
        </div>

        <div class="khung card mt-3">
            <div class="row">
                <div class="col-5">
                    <h5>Sản phẩm</h5>
                </div>
                <div class="col-2"></div>
                <div class="col-2">
                    <span>Đơn giá</span>
                </div>
                <div class="col-2">
                    <span>Số lượng</span>
                </div>
                <div class="col-1">
                    <span>Thành tiền</span>
                </div>
            </div>
            <div id="hdct">
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung card mt-2">
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                <div class="col-7"></div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            <span><i class='bx bxs-coupon bx-tada bx-flip-vertical' style='color:#b29898' ></i> Voucher</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class=" text-cyan">Chọn Voucher</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="border-bottom: 1px solid #dedede;">
                <div class="col-5" style="border-right: 1px solid #dedede;">
                    <div class="row mt-3">
                        <div class="col-2">
                            <h6 class="mt-2">Lời nhắn:</h6>
                        </div>
                        <div class="col-10">
                            <input type="text" class="form-control w-75" placeholder="Lưu ý cho shop">
                        </div>
                    </div>
                </div>
                <div class="col-7" >
                    <div class="row my-3" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                        <div class="col-3">
                            <h6>Đơn vị vận chuyển:</h6>
                        </div>
                        <div class="col-7">
                            <h6>Nhanh</h6>
                            <span >Thời gian giao dự kiến <span id="thoigiandukien">2 Th11 - 7 Th11</span></span>
                        </div>
                        <div class="col-2">
                            <span class="float-right sotiengiaohang" >27500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <h6>Được đồng kiểm. <span style="font-size: 20px">℗</span></h6>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-9"></div>
                <div class="col-3">
                    <div class="row">
                        <div class="col-8">
                            <span>Tổng số tiền (<span id="tongsanpham"></span> sản phẩm):</span>
                        </div>
                        <div class="col-4 text-right">
                            <span class="tongtienghct">1.827.500₫</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung card mt-3">
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 20px">
                <div class="col-3">
                    <h5>Phương thức thanh toán:</h5>
                </div>
                <div class="col-9">
                    <button class="btn btn-light" id="paypalButton" style="border: 1px solid #dedede">Ví điện tử</button>
                    <button class="btn btn-light ms-2" id="codButton" style="border: 1px solid #dedede">Thanh toán khi nhận hàng</button>
                </div>
            </div>
            <div class="row" style="border-bottom: 1px solid #dedede;">
                <div class="form-check ms-3 my-3" id="mbBankRadio">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios1" value="mbb" checked>
                    <label class="form-check-label" for="exampleRadios1">
                        <img src="/template/web/img/cashinwallet-dd94.png" style="width: 70px;height: 70px" alt=""> Ví điện tử
                    </label>
                </div>
                <div class="form-check ms-3 my-3" id="vpBankRadio">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="paypal">
                    <label class="form-check-label" for="exampleRadios2">
                        <img src="/template/web/img/pp.png" style="width: 80px;height: 70px" alt=""> PayPal
                    </label>
                </div>
                <div class="thanhtoan">
                    <div class="row my-3">
                        <div class="col-3">
                            <span>Thanh toán khi nhận hàng</span>
                        </div>
                        <div class="col-9">
                            <span>Phí thu hộ: ₫0 VNĐ. Ưu đãi về phí vận chuyển (nếu có) áp dụng cả với phí thu hộ.</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-9"></div>
                <div class="col-3">
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Tổng tiền hàng</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class="tongtienghct">1800000₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Phí vận chuyển</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class="sotiengiaohang">27500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Tổng thanh toán:</span>
                        </div>
                        <div class="col-6 text-right">
                            <span style="font-size: 30px; color: #C3817B" id="tongthanhtoan">1.827.500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <button class="btn w-75 ms-5 text-light" style="background-color: #C3817B;" onclick="datHang()">Đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<form action="${pageContext.request.contextPath}/pay" method="post" style="display: none">
    <input type="hidden" name="method" value="paypal">
    <input type="hidden" name="intent" value="sale">
    <input type="hidden" name="currency" value="USD">
    <input type="hidden" name="description" value="Product Description">
    <input type="hidden" name="price"  value="10.00">
    <input type="hidden" name="idkh"  value="<%=SecurityUtils.getPrincipal().getId()%>">
    <input type="hidden" name="idttmuahang" value="" id="idttmuahang">
    <input type="hidden" name="phiShip" value="" id="tienship">
    <button id="submidpaypal" type="submit">Pay with PayPal</button>
</form>
<script>
    var loaiDatHang = 1;
    let idkh =  <%=SecurityUtils.getPrincipal().getId()%>;
    // Ẩn thanh toán khi nhận hàng khi load lại trang
    document.querySelector(".thanhtoan").style.display = "none";

    //click Ví PalPay
    document.getElementById("paypalButton").addEventListener("click", function() {
        // Ẩn Thanh toán khi nhận hàng
        document.querySelector(".thanhtoan").style.display = "none";
        // Hiển thị radio của MB Bank và VP Bank
        document.getElementById("mbBankRadio").style.display = "block";
        document.getElementById("vpBankRadio").style.display = "block";
        loaiDatHang = 1;
    });
    //click thanh toán khi nhaanh hàng
    document.getElementById("codButton").addEventListener("click", function() {
        // Hiển thị thanh toán khi nhận hàng
        document.querySelector(".thanhtoan").style.display = "block";
        // Ẩn radio MB Bank và VP Bank
        document.getElementById("mbBankRadio").style.display = "none";
        document.getElementById("vpBankRadio").style.display = "none";
        loaiDatHang = 2;
    });

    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
    var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
        return new bootstrap.Popover(popoverTriggerEl)
    })
    var idtt = -1;
    const formatter = new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: 'USD',
    });
    function themDiaChi(){
        idtt = -1;
        $("#tennguoinhanform").val('');
        $("#sdtform").val('');
            $("#thanhpho").val(1).trigger('change.select2')
            $("#quanhuyen").val(1).trigger('change.select2')
            $("#xa").val(1).trigger('change.select2')
            $("#sonha").val('')
            $("#defaultform").prop('checked', true);
    }
    function hoanThanh(){
        if (idtt==-1){
            themDiaChiForm();
        }else{
            capNhatDiaChiForm()
        }
    }
    function diaChiForm(){
        var diaChi = $("#sonha").val()+getText($("#xa :selected"))+getText($("#quanhuyen :selected"))+getText($("#thanhpho :selected"))+", Vietnam";
        return JSON.stringify({
            tenNguoiNhan: $("#tennguoinhanform").val(),
            soDienThoai : $("#sdtform").val(),
            idThanhPho : $("#thanhpho").val(),
            idHuyen : $("#quanhuyen").val(),
            idXa : $("#xa").val(),
            soNha : $("#sonha").val(),
            diaChi:diaChi,
            macDinh :$("#defaultform").is(':checked')
        });
    }
    function capNhatDiaChiForm(){
        var idttmuahang  = idtt;
        var diaChi = $("#sonha").val()+getText($("#xa :selected"))+getText($("#quanhuyen :selected"))+getText($("#thanhpho :selected"));
        var data = diaChiForm();
        $.ajax({
            url: '/api/user/ttgh/update/'+idttmuahang,
            method: 'POST',
            contentType: 'application/json',
            data: data,
            success: function(response) {
                dsthongtinmuahang()
              //  getAddressDefault()
                showSuccess(response.data);
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
    function getText(val){
        var data = val.text();
        return ", "+ data;
    }

    function themDiaChiForm(){
        var data = diaChiForm();
        $.ajax({
            url: '/api/user/ttgh/insert/'+idkh,
            method: 'POST',
            contentType: 'application/json',
            data: data,
            success: function(response) {
                dsthongtinmuahang()
                getAddressDefault()
                showSuccess(response.data);
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });

    }

    async function findHuyen(idThanhPho) {
        await $.ajax({
            url: '/api/user/ttgh/huyen/'+idThanhPho,
            method: 'GET',
            success: function(req) {
                var data = req.data;
                var huyen =  $("#quanhuyen")
                huyen.empty();
                data.forEach(function (param) {
                    huyen.append($('<option>', {
                        value: param.DistrictID,
                        text: param.DistrictName
                    }));
                })
                huyen.select2({
                    dropdownParent: $('#formdiachi')
                });
                findXa(data[0].DistrictID);

            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    async function findXa(idHuyen) {
        await  $.ajax({
            url: '/api/user/ttgh/xa/'+idHuyen,
            method: 'GET',
            success: function(req) {
                var data = req.data;
                var xa =  $("#xa")
                xa.empty();
                // data = data.sort((a,b)=> (order.indexOf(a.ProvinceName) - order.indexOf(b.ProvinceName)))
                data.forEach(function (param) {
                    xa.append($('<option>', {
                        value: param.WardCode,
                        text: param.WardName
                    }));
                })
                xa.select2({
                    dropdownParent: $('#formdiachi')
                });
                xa.trigger("change")
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    $('#thanhpho').on('change', async function () {
        var value = $(this).val()
        await findHuyen(value);

    });
    $('#quanhuyen').on('change',async function() {
        var value = $(this).val()
        await findXa(value);

    });
    function setShipNull(){
        $("#tennguoinhan").text("");
        $("#diachi").text("Vui lòng thêm địa chỉ");
        $("#defaultdc").text("");
        $(".sotiengiaohang").text("");
        $("#tongthanhtoan").text("");
    }
    //Hiển thị thông tin mua hàng mặc định
    function getAddressDefault(){
        $.ajax({
            url: '/api/user/ttgh/default/'+idkh,
            method: 'GET',
            success: async function (req) {

                var data = req.data;
                dsthongtinmuahang();
                if (!data){
                    setShipNull();
                    return;
                }
                $("#idttmuahang").val(data.id);
                $("#tennguoinhan").html(
                    `
                   \${data.tenNguoiNhan}(\${data.sdt})
                   `
                );
                // $("#sdt").html(data.sdt);
                $("#diachi").html(data.diaChi);
                getSoTienVanChuyen(data.id);
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    function xacNhanDiaChi() {
        var value = $('input[name=diaChiNhanHang]:checked').val();
        $.ajax({
            url: '/api/user/ttgh/findThongTinMuaHangById/'+value,
            method: 'GET',
            success: async function (req) {
                var data = req.data;
                $("#idttmuahang").val(data.id);
                $("#tennguoinhan").html(
                    `
                   \${data.tenNguoiNhan}(\${data.sdt})
                   `
                );
                $("#defaultdc").html(data.trangThai);
                getSoTienVanChuyen(data.id)

            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }

    getAddressDefault()
    //Thành phố
    $.ajax({
        url: '/api/user/ttgh/thanhpho',
        method: 'GET',
        success: function(req) {
            var data = req.data;
            var thanhpho =  $("#thanhpho")
            thanhpho.empty();
            // data = data.sort((a,b)=> (order.indexOf(a.ProvinceName) - order.indexOf(b.ProvinceName)))
            data.forEach(function (param) {
                thanhpho.append($('<option>', {
                    value: param.ProvinceID,
                    text: param.ProvinceName
                }));
            })
            $('#thanhpho').select2({
                dropdownParent: $('#formdiachi')
            });
        },
        error: function(xhr, status, error) {
            console.log("Có lỗi xảy ra")
        }
    });


    function findThongTin(idttmh){
        idtt = idttmh;
        $.ajax({
            url: '/api/user/ttgh/findThongTinMuaHangById/'+idtt,
            method: 'GET',
            success: async function (req) {
                var data = req.data;
                $("#tennguoinhanform").val(data.tenNguoiNhan);
                $("#sdtform").val(data.sdt),
                    $("#thanhpho").val(data.idThanhPho).change()
                await findHuyen(data.idThanhPho);
                $("#quanhuyen").val(data.idHuyen).change()
                await findXa(data.idHuyen);
                $("#xa").val(data.idXa).change()
                $("#sonha").val(data.soNha)
                $("#defaultform").prop( "checked", data.macDinh )
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    function convertMilisToDate(milis){
        var date =  new Date(milis);
        return date.getDay()+ " Th"+date.getMonth()
    }
    function getSoTienVanChuyen(idtt) {
        $.ajax({
            url: 'api/user/giaohang/phiship?idttgh='+idtt+'&idkh='+idkh,
            method: 'GET',
            success: async function (data) {
                $("#thoigiandukien").text(convertMilisToDate(data.expected_delivery_time))
                $(".sotiengiaohang").text(data.total_fee+"₫");
                tongThanhToan();
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
                $(".sotiengiaohang").text("");
                $("#tongthanhtoan").text("");
            }
        });
    }
    async function  dsthongtinmuahang (){
        await $.ajax({
            url: '/api/user/ttgh/dsthongtingiaohang/'+idkh,
            method: 'GET',
            success: function(req) {
                var diachi = $("#alldiachi");
                diachi.empty();
                var data=  req.data;
                if (!data){
                    console.log("Hi")
                    return;
                }
                $("#tongsanpham").html(data.length);
                data.forEach(function (data){
                    var html= `
           <div class="col-10">
                        <div class="ms-3" style="border-bottom: #6C757D">
                            <input class="form-check-input" type="radio" name="diaChiNhanHang" value="\${data.id}" aria-label="...">
                            <div class="hstack gap-3 ms-3">
                                <div>
                                    <span class="text-dark">\${data.tenNguoiNhan}</span>
                                </div>
                                <div class="vr" style="height: 30px"></div>
                                <div >
                                    <span class="">\${data.sdt}</span>
                                </div>
                            </div>
                            <div class="ms-3">
                                <p class="">\${data.diaChi}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <button class="text-decoration-none" style="color: #00aced" onclick="findThongTin(\${data.id})" data-bs-target="#formdiachi" data-bs-toggle="modal">Cập nhật</button>
                    </div>
           `;
                    diachi.append(html);
                })
                $(`input:radio[name=diaChiNhanHang]:first`).prop('checked', true);
            },
            error: function(xhr, status, error) {
                alert('Có lỗi xảy ra: ' + error);
            }
        });
    }
    function ghct(){
        $.ajax({
            url: '/api/hoadon/chuanbidat/'+idkh,
            method: 'GET',
            success: async function (req) {
                var data = req.data;
                console.log(data)
                if (data.length == 0) {
                    await Swal.fire('Incorrect...', 'Bạn chưa thêm sản phẩm vào giỏ hàng !', 'error');
                    window.location.href = "/cart"
                }
                var tbody = $("#hdct");
                tbody.empty();
                tongTienTheoHoaDon(data[0].idhd);
                data.forEach(function (custom) {
                    var html = `
                        <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/assets/images/sanpham/\${custom.image}" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title line-clamp-1">\${custom.tenSanPham}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: \${custom.tenBienThe}</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">\${custom.giaTien}</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">\${custom.soLuong}</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">\${custom.tongTienHdct}</h6>
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

    function tongTienTheoHoaDon(idhd){
        $.ajax({
            url: 'api/user/giaohang/tongtienhd/'+idhd,
            method: 'GET',
            success: function (req) {
                $(".tongtienghct").html(req.data+"₫");
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    ghct()
    function tongThanhToan() {
        var tongtien = $(".tongtienghct:first").text(); // Lấy giá trị từ phần tử đầu tiên
        var tienship = $(".sotiengiaohang:first").text(); // Lấy giá trị từ phần tử đầu tiên

        // Lấy chuỗi từ đầu đến length - 1
        var tongtienSubstring = Number(tongtien.slice(0, tongtien.length - 1));
        var tienshipSubstring = Number(tienship.slice(0, tienship.length - 1));


        $("#tongthanhtoan").html(tongtienSubstring + tienshipSubstring + "₫");
    }
    tongThanhToan();
    function datHang(){
        if ($(".sotiengiaohang").text().length === 0) {
            showError("Bạn chưa chọn địa chỉ giao hàng");
            return;
        }

        if (loaiDatHang === 1){
            var payment = $('input[name="payment"]:checked').val();
            if (payment==="paypal"){
                callPayPal();
            }
        }else{
            thanhToanNhanHang();
        }
    }
    function thanhToanNhanHang(){
        var idttmh = $("#idttmuahang").val();
        var tienship = $(".sotiengiaohang:first").text();
        var tienshipSubstring = Number(tienship.slice(0, tienship.length - 1));
        $.ajax({
            url: `api/hoadon/dathangnhanhang?idkh=\${idkh}&ttgh=\${idttmh}&phiship=`+tienshipSubstring,
            method: 'GET',
            success: function (req) {
                showSuccess("Thanh toán thành công");
                window.location.href = "/pay/success"
            },
            error: function(xhr, status, error) {
                console.log("Có lỗi xảy ra")
            }
        });
    }
    function callPayPal(){
        var tien = $("#tongthanhtoan").text();
        var tienshipSubstring = Number(tien.slice(0, tien.length - 1));

        $("input[name='price']").val(tienshipSubstring/23000);
        var tienship = $(".sotiengiaohang:first").text(); // Lấy giá trị từ phần tử đầu tiên

        var tienshipSubstring = Number(tienship.slice(0, tienship.length - 1));
        $("#tienship").val(tienshipSubstring)
        $("#submidpaypal").click();
    }
</script>