<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-10-2023
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Danh sách khuyến mại</title>
<section>
    <div class="content-body">
        <div class="container-fluid">
            <div class="">
                <div class="card card-body card-tabs text-center">
                    <div class="row">
                        <div class="col-9">
                            <ul class="nav nav-tabs style-2">
                                <li class="nav-item">
                                    <a href="#navpills-1" class="nav-link active" data-toggle="tab"
                                       aria-expanded="false">Tất cả
                                        <span class="badge badge-pill shadow-primary badge-primary" id="tongKM">0</span></a>
                                </li>
                                <%--                        <li class="nav-item">--%>
                                <%--                            <a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false">Đang chạy <span class="badge badge-pill badge-info shadow-info">1</span></a>--%>
                                <%--                        </li>--%>
                                <%--                        <li class="nav-item">--%>
                                <%--                            <a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true">Hoàn tất <span class="badge badge-pill badge-secondary shadow-secondary">1</span></a>--%>
                                <%--                        </li>--%>
                                <%--                        <li class="nav-item">--%>
                                <%--                            <a href="#navpills-4" class="nav-link" data-toggle="tab" aria-expanded="true">Sắp diễn ra <span class="badge badge-pill badge-warning shadow-warning">1</span></a>--%>
                                <%--                        </li>--%>
                                <!-- <li class="nav-item">
                                    <a href="#navpills-4" class="nav-link" data-toggle="tab" aria-expanded="true">Đã hủy <span class="badge badge-pill badge-danger shadow-danger">1</span></a>
                                </li> -->
                            </ul>

                        </div>
                        <div class="col-3"><a href="/admin/khuyen-mai/create" class="btn btn-success">+ Tạo mới</a>
                        </div>
                    </div>

                </div>
                <div class="group123 ">
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" aria-hidden="true"
                         viewBox="0 0 512 512">
                        <style>svg {
                            fill: #ebeef4
                        }</style>
                        <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                    </svg>
                    <input placeholder="Tìm khuyến mại" type="search" class="inputghichu w-100">
                </div>
                <%--                <div>--%>
                <%--                    <nav class="navbar navbar-light bg-light">--%>
                <%--                        <form class="form-inline">--%>
                <%--                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">--%>
                <%--                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
                <%--                        </form>--%>
                <%--                    </nav>--%>
                <%--                </div>--%>
            </div>
            <hr>
            <div class="tab-content project-list-group" id="myTabContent">
                <div class="tab-pane fade active show" id="navpills-1">
                    <div id="cardKhuyenMai">

                    </div>
                </div>
                <div class="tab-pane fade" id="navpills-2">
                    <!--  -->
                    <div class="card">
                        <div class="project-info">
                            <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                <p class="text-primary mb-1">#Giảm giá</p>
                                <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Chào Hè
                                    - Đón nắng</a></h5>
                                <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Ngày tạo:
                                    20/09/2023
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Giá trị</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Giảm 50%</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Kết thúc</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">30/09/2003</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Số lượng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">99</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Đã dùng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">01</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Người tạo</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Do Huy</h5>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex project-status align-items-center">
                                    <span class="btn bgl-warning text-warning status-btn mr-3">Đang chạy</span>
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="navpills-3">
                    <div class="card">
                        <div class="project-info">
                            <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                <p class="text-primary mb-1">#Giảm giá</p>
                                <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Sắm xuân
                                    vui tết</a></h5>
                                <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Ngày tạo:
                                    20/09/2023
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Giá trị</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Giảm 49%</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Kết thúc</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">30/09/2003</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Số lượng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">01</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Đã dùng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">99</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Người tạo</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Do Huy</h5>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex project-status align-items-center">
                                    <span class="btn bgl-info text-info status-btn mr-3">Hoàn tất</span>
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="tab-pane fade" id="navpills-4">
                    <div class="card">
                        <div class="project-info">
                            <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                <p class="text-primary mb-1">#Giảm giá</p>
                                <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Ngày hội trăng rằm</a></h5>
                                <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Ngày tạo: 20/09/2023</div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Giá trị</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Giảm 55%</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Kết thúc</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">30/09/2003</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Số lượng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">10</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Đã dùng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">00</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Người tạo</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Do Huy</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex project-status align-items-center">
                                    <span class="btn bgl-danger text-danger status-btn mr-3">Đã hủy</span>
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                <div class="tab-pane fade" id="navpills-4">
                    <div class="card">
                        <div class="project-info">
                            <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                <p class="text-primary mb-1">#Giảm giá</p>
                                <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Chào Thu
                                    - Gió mới</a></h5>
                                <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Ngày tạo:
                                    20/09/2023
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Giá trị</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Giảm 55%</h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Kết thúc</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">30/09/2003</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Số lượng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">10</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Đã dùng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">00</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Người tạo</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Do Huy</h5>
                                    </div>
                                </div>
                            </div> -->
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex project-status align-items-center">
                                    <span class="btn bgl-warning text-warning status-btn mr-3">Sắp diễn ra</span>
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
    function loadKhuyenMai() {
        $.ajax({
            url: '/api/khuyen-mai',
            method: 'GET',
            success: function (data) {
                console.log(data);
                var khuyenMai = $('#cardKhuyenMai');
                khuyenMai.empty();
                var count = data.length;
                $("#tongKM").text(count);
                data.forEach(function (item) {
                    console.log(item.ten);
                    // var dateStr = FormatDateTime(item.ngayBatDau);
                    console.log(item.ngayBatDau);
                    var ngayBatDauFMT = formatMicrosoftJSONDate(item.ngayBatDau);
                    var ngayKetThucFMT = formatMicrosoftJSONDate(item.ngayKetThuc);
                    var ngayTaoFMT = formatMicrosoftJSONDate(item.ngayTao);
                    var giaTriFMT = formatNumber(item.giaTri);
                    var soLuongFMT = formatNumber(item.soLuong);
                    var trangThaiStr = "";
                    var textColor = "";
                    var textFront = "text-info";
                    if (item.trangThai == 0) {
                        trangThaiStr = "Đã dừng";
                        textColor = "bgl-danger";
                        textFront = "text-danger";
                    } else if (item.trangThai == 2) {
                        trangThaiStr = "Sắp diễn ra";
                        textColor = "bgl-warning";
                        textFront = "text-warning";
                    } else {
                        trangThaiStr = "Hoạt động";
                        textColor = "bgl-info";
                    }
                    var card = `
                       <div class="card"  style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
             background-color: #fff" >
                        <div class="project-info">
                            <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                <p class="text-primary mb-1">#\${item.ma}</p>
                                <h5 class="title font-w600 mb-2"><a href="/admin/khuyen-mai/detail/\${item.ma}" class="text-black nav-link active">\${item.ten}</a></h5>
                                <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Ngày tạo: \${ngayTaoFMT}</div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Giá trị</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">Giảm: \${giaTriFMT} \${item.loai == 1 ? "%": "đ"} </h5>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">
                                    <div class="ml-1">
                                        <span>Ngày bắt đầu</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">\${ngayBatDauFMT}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">
                                    <div class="ml-1">
                                        <span>Ngày kết thúc</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">\${ngayKetThucFMT}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex align-items-center">

                                    <div class="ml-2">
                                        <span>Số lượng</span>
                                        <h5 class="mb-0 pt-1 font-w500 text-black">\${soLuongFMT}</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                <div class="d-flex project-status align-items-center">
                                    <span class="btn \${textColor} \${textFront} status-btn mr-3">\${trangThaiStr}</span>
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                           <a class="dropdown-item btn-delete-khuyen-mai" data-ma="\${item.ma}">Xóa khuyến mại</a>
                                            <a class="dropdown-item" href="/admin/khuyen-mai/edit/\${item.ma}" >Chỉnh sửa</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                        `
                    khuyenMai.append(card);
                })
            },
            error: function (xhr, status, error) {
                alert('Lỗi khi lấy danh sách : ' + error);
            }
        });
    }

    loadKhuyenMai();

    //    format date
    function formatMicrosoftJSONDate(jsonDate) {
        // Create a Date object from the timestamp
        var date = new Date(jsonDate);
        var day = date.getDate().toString().padStart(2, '0');
        var month = (date.getMonth() + 1).toString().padStart(2, '0');
        var year = date.getFullYear();
        var hours = date.getHours().toString().padStart(2, '0');
        var minutes = date.getMinutes().toString().padStart(2, '0');
        // Format the date into "HH:MM dd-MM-yyyy" format
        var formattedDate = day + '/' + month + '/' + year;
        return formattedDate;
    }

    $('#cardKhuyenMai').on('click', (e) => {
        if ($(e.target).hasClass('btn-delete-khuyen-mai')) {
            let ma = $(e.target).data('ma');
            showConfirm("Bạn có muốn xóa?", ma)
                .then((confirmed) => {
                    if (confirmed) {
                        $.ajax({
                            url: '/api/khuyen-mai/delete/' + ma,
                            method: 'DELETE',
                            success: function (req) {
                                console.log(req);
                                loadKhuyenMai();
                                showSuccess("Delete success");
                            },
                            error: function (xhr, status, error) {
                                showError("Delete fail");
                            }
                        });
                    }
                })
        }
    });

    function formatNumber(number) {
        return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
</script>
