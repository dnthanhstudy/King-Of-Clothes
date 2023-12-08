<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/21/2023
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hóa đơn</title>
</head>
<body>
<div class="content-body" >
    <div class="container-fluid">

        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link " aria-current="page" href="/admin/giao-dich/hoa-don">Online</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="/admin/giao-dich/hoa-don-off">Offline</a>
            </li>
        </ul>

        <div class="card card-body hstack gap-3 mt-4">
            <div class="p-2">
                <a class="Btnaddkh" type="button" href="/admin/giao-dich/create" style="text-decoration: none">Add
                    <svg xmlns="http://www.w3.org/2000/svg" class="svg" height="1em" viewBox="0 0 448 512"><style>svg{fill:#ffffff}</style>
                        <path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/></svg>
                </a>
            </div>
            <div class="p-2">
                <button type="button" class="buttonImport"  >
                    <span class="button__text1">Import</span>
                    <span class="button__icon1">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="svgImport" viewBox="0 0 512 512">
                                        <path d="M128 64c0-35.3 28.7-64 64-64H352V128c0 17.7 14.3 32 32 32H512V448c0 35.3-28.7 64-64 64H192c-35.3 0-64-28.7-64-64V336H302.1l-39 39c-9.4 9.4-9.4 24.6 0 33.9s24.6 9.4 33.9 0l80-80c9.4-9.4 9.4-24.6 0-33.9l-80-80c-9.4-9.4-24.6-9.4-33.9 0s-9.4 24.6 0 33.9l39 39H128V64zm0 224v48H24c-13.3 0-24-10.7-24-24s10.7-24 24-24H128zM512 128H384V0L512 128z"/>
                                    </svg>
                                </span>
                </button>
            </div>
            <div class="p-2">
                <button type="button" class="buttonExport" id="exportButton">
                    <span class="button__text">Export</span>
                    <span class="button__icon"><svg class="svgExport" data-name="Layer 2" id="bdd05811-e15d-428c-bb53-8661459f9307" viewBox="0 0 35 35" xmlns="http://www.w3.org/2000/svg"><path d="M17.5,22.131a1.249,1.249,0,0,1-1.25-1.25V2.187a1.25,1.25,0,0,1,2.5,0V20.881A1.25,1.25,0,0,1,17.5,22.131Z"></path><path d="M17.5,22.693a3.189,3.189,0,0,1-2.262-.936L8.487,15.006a1.249,1.249,0,0,1,1.767-1.767l6.751,6.751a.7.7,0,0,0,.99,0l6.751-6.751a1.25,1.25,0,0,1,1.768,1.767l-6.752,6.751A3.191,3.191,0,0,1,17.5,22.693Z"></path><path d="M31.436,34.063H3.564A3.318,3.318,0,0,1,.25,30.749V22.011a1.25,1.25,0,0,1,2.5,0v8.738a.815.815,0,0,0,.814.814H31.436a.815.815,0,0,0,.814-.814V22.011a1.25,1.25,0,1,1,2.5,0v8.738A3.318,3.318,0,0,1,31.436,34.063Z"></path></svg></span>
                </button>
            </div>
            <div class="p-2">
                <a type="button" class="buttonPoint text-decoration-none"   href="/admin/lich-su-tich-diem">
                    <span class="button__text2">Point history</span>
                    <span class="button__icon2">
                                <svg class="svgPoint" xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                                    <path d="M464 256A208 208 0 1 1 48 256a208 208 0 1 1 416 0zM0 256a256 256 0 1 0 512 0A256 256 0 1 0 0 256zM232 120V256c0 8 4 15.5 10.7 20l96 64c11 7.4 25.9 4.4 33.3-6.7s4.4-25.9-6.7-33.3L280 243.2V120c0-13.3-10.7-24-24-24s-24 10.7-24 24z"/>
                                </svg>
                    </span>
                </a>
            </div>

            <div class="p-2 ms-auto">
                <div class="InputContainer">
                    <input type="text" id="searchAll" name="text" class="input" placeholder="Search">

                    <div class="border"></div>

                    <button id="searchButton" class="micButton">
                        <svg viewBox="0 0 512 512" class="searchIcon">
                            <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="card" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
        padding: 20px; background-color: #fff">
            <div class="row ">
                <div class="col-9">
                    <h4>Danh sách hóa đơn</h4>
                </div>
<%--                <div class="col-3">--%>
<%--                    <button type="button" class="btn btn-outline-success">Tạo hoá đơn</button>--%>
<%--                </div>--%>
            </div>
            <hr>
            <div class="d-flex justify-content-between">
                <hr>
                <table class="table table-hover" id="tblHoaDon" >
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Mã Hóa đơn</th>
                        <th scope="col">Khách hàng</th>
                        <th scope="col">Ngày đặt</th>
                        <th scope="col">Tổng tiền hàng</th>
                        <th scope="col">Phương thức</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody >
                    <tr>
                        <td>1</td>
                        <td>HD01</td>
                        <td>An</td>
                        <td>12/11/2023</td>
                        <td>1.500.000 VNĐ</td>
                        <td>Tiền mặt</td>
                        <td>Đã thanh toán</td>
                        <td>Chi tiết</td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td>HD02</td>
                        <td>Tuấn Anh</td>
                        <td>11/11/2023</td>
                        <td>500.000 VNĐ</td>
                        <td>Tiền mặt</td>
                        <td>Đã thanh toán</td>
                        <td>Chi tiết</td>

                    </tr>
                    <tr>
                        <td>3</td>
                        <td>HD03</td>
                        <td>Thùy</td>
                        <td>12/10/2023</td>
                        <td>350.000 VNĐ</td>
                        <td>Tiền mặt</td>
                        <td>Đã thanh toán</td>
                        <td>Chi tiết</td>

                    </tr>
                    <tr>
                        <td>4</td>
                        <td>HD04</td>
                        <td>Thủy</td>
                        <td>01/11/2023</td>
                        <td>450.000 VNĐ</td>
                        <td>Tiền mặt</td>
                        <td>Đã thanh toán</td>
                        <td>Chi tiết</td>

                    </tr>
                    <tr>
                        <td>5</td>
                        <td>HD05</td>
                        <td>Nam Anh</td>
                        <td>29/11/2023</td>
                        <td>655.000 VNĐ</td>
                        <td>Tiền mặt</td>
                        <td>Đã thanh toán</td>
                        <td>Chi tiết</td>

                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

<%--        <nav class="mt-2">--%>
<%--            <ul class="pagination pagination-gutter pagination-primary  no-bg">--%>
<%--                <li class="page-item page-indicator">--%>
<%--                    <a class="page-link" href="javascript:void(0)">--%>
<%--                        <i class="la la-angle-left"></i></a>--%>
<%--                </li>--%>
<%--                <li class="page-item "><a class="page-link" href="javascript:void(0)">1</a>--%>
<%--                </li>--%>
<%--                <li class="page-item active"><a class="page-link" href="javascript:void(0)">2</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>--%>
<%--                <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>--%>
<%--                <li class="page-item page-indicator">--%>
<%--                    <a class="page-link" href="javascript:void(0)">--%>
<%--                        <i class="la la-angle-right"></i></a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </nav>--%>
        <ul id="pagination" class="d-flex justify-content-center"></ul>

    </div>
</div>
</body>
</html>
