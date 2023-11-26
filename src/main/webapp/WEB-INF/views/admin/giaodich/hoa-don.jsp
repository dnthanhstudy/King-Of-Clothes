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
            <div class="modal fade chitiethoadon" tabindex="-1" aria-labelledby="chitiethoadon" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-4" id="chitiethoadon">Chi tiết hóa đơn</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="card" style="box-shadow: rgba(0, 0, 0, 0.06) 0px 2px 4px 0px inset;padding: 20px; background-color: #fff">
                                <div class="">
                                    <h5>Thông tin khách hàng</h5>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col">
                                        <strong>Mã Khách hàng đặt:</strong> <span id="makh">KH01</span>
                                    </div>
                                    <div class="col">
                                        <strong>Tên người nhận:</strong> <span id="tennguoinhan">Đinh Tuấn Anh</span>
                                    </div>
                                    <div class="col">
                                        <strong>Số điện thoại:</strong> <span id="sodienthoai">0325808823</span>
                                    </div>
                                </div>
                                <div class="row my-2">
                                    <div class="col">
                                        <strong>Địa chỉ:</strong> <span id="diachi">Yên trị, Yên Thuỷ, Hoà bình</span>
                                    </div>
                                    <div class="col">
                                        <strong>Lưu ý cho shop:</strong>
                                        <p>abccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc</p>
                                    </div>
                                </div>

                            </div>
                            <div class="" style="height: 300px; overflow-y: scroll;" id="cart">
                                <div class="card">
                                    <div class="project-info">
                                        <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                        </div>
                                        <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                            <div class="d-flex align-items-center">
                                                <div class="ml-2">
                                                    <span>Mã biến thể</span>
                                                    <h5 class="mb-0 pt-1 font-w500 text-black" >SP03</h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                            <div class="d-flex align-items-center">
                                                <div class="ml-2">
                                                    <span>Tên sản phẩm</span>
                                                    <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                                    <div class="text-success" >Màu hồng, M</div>
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
                                                    <h5 class="mb-0 pt-1 font-w500 text-black" >150000</h5>
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
                            <div class="row">
                                <div class="col-8"></div>
                                <div class="col-4">
                                    <div class="d-flex justify-content-between">
                                        <h6>Tiền ship:</h6>
                                        <h6>25.000 VND</h6>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <h6>Tiền sản phẩm:</h6>
                                        <h6>500.000 VND</h6>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                        <h6>Tổng tiền hàng:</h6>
                                        <h6>525.000 VND</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer" id="trangthaibutton">
                            <button type="button" class="btn btn-outline-default" data-bs-dismiss="modal">Hủy</button>
                            <button type="button" class="btn btn-outline-secondary">Nhận đơn</button>
                            <button type="button" class="btn btn-outline-success">Nhận đơn</button>
                            <button type="button" class="btn btn-outline-warning">Nhận đơn</button>
                            <button type="button" class="btn btn-outline-primary">Nhận đơn</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/admin/giao-dich/hoa-don">Online</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " href="/admin/giao-dich/hoa-don-off">Offline</a>
                </li>
            </ul>

            <div class="card mt-4" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
        padding: 20px; background-color: #fff">
                    <div class=" hstack gap-3">
                        <div class="">
                            <h4>Danh sách hóa đơn</h4>
                        </div>
                        <div class=" ms-auto">
                            <div class="radio-inputs">
                                <label class="radio">
                                    <input type="radio" name="radio" checked="">
                                    <span class="name">Chờ xác nhận</span>
                                </label>
                                <label class="radio">
                                    <input type="radio" name="radio">
                                    <span class="name">Đã huỷ</span>
                                </label>

                                <label class="radio">
                                    <input type="radio" name="radio">
                                    <span class="name">Đã thanh toán</span>
                                </label>
                            </div>
                        </div>
                        <div class="vr"></div>
                        <div class="">
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


                    <hr>
                    <div >
                        <hr>
                            <table class="table " id="tblHoaDon" >
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
              console.log(req);
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
                    <button class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target=".chitiethoadon" onclick="chiTietHoaDon(\${item.id})">Chi tiết</button>
                </td>
                </tr>
         `)
      })
      $("#tblHoaDon").dataTable({
          destroy: true,
          stripeClasses: ['w-100'],
          paging:false
      })
  }
   function chiTietHoaDon(idhd) {
       $.ajax({
           url: '/api/hdct/'+idhd,
           method: 'GET',
           success: function (req) {
               var data  = req.data[0];
               console.log(data)
              $("#makh").text(data.maKhachHang)
              $("#tennguoinhan").text(data.tenNguoiNhan)
              $("#sodienthoai").text(data.soDienThoai)
              $("#diachi").text(data.diaChiNguoiNhan)
               let cart = $("#cart")
               cart.empty();
               let html = "";
                req.data.forEach(function (item,index) {
                    html+=`
                     <div class="card">
                        <div class="project-info">
                        <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                        <span>#</span>
                    <h5 class="mb-0 pt-1 font-w500 text-black">\${index+1}</h5>
                </div>
                    <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="ml-2">
                                <span>Mã biến thể</span>
                                <h5 class="mb-0 pt-1 font-w500 text-black" >\${item.maBienThe}</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="ml-2">
                                <span>Tên sản phẩm</span>
                                <h5 class="mb-0 pt-1 font-w500 text-black">\${item.tenSanPham}</h5>
                                <div class="text-success" >\${item.tenBienThe}</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="ml-2">
                                <span>Đơn giá</span>
                                <h5 class="mb-0 pt-1 font-w500 text-black">\${item.giaTien}</h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="ml-2">
                                <span>Số lượng</span>
                                <input type="text" class="form-control w-50" style="text-align: center; height: 30px" value="\${item.soLuong}">
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                        <div class="d-flex align-items-center">
                            <div class="ml-2">
                                <span>Thành tiền</span>
                                <h5 class="mb-0 pt-1 font-w500 text-black" >\${item.tongTienHdct}</h5>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                    `
                })
               cart.append(html);
               setTrangThaiHoaDon(idhd,data.trangThaiHoaDon)
           },
           error: function(xhr, status, error) {
               console.log("Có lỗi xảy ra")
           }
       });
   }
    // <div class="modal-footer" id="trangthaibutton">
    //     <button type="button" class="btn btn-default" data-bs-dismiss="modal">Hủy</button>
    //     <button type="button" class="btn btn-info">Nhận đơn</button>
    // </div>
   function setTrangThaiHoaDon(idhd,trangThaiHoaDon) {

        let trangThaiHtml = $("#trangthaibutton");
        trangThaiHtml.empty();
        trangThaiHtml.append('<button type="button" class="btn btn-default" data-bs-dismiss="modal">Quay lại</button>');
       if (trangThaiHoaDon=='Chờ nhận đơn'){
           trangThaiHtml.append(`
           <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="thayDoiTrangThaiHoaDon(\${idhd},'HUYDON')">Huỷ đơn</button>
           <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="thayDoiTrangThaiHoaDon(\${idhd},'DANHANDON')">Nhận đơn</button>
           `)
       }else if (trangThaiHoaDon=='Đã nhận đơn'){
          trangThaiHtml.append(`
           <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="thayDoiTrangThaiHoaDon(\${idhd},'HUYDON')">Huỷ đơn</button>
           <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="thayDoiTrangThaiHoaDon(\${idhd},'DANGGIAOHANG')">Đang giao hàng</button>
          `);
       }else if (trangThaiHoaDon=='Đang giao hàng'){
           trangThaiHtml.append(`
                    <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="thayDoiTrangThaiHoaDon(\${idhd},'DANHANHANG')">Đã nhận hàng</button>
      `);
       }


   }
   function thayDoiTrangThaiHoaDon(idhd,trangThai){
       $.ajax({
           url: `/api/hoadon/thaydoitrangthai?idhd=\${idhd}&trangthai=\${trangThai}`,
           method: 'GET',
           success: function (req) {
               showMessageHoaDon(trangThai);
               loadDsHoaDon();
           },
           error: function(xhr, status, error) {
               console.log("Có lỗi xảy ra")
           }
       });
   }
   function showMessageHoaDon(trangThai){
           if (trangThai=='HUYDON'){
               showSuccess("Đã huỷ đơn")
           }else  if (trangThai=="DANHANDON"){
               showSuccess("Đã nhận đơn")
           }else if (trangThai=="DANGGIAOHANG"){
               showSuccess("Đơn hàng đang giao hàng")
           }else if (trangThai=="DANHANHANG"){
               showSuccess("Đơn hàng đã nhận")
           }

   }
</script>