<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/26/2023
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hoàn thành</title>
</head>
<body>
<div class="menu">
    <ul class="nav justify-content-center">
        <li class="nav-item ms-3">
            <a class="nav-link " href="/web/all">Tất cả</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link " href="/web/cho-xac-nhan">Chờ xác nhận</a>
        </li>
        <li class="nav-item  ms-5">
            <a class="nav-link" href="/web/van-chuyen">Vận chuyển</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link " href="/web/dang-giao">Đang giao</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link active" href="/web/hoan-thanh">Hoàn thành</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link " href="/web/da-huy">Đã hủy</a>
        </li>
    </ul>
</div>
<div class="row mt-3">
    <div class="col-12 mt-3">
        <div class="khung">
            <div class="d-flex justify-content-between" style="border-bottom: 1px solid #D19C97; padding-bottom: 10px">
                <span><i class="bi bi-truck"></i> Đơn hàng được giao thành công</span>
                <span class="text-danger text-uppercase">Hoàn thành</span>
            </div>
            <div class="row mt-3" >
                <div class="col-2">
                    <img src="/template/web/img/anh2.png" width="90%" alt="">
                </div>
                <div class="col-10">
                    <h4>POLO AELIMITED </h4>
                    <div class="d-flex justify-content-between">
                        <span>Phân loại: size M, Trắng</span>
                        <span><strike>125.000₫</strike> <span class="text-danger">89.000₫</span></span>
                    </div>
                    <span>x2</span>
                </div>
            </div>
            <hr>
            <div class="text-right">
                <div>
                    Thành tiền: <span class="text-danger" style="font-size: 25px">89.000₫</span>
                </div>
                <div class="my-2">
                    <button class="btn btn-danger me-2" >Mua lại</button>
                    <button class="btn btn-secondary" >Xem đơn hàng</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>