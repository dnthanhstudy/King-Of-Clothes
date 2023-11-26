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

<script>
    var idkh = <%=SecurityUtils.getPrincipal().getId()%>;
    $.ajax({
        url: '/api/hoadon/dshoadondamua/' + idkh,
        method: "GET",
        dataType: "json",
        success: async (response) => {
            for (const item of response.data) {
                let dshd = $('#dshd');
                let idhd = item.id;
                try {
                    const res = await $.ajax({
                        url: '/api/hdct/' + idhd,
                        method: "GET",
                        dataType: "json",
                    });

                    let html = '';
                    $.each(res.data, (index1, item1) => {
                        html += `<div class="col-12 mt-3">
                                            <div class="khung">
                                                <div class="d-flex justify-content-between" style="border-bottom: 1px solid #D19C97; padding-bottom: 10px">
                                                    <span><i class="bi bi-truck"></i> Đơn hàng đang được xác nhận</span>
                                                    <span class="text-danger text-uppercase">\${item1.trangThaiHoaDon}</span>
                                                </div>
                                                <div class="row mt-3" >
                                                    <div class="col-2">
                                                        <img src="/assets/images/sanpham/\${item1.image}" width="90%" alt="">
                                                    </div>
                                                    <div class="col-10">
                                                        <h4>\${item1.tenSanPham}</h4>
                                                        <div class="d-flex justify-content-between">
                                                            <span>Phân loại: \${item1.tenBienThe} </span>
                                                            <span class="text-danger">\${item1.tongTienHdct}₫</span></span>
                                                        </div>
                                                        <div class="d-flex justify-content-between">
                                                            <span>x\${item1.soLuong} </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                    <div class="col-9"></div>
                                                    <div class="col-3">
                                                        <div class="row d-flex justify-content-between">
                                                            <div class="col">
                                                                Phí ship:
                                                            </div>
                                                            <div class="col text-right">
                                                                <span class="text-danger">\${item1.tienShip}₫</span>
                                                            </div>
                                                        </div>
                                                        <div class="row d-flex justify-content-between">
                                                            <div class="col">
                                                                Thành tiền:
                                                            </div>
                                                            <div class="col text-right">
                                                                <span class="text-danger" style="font-size: 25px">\${item1.tongTien}₫</span>
                                                            </div>
                                                        </div>
                                                        <div class="my-2 text-right">
                                                            <button class="btn btn-danger me-2" >Hủy đơn</button>
                                                            <button class="btn btn-secondary" >Xem đơn hàng</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>`;
                    });

                    dshd.append(html);
                } catch (error) {
                    console.error(error);
                }
            }
        },
        error: (error) => {
            console.log(error);
        }
    });

</script>


</body>
</html>