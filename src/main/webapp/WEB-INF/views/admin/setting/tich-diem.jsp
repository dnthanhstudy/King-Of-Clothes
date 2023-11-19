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
            <form action="" id="tien-quy-ra-diem">
                <div class="row">
                    <div class="col-lg-3">
                        <span>Tỉ lệ quy đổi điểm thưởng</span>
                    </div>
                        <div class="col-lg-2">
                            <div class="input-wrapper1">
                                <input class="input-box1" type="text" name="tien">
                                <span class="underline1"></span>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <span style="color: white; background-color: #3AB54B; border: 1px solid #3AB54B; padding: 5px">VND</span> =
                        </div>
                        <div class="col-lg-2">
                            <div class="input-wrapper1">
                                <input class="input-box1" type="text" name="diem">
                                <span class="underline1"></span>
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <span style="color: white; background-color: #c17a74; border: 1px solid #c17a74; padding: 5px">Điểm</span>
                        </div>
                    <input type="hidden" value="Tiền quy ra điểm" name="loai">
                </div>
            </form>

            <div class="row mt-4">
                <div class="col-lg-3">
                    <input type="checkbox" id="selectCheckbox">
                    <span class="ms-2">Cho phép thanh toán bằng điểm</span>
                </div>
                <div class="col-lg-9" style="display: none;" id="paymentOptions">
                    <form id="diem-quy-ra-tien">
                        <div class="row">
                            <div class="col-lg-2">
                                <div class="input-wrapper1">
                                    <input class="input-box1" type="text" name="diem">
                                    <span class="underline1"></span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <span style="color: white; background-color: #c17a74; border: 1px solid #c17a74; padding: 5px">Điểm</span> =
                            </div>
                            <div class="col-lg-2">
                                <div class="input-wrapper1">
                                    <input class="input-box1" type="text" name="tien">
                                    <span class="underline1"></span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <span style="color: white; background-color: #3AB54B; border: 1px solid #3AB54B; padding: 5px">VND</span>
                            </div>
                        </div>
                        <input type="hidden" value="Điểm quy ra tiền" name="loai">
                    </form>
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
                    <button id="submit" class="btn btn-success"><i class="bi bi-floppy"></i> Lưu</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script>

    $(document).ready(function () {
        $("#submit").on("click", function (e) {
            e.preventDefault();

            var tienQuyDiem = {
                tien: $("#tien-quy-ra-diem input[name='tien']").val(),
                diem: $("#tien-quy-ra-diem input[name='diem']").val(),
                loai: $("#tien-quy-ra-diem input[name='loai']").val()
            };

            var diemQuyTien = {
                tien: $("#diem-quy-ra-tien input[name='tien']").val(),
                diem: $("#diem-quy-ra-tien input[name='diem']").val(),
                loai: $("#diem-quy-ra-tien input[name='loai']").val()
            };

            var formData = {
                tienQuyDiem: tienQuyDiem,
                diemQuyTien: diemQuyTien
            };
            console.log(formData);
            $.ajax({
                url: '/api/quy-doi-diem',
                type: "POST",
                data: formData,
                success: function (response) {
                    showSuccess("Quy đổi thành công");
                },
                error: function (error) {
                    showError("Quy đổi thất bại" + error);
                }
            });

            $.ajax({
                url: '/api/quy-doi-diem',
                type: "POST",
                data: diemQuyTien,
                success: function (response) {
                    showSuccess("Quy đổi thành công");
                },
                error: function (error) {
                    showError("Quy đổi thất bại" + error);
                }
            });
        });

        $("#selectCheckbox").on("click", function () {
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
