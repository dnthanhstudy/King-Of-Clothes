<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>--%>
<%@include file="/common/taglib.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<!--**********************************
      Sidebar start
  ***********************************-->
<div class="deznav">
    <div class="deznav-scroll">
        <div class="main-profile">
            <div class="image-bx">
                <img src="<c:url value='/template/admin/images/Untitled-1.jpg'/>" alt="">
                <a href="javascript:void(0);"><i class="fa fa-cog" aria-hidden="true"></i></a>
            </div>
            <h5 class="name"><span class="font-w400">Hello,</span> Marquez</h5>
            <p class="email"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="95f8f4e7e4e0f0efefefefd5f8f4fcf9bbf6faf8">[email&#160;protected]</a></p>
        </div>
        <ul class="metismenu" id="menu">
            <li class="nav-label first">Main Menu</li>

            <li>
<%--                <security:authorize access="hasRole('ADMIN')">--%>
                    <a class="has-arrow ai-icon" href="/admin/dashboards" aria-expanded="false">
                        <i class="flaticon-144-layout"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
<%--                </security:authorize>--%>
            </li>
            <li>
<%--                <security:authorize access="hasRole('MANAGER')">--%>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-061-puzzle"></i>
                        <span class="nav-text">Quản lý</span>
                    </a>
<%--                </security:authorize>--%>
                <ul aria-expanded="false">
                    <li><a href="/admin/nhan-vien">Nhân viên</a></li>
                    <li><a href="/admin/khach-hang">Khách hàng</a></li>
                    <li><a href="/admin/khuyen-mai">Khuyến mại</a></li>
                    <li><a href="/admin/giao-ca/thong-ke-giao-ca">Thống kê giao ca</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-network"></i>
                <span class="nav-text">Giao ca</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/giao-ca/moca">Mở ca</a></li>
                    <li><a href="/admin/giao-ca/dongca">Đóng ca</a></li>
                </ul>
            </li>
            <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-044-file"></i>
                        <span class="nav-text">Giao dịch</span>
                    </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/giao-dich/hoa-don">Hóa đơn</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-settings-2"></i>
                    <span class="nav-text">Setting</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/setting/profile">Profile</a></li>
                    <li><a href="/admin/setting/tich-diem">Tích điểm</a></li>
                </ul>
            </li>
        </ul>
        <div class="copyright">
            <p><strong>Zenix Crypto Admin Dashboard</strong> © 2021 All Rights Reserved</p>
            <p class="fs-12">Made with <span class="heart"></span> by DexignZone</p>
        </div>
    </div>
</div>
<!--**********************************
    Sidebar end
***********************************-->
</body>
</html>