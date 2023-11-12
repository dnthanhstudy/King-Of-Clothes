<%--
  Created by IntelliJ IDEA.
  User: MMC
  Date: 10/25/2023
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tất cả</title>
</head>

<body>
<div class="menu">
    <ul class="nav justify-content-center">
        <li class="nav-item ms-3">
            <a class="nav-link active" href="/web/all">Tất cả</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/chothanhtoan">Chờ thanh toán</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/vanchuyen">Vận chuyển</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/danggiao">Đang giao</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/hoanthanh">Hoàn thành</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/dahuy">Đã hủy</a>
        </li>
    </ul>
</div>

<div class="mt-3 ">
    <input class="inputTT w-100"  name="text" placeholder="Search..." type="search">
</div>

<div class="row mt-1">
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
    <div class="col-12 mt-3">
        <div class="khung">
            <div class="d-flex justify-content-between" style="border-bottom: 1px solid #D19C97; padding-bottom: 10px">
                <span></span>
                <span class="text-danger text-uppercase">Đã hủy</span>
            </div>
            <div class="row mt-3">
                <div class="col-2">
                    <img src="/template/web/img/anh3.png" width="90%" alt="">
                </div>
                <div class="col-10">
                    <h4>POLO AELIMITED </h4>
                    <div class="d-flex justify-content-between">
                        <span>Phân loại: size M, Xanh than</span>
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
                    <button class="btn btn-secondary" >Xem chi tiết hủy đơn</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>