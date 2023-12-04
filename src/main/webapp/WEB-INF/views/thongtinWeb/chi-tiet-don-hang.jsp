<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 12/4/2023
  Time: 8:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông tin đơn hàng</title>
</head>
<body>
    <div class="khung">
        <div class="row">
            <div class="col-4">
                <span class="fs-3">Địa chỉ nhận hàng</span>
                <p class="fs-5 mt-4">Anh Tuấn <span>(0384082003)</span></p>
                <p class="">Thái Bình</p>
            </div>
            <div class="col-8" style="border-left: 1px solid #dedede">
                <div class="row mt-3">
                    <div class="col-3">
                        <span>09:25 07-08-2023</span>
                    </div>
                    <div class="col-9">
                        <strong>Đã giao</strong><br>
                        <span>Đơn hàng đã được giao thành công</span><br>
                        <span>Người nhận hàng: Anh Tuấn</span>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-3">
                        <span>08:35 07-08-2023</span>
                    </div>
                    <div class="col-9">
                        <strong>Đang giao hàng</strong><br>
                        <span>Đơn hàng đang trên đường giao đến bạn</span>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-3">
                        <span>13:10 03-08-2023</span>
                    </div>
                    <div class="col-9">
                        <strong>Đang được chuẩn bị</strong><br>
                        <span>Shop đang chuẩn bị hàng</span>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-3">
                        <span>16:15 02-08-2023</span>
                    </div>
                    <div class="col-9">
                        <strong>Đặt hàng thành công</strong><br>
                        <span>Shop đang chuẩn bị hàng</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

        </div>
    </div>
    <div class="khung mt-3">
        <div class="row mt-3">
            <div class="col-2">
                <img src="/assets/images/sanpham/0PQldf.jpg" width="90%" alt="">
            </div>
            <div class="col-10">
                <h4>Áo</h4>
                <div class="d-flex justify-content-between">
                    <span>Phân loại: Đen|L </span>
                    <span class="text-danger">300000₫</span></span>
                </div>
                <div class="d-flex justify-content-between">
                    <span>x1 </span>
                </div>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-8"></div>
            <div class="col-4">
                <div class="row d-flex justify-content-between">
                    <div class="col">
                       Tổng tiền hàng:
                    </div>
                    <div class="col text-right">
                        <span class="text-danger">300000₫</span>
                    </div>
                </div>
                <div class="row d-flex justify-content-between">
                    <div class="col">
                        Phí vận chuyển:
                    </div>
                    <div class="col text-right">
                        <span class="text-danger">17000₫</span>
                    </div>
                </div>
                <div class="row d-flex justify-content-between">
                    <div class="col">
                        Thành tiền:
                    </div>
                    <div class="col text-right">
                        <span class="text-danger" style="font-size: 25px">317000₫</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
