<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/26/2023
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>

<html>
<head>
    <title>Đang giao</title>
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
            <a class="nav-link" href="/web/cho-giao-hang">Chờ giao hàng</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link active" href="/web/dang-giao">Đang giao</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link" href="/web/hoan-thanh">Hoàn thành</a>
        </li>
        <li class="nav-item ms-5">
            <a class="nav-link " href="/web/da-huy">Đã hủy</a>
        </li>
    </ul>
</div>

<div class="row mt-3" id="dshd">

</div>
<script>
    var idkh = <%=SecurityUtils.getPrincipal().getId()%>;

    $.ajax({
        url: '/api/hoadon/dshdtheott/' + idkh + '?trangthai=DANGGIAOHANG',
        method: "GET",
        dataType: "json",
        success: (response) => {
            let html = '';
            $.each(response.data, (index, item) => {
                html += `<div class="col-12 mt-3">
        <div class="khung">
            <div class="d-flex justify-content-between" style="border-bottom: 1px solid #D19C97; padding-bottom: 10px">
                <span><i class="bi bi-truck"></i> Đơn hàng đang trên đường giao đến bạn</span>
                <span class="text-danger text-uppercase">\${item.trangThai}</span>
            </div>
            <div class="row mt-3" >
                <div class="col-2">
                    <img src="" width="90%" alt="">
                </div>
                <div class="col-10">
                    <h4>\${item.tenSanPham}</h4>
                    <div class="d-flex justify-content-between">
                        <span>Phân loại: \${item.tenBienThe} </span>
                        <span class="text-danger">\${item.tongTienHang}₫</span></span>
                    </div>
                    <div class="d-flex justify-content-between">
                        <span>x\${item.soLuong} </span>
                    </div>
                </div>
            </div>
            <hr>
            <div class="text-right">
                <div>
                    Thành tiền: <span class="text-danger" style="font-size: 25px">\${item.tongTien}₫</span>
                </div>
                <div class="my-2">
<!--                    <button class="btn btn-danger me-2" >Mua lại</button>-->
                    <button class="btn btn-secondary" >Xem đơn hàng</button>
                </div>
            </div>
        </div>
    </div>`;
            })
            $('#dshd').html(html);
        },
        error: (error) => {
            console.log(error);
        }
    });
</script>
</body>
</html>