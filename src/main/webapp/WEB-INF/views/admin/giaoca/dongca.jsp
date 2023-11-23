<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/19/2023
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Báo cáo kết ca</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;" class="font-weight-bold">Đóng ca làm việc: <span class="text-uppercase">CA0001</span></h4>

        <div class="row">
            <div class="col-3">
                <h6><strong>Giờ mở ca:</strong> 20/10/2023 7:00</h6>
            </div>
            <div class="col-3">
                <strong>Giờ hiện tại: </strong> <span id="ngayhientai"></span>
            </div>
            <div class="col-3">
                <h6 ><strong>Nhân viên:</strong> Dinh Anh Tuan</h6>
            </div>
        </div>
        <div class="card card-body mt-3" >

        <div class="card card-body hstack gap-3 mt-1">
            <div class="">
                <h5 class="font-weight-bold" style="color: #EB8153">Đầu ca</h5>
            </div>
            <div class=" ms-auto">
                <h6 class="text-cyan">Tiền mặt: 1.500.000 đ</h6>
            </div>
        </div>

        <div class="card card-body mt-3">
            <div class=" hstack gap-3">
                <h5 class="font-weight-bold" style="color: #EB8153">Trong ca</h5>
                <div class=" ms-auto">
                    <h6 class="text-cyan">Tiền mặt: 360.000 đ</h6>
                </div>
            </div>
            <div class="row p-3">
                <div class="col-3">
                    <div class="bg-light-subtle p-3">
                    <strong>Bán hàng </strong>(3 hóa đơn)
                    <div class="d-flex justify-content-between my-3" style="border-bottom: 2px solid green;">
                        <div style="margin-bottom: 10px;">
                            1. Tiền mặt
                        </div>
                        <div>
                            360.000
                        </div>
                    </div>
                    <div class="d-flex justify-content-between my-3" style="border-bottom: 2px solid green;">
                        <div style="margin-bottom: 10px;">
                            2. Chuyển khoản
                        </div>
                        <div>
                            125.000
                        </div>
                    </div>
                    <div class="d-flex justify-content-between my-3" style="border-bottom: 2px solid green;">
                        <div style="margin-bottom: 10px;">
                            3. Thẻ
                        </div>
                        <div>
                           0
                        </div>
                    </div>
                    <div class="d-flex justify-content-between my-3" style="border-bottom: 2px solid green;">
                        <div style="margin-bottom: 10px;">
                            4. Điểm
                        </div>
                        <div>
                            0
                        </div>
                    </div>
                    <div class="d-flex justify-content-between my-3 font-weight-bold">
                        <div class="">
                           Tổng thu
                        </div>
                        <div>
                            485.000
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card card-body mt-3">
            <div class=" hstack gap-3">
                <h5 class="font-weight-bold" style="color: #EB8153">Cuối ca</h5>
                <div class=" ms-auto">
                    <h6 class="text-cyan">Tiền mặt: 1.985.000 đ</h6>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-4">
                    <span class="text-danger">* </span>Tiền mặt bàn giao thực tế:
                    <div class="input-wrapper1 mt-4">
                        <input class="input-box1 " type="text" placeholder="Nhập số tiền">
                        <span class="underline1"></span>
                    </div>

                </div>
                <div class="col-4">
                    Số tiền chêch lệch:
                    <div class="mt-4">0</div>
                </div>
                <div class="col-4">
                    Ghi chú:
                    <div class="input-wrapper1 mt-4">
                        <input class="input-box1 " type="text" placeholder="Nhập ghi chú">
                        <span class="underline1"></span>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="text-right">
                <button class="btn"  style="background-color: #A6edab; color: #00852d">Đóng ca và in phiếu giao</button>
            </div>
        </div>

        </div>
    </div>
</div>


<script>
    function updateDateTime() {
        $.get("/api/ca-lam/getDateTime", function(response) {
            $("#ngayhientai").text(response);
        });
    }
    updateDateTime();
    setInterval(updateDateTime, 1000);
</script>
</body>
</html>
