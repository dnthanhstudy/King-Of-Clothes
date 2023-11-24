<%--
  Created by IntelliJ IDEA.
  User: MMC
  Date: 10/25/2023
  Time: 11:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
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
            <a class="nav-link" href="/web/cho-xac-nhan">Chờ xác nhận</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/cho-giao-hang">Chờ giao hàng</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/dang-giao">Đang giao</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/hoan-thanh">Hoàn thành</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/da-huy">Đã hủy</a>
        </li>
    </ul>
</div>

<div class="mt-3 ">
    <input class="inputTT w-100"  name="text" placeholder="Search..." type="search">
</div>

<div class="row mt-1" id="dshd">

</div>


</body>
</html>