<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/31/2023
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tích điểm</title>
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
            Thiết lập tích điểm
        </h4>

        <div class="card" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;padding: 20px;">
            <div class="row">
                <div class="col-lg-3">
                    <span>Tỉ lệ quy đổi điểm thưởng</span>
                </div>
                <div class="col-lg-3">
                    <div class="input-wrapper1">
                        <input class="input-box1" type="text" >
                        <span class="underline1"></span>
                    </div>
                </div>
                <div class="col-lg-1">
                    <span style="color: white; background-color: #3AB54B; border: 1px solid #3AB54B; padding: 5px">VND</span> =
                </div>
                <div class="col-lg-2">1 điểm thưởng </div>
            </div>
            <div class="row mt-4">
                <div class="col-lg-3">
                    <input type="checkbox" id="selectCheckbox">
                    <span class="ms-2">Cho phép thanh toán bằng điểm</span>
                </div>
                <div class="col-lg-9" style="display: none;" id="paymentOptions">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="input-wrapper1">
                                <input class="input-box1" type="text">
                                <span class="underline1"></span>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <span style="color: white; background-color: #c17a74; border: 1px solid #c17a74; padding: 5px">Điểm</span> =
                        </div>
                        <div class="col-lg-2">
                            <div class="input-wrapper1">
                                <input class="input-box1" type="text">
                                <span class="underline1"></span>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <span style="color: white; background-color: #3AB54B; border: 1px solid #3AB54B; padding: 5px">VND</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-4" id="addPaymentOptions" style="display: none;">
                <div class="col-lg-3">
                    <span>Thanh toán bằng điểm sau</span>
                </div>
                <div class="col-lg-4">
                    <div class="input-wrapper1">
                        <input class="input-box1" type="text">
                        <span class="underline1"></span>
                    </div>
                </div>
                <div class="col-lg-2">
                    <span>lần mua</span>
                </div>
            </div>

            <div class="row mt-4">
                <div class="col-12">
                    <input type="checkbox" >
                    <span class="ms-2">Không tích điểm cho hóa đơn thanh toán bằng điểm thưởng</span>
                </div>
            </div>

            <div class="row mt-4">
                <div>
                    <button class="btn btn-success"><i class="bi bi-floppy"></i> Lưu</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $("#selectCheckbox").on("click", function() {
            if ($(this).is(":checked")) {
                $("#paymentOptions").show();
                $("#addPaymentOptions").show();
            } else {
                $("#paymentOptions").hide();
                $("#addPaymentOptions").hide();
            }
        });
    });
</script>
</body>
</html>
