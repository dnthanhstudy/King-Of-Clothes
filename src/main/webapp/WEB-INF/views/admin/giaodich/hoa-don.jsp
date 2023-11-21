<%--
  Created by IntelliJ IDEA.
  User: MMC
  Date: 10/27/2023
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Hóa Đơn</title>
</head>
<section>

    <div class="content-body" >
        <div class="container-fluid">
            <div class="card card-body hstack gap-3">
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
                    <div class="row col-12">
                        <h4>Danh sách hóa đơn</h4>
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
                                </tbody>
                            </table>
                    </div>
                </div>

                <nav class="mt-2">
                    <ul class="pagination pagination-gutter pagination-primary  no-bg">
                        <li class="page-item page-indicator">
                            <a class="page-link" href="javascript:void(0)">
                                <i class="la la-angle-left"></i></a>
                        </li>
                        <li class="page-item "><a class="page-link" href="javascript:void(0)">1</a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="javascript:void(0)">2</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                        <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                        <li class="page-item page-indicator">
                            <a class="page-link" href="javascript:void(0)">
                                <i class="la la-angle-right"></i></a>
                        </li>
                    </ul>
                </nav>

        </div>
    </div>
</section>

<script>
    loadDsHoaDon()
  function loadDsHoaDon() {
      $.ajax({
          url: '/api/hoadon/dshoadon',
          method: 'GET',
          success: function (req) {
              loadTable(req.data)

          },
          error: function(xhr, status, error) {
              console.log("Có lỗi xảy ra")
          }
      });
  }
  function loadTable(data) {
      let table = $("#tblHoaDon tbody");
      table.empty();
      data.forEach(function (item,index) {
         table.append(`
            <tr>
                  <th scope="row">\${index+1}</th>
                  <td>\${item.ma}</td>
                  <td>\${item.tenNguoiNhan}</td>
                  <td>\${getFormattedDate(item.thoiGianDat)}</td>
                  <td>\${convertVND(item.tongTien)}</td>
                  <td>\${item.phuongThucThanhToan}</td>
                  <td>\${item.trangThai}</td>
                  <td>
                    <a href="" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#chitiethoadon">Chi tiết</a>

                        <div class="modal fade" id="chitiethoadon" tabindex="-1" aria-labelledby="chitiethoadon" aria-hidden="true">
                             <div class="modal-dialog modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="chitiethoadon">Chi tiết hóa đơn</h1>
                                         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="card" style="box-shadow: rgba(0, 0, 0, 0.06) 0px 2px 4px 0px inset;padding: 20px; background-color: #fff">
                                            <div class="">
                                                <h4>Thông tin khách hàng</h4>
                                            </div>
                                            <hr>
                                            <div class="row my-2">
                                                <div class="col-lg-6 col-md-6 col-sm-6">
                                                    <strong>Mã khách hàng:</strong> <span>KH01</span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6">
                                                    <strong>Số điện thoại:</strong> <span>0325808823</span>
                                                </div>
                                            </div>
                                            <div class="row my-2">
                                                 <div class="col-lg-6 col-md-6 col-sm-6">
                                                    <strong>Tên người nhận:</strong> <span>Đinh Tuấn Anh</span>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6">
                                                    <strong>Địa chỉ:</strong> <span>Yên trị, Yên Thuỷ, Hoà bình</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="" style="height: 400px; overflow-y: scroll;">
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div class="project-info">
                                                    <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                                         <span>#</span>
                                                        <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                               <span>Mã sản phẩm</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                 <span>Tên sản phẩm</span>
                                                                 <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                                 <div class="text-success">Màu hồng, M</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Số lượng</span>
                                                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Đơn giá</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                                        <div class="d-flex align-items-center">
                                                            <div class="ml-2">
                                                                <span>Thành tiền</span>
                                                                <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                     </div>
                                    <div class="modal-footer">
                                         <button type="button" class="btn btn-default" data-bs-dismiss="modal">Hủy</button>
                                         <button type="button" class="btn btn-info">Nhận đơn</button>
                                    </div>
                                </div>
                             </div>
                        </div>
                </td>
                </tr>
         `)
      })
      // $("#tblHoaDon").dataTable({
      //     destroy: true,
      //     stripeClasses: ['w-100'],
      // })
  }
    // let dataTable = $("#tblHoaDon").DataTable({
    //     destroy: true,
    //     data: req.data,
    //     responsive:true,
    //     pagingType: $(window).width() < 768 ? "simple" : "simple_numbers",
    //     searching: false,
    //     columns: [
    //         {
    //             data: null,
    //             render: function (data, type, row, meta) {
    //                 return meta.row + 1; // Số thứ tự bắt đầu từ 1
    //             },
    //             orderData: null, // Không sắp xếp cột số thứ tự
    //         },
    //         { data: 'ma' },
    //         { data: 'tenNguoiNhan' },
    //         { data: 'thoiGianDat', render: function (data) { return formatDateInput(data) } },
    //         { data: 'tongTien'},
    //         { data: 'phuongThucThanhToan'},
    //         { data: 'trangThai'},
    //         {
    //             data: 'id',
    //             render: function (data, type, row) {
    //                 return `<button type="button" class="btn btn-success">Sửa</button>`;
    //             }
    //         },
    //     ],
    //     order: [[3, 'desc']], // Sắp xếp theo cột Ngày tạo lập
    //     pageLength: 10,
    //     columnDefs: [
    //         { orderable: false, targets: 0 }, // Không sắp xếp cột số thứ tự
    //     ]
    // });

</script>