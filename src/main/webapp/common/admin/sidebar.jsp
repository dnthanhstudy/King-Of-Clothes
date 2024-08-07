<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
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
            <h5 class="name"><span class="font-w400">Hello,</span><%=SecurityUtils.getPrincipal().getTen()%></h5>
        </div>
        <ul class="metismenu" id="menu">
            <li class="nav-label first">Main Menu</li>

            <li>
                    <a class="has-arrow ai-icon" href="/admin/dashboards" aria-expanded="false">
                        <i class="flaticon-144-layout"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
            </li>
            <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-061-puzzle"></i>
                        <span class="nav-text">Quản lý</span>
                    </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/nhanvien">Nhân viên</a></li>
                    <li><a href="/admin/khachhang">Khách hàng</a></li>
                    <li><a href="/admin/khuyen-mai">Khuyến mại</a></li>
                    <li><a href="/admin/giaoca/calamviec">Ca làm việc</a></li>
                    <li><a href="/admin/giaoca/thongke">Thống kê giao ca</a></li>
                </ul>
            </li>

            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-network"></i>
                <span class="nav-text">Giao ca</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/giaoca/moca">Mở ca</a></li>
                    <li><a href="/admin/giaoca/dongca">Đóng ca</a></li>
                </ul>
            </li>
            <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-044-file"></i>
                        <span class="nav-text">Giao dịch</span>
                    </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/giaodich/hoadon">Hóa đơn</a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-settings-2"></i>
                    <span class="nav-text">Setting</span>
                </a>
                <ul aria-expanded="false">
                    <li><a href="/admin/profile">Profile</a></li>
                    <li><a href="/admin/tichdiem">Tích điểm</a></li>
                    <li><a href="/admin/setting_banner">Dynamic Interface </a></li>
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
<input class="ma-chuc-vu" type="hidden" value="<%=SecurityUtils.getPrincipal().getMaChucVu()%>">
<script>
    const role = $('.ma-chuc-vu').val();
    if(role === "STAFF"){
        const html = `<li class="nav-label first">Main Menu</li>
                        <li class="mm-active"><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                            <i class="flaticon-381-network"></i>
                            <span class="nav-text">Giao ca</span>
                            </a>
                            <ul aria-expanded="false" class="mm-collapse mm-show" style="">
                                <li><a href="/admin/giaoca/dongca">Đóng ca</a></li>
                            </ul>
                        </li>

                        <li>
                            <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-044-file"></i>
                                <span class="nav-text">Giao dịch</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="/admin/giaodich/hoadon">Hóa đơn</a></li>
                            </ul>
                        </li>

                        <li>
                            <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                                <i class="flaticon-381-settings-2"></i>
                                <span class="nav-text">Setting</span>
                            </a>
                            <ul aria-expanded="false">
                                <li><a href="/admin/profile">Profile</a></li>
                                <li><a href="/admin/tichdiem">Tích điểm</a></li>
                            </ul>
                        </li>`;
        $('#menu').html(html);
    }
</script>
</body>
</html>