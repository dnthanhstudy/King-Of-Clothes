<%--
  Created by IntelliJ IDEA.
  User: MMC
  Date: 10/30/2023
  Time: 7:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detail Hóa Đơn</title>
</head>
<body>
 <section>
     <div class="content-body">
         <div class="container-fluid">
             <h3 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
                Chi tiết hóa đơn
             </h3>
             <div class="row">
                 <div class="col-lg-8">
                    <div class="card" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                        <div class="row col-12">
                            <h4>Thông tin khách hàng</h4>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-between">
                            <div class="">
                                <div class="row my-2 " >
                                        <div class="col-lg-3 col-md-3 col-sm-3">
                                            <img src="/template/web/img/anh1.png" width="50px" style="border-radius: 50%" alt="">
                                        </div>
                                        <div class="col-lg-9 col-md-9 col-sm-9" >
                                            <h5 style="color: #EB8153" id="tenkh"></h5>
                                           <span id="sdtkh"></span>
                                        </div>
                                </div>
                            </div>
                            <div class="">
                                <button type="button" class="buttonExport" id="exportButton">
                                    <span class="button__text">Export</span>
                                    <span class="button__icon"><svg class="svgExport" data-name="Layer 2" id="bdd05811-e15d-428c-bb53-8661459f9307" viewBox="0 0 35 35" xmlns="http://www.w3.org/2000/svg"><path d="M17.5,22.131a1.249,1.249,0,0,1-1.25-1.25V2.187a1.25,1.25,0,0,1,2.5,0V20.881A1.25,1.25,0,0,1,17.5,22.131Z"></path><path d="M17.5,22.693a3.189,3.189,0,0,1-2.262-.936L8.487,15.006a1.249,1.249,0,0,1,1.767-1.767l6.751,6.751a.7.7,0,0,0,.99,0l6.751-6.751a1.25,1.25,0,0,1,1.768,1.767l-6.752,6.751A3.191,3.191,0,0,1,17.5,22.693Z"></path><path d="M31.436,34.063H3.564A3.318,3.318,0,0,1,.25,30.749V22.011a1.25,1.25,0,0,1,2.5,0v8.738a.815.815,0,0,0,.814.814H31.436a.815.815,0,0,0,.814-.814V22.011a1.25,1.25,0,1,1,2.5,0v8.738A3.318,3.318,0,0,1,31.436,34.063Z"></path></svg></span>
                                </button>
                            </div>
                        </div>
                    </div>
                     <div class="card mt-2" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                         <h4>Thông tin sản phẩm</h4>
                         <hr>
                         <table class="table table-hover table-striped">
                             <thead>
                             <tr class="table-warning">
                                 <th scope="col">STT</th>
                                 <th scope="col">Tên sản phẩm </th>
                                 <th scope="col">Số lượng</th>
                                 <th scope="col">Đơn giá</th>
                                 <th scope="col">Thành tiền</th>
                             </tr>
                             </thead>
                             <tbody>
                             <tr>
                                 <td>SP01</td>
                                 <td>Aos polo nam aelimited</td>
                                 <td>3</td>
                                 <td>300000</td>
                             </tr>
                             </tbody>
                         </table>
                         <div class="row">
                             <div class="col-8"></div>
                             <div class="col-4">
                                <div class="row">
                                    <div class="col-7">
                                        Tổng số lượng:
                                    </div>
                                    <div class="col-5 text-right font-weight-bold">12</div>
                                </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Tổng tiền hàng:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold">3600000</div>
                                 </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                        Giảm giá hóa đơn:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold">0</div>
                                 </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Khách cần trả:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold">3600000</div>
                                 </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Khách đã trả:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold">3600000</div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-4">
                     <div class="card " style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                         <h4>Thông tin hóa đơn</h4>
                         <hr>
                         <div class="row">
                             <div class="col-5">
                                 <h6>Mã hóa đơn:</h6>
                             </div>
                             <div class="col-7">
                                 <span style="color: #EB8153" id="mahoadon"></span>
                             </div>
                         </div>
                         <div class="row mt-3">
                             <div class="col-5">
                                 <h6>Thời gian:</h6>
                             </div>
                             <div class="col-7">
                                 <span  id="thoigian"></span>
                             </div>
                         </div>
                         <div class="row mt-3">
                             <div class="col-5">
                                 <h6>Người tạo:</h6>
                             </div>
                             <div class="col-7">
                                 <div class="input-wrapper1">
                                     <input class="input-box1" type="text" id="nguoitao"  disabled>
                                     <span class="underline1"></span>
                                 </div>
                             </div>
                         </div>
                         <div class="row mt-3">
                             <div class="col-5">
                                 <h6>Người bán:</h6>
                             </div>
                             <div class="col-7">
                                 <div class="input-wrapper1">
                                     <input class="input-box1" type="text" id="nguoiban"  disabled>
                                     <span class="underline1"></span>
                                 </div>
                             </div>
                         </div>
                         <div class="row mt-3">
                             <div class="col-5">
                                 <h6>Phương thức thanh toán:</h6>
                             </div>
                             <div class="col-7">
                                 <span  id="phuongthuc"></span>
                             </div>
                         </div>
                         <div class="row mt-3">
                             <div class="col-5">
                                 <h6>Trạng thái:</h6>
                             </div>
                             <div class="col-7">
                                 <span style="color: #EB8153" id="trangthai"></span>
                             </div>
                         </div>
                         <div class="row mt-3">
                                 <h6>Ghi chú:</h6>
                                 <textarea class="form-control"></textarea>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>


 <script>
     const currentUrl = window.location.href;
     const results = currentUrl.split('/');
     const maHoaDon = results[results.length - 1];

     loadHoaDon();

     function loadHoaDon() {
         $.ajax({
             url: "/api/hoa-don-off/" + maHoaDon,
             method: "GET",
             dataType: "json",
             success: (response) => {
                 let totalInvoice = 0;
                 let toatlQuantity = 0;
                 let html = '';
                 if (response.tienThua === null) {
                     $('#money-change').text(0);
                 } else {
                     $('#money-change').text(response.tienThua);
                 }
                 if (response.hoaDonChiTiet.length > 0) {
                     $.each(response.hoaDonChiTiet, (index, item) => {
                         totalInvoice += item.thanhTien;
                         toatlQuantity += item.soLuong;
                         html += `<div class="card card-body mb-2 card-body-invoice-detail" style="border-radius: 10px;">
                                    <div class="row">
                                        <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                            <div class="d-flex align-items-center">
                                                <div class="ml-2">
                                                    <span>\${++index}</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xl-4 my-2 col-lg-4 col-sm-6">
                                            <div class="d-flex align-items-center">
                                                <div class="ml-2">
                                                    <span>Tên sản phẩm</span>
                                                    <h5 class="mb-0 pt-1 font-w500 text-black line-clamp-2">\${item.tenSanPham}</h5>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                            <div class="d-flex align-items-center">
                                                <div class="ml-2">
                                                    <span>Số lượng</span>
                                                    <div class="input-group w-100 action">
                                                        <button class="btn text-light btn-remove-product" style="background-color: #EB8153"><i class="fa fa-minus"></i></button>
                                                        <input type="text" class="form-control invoice-detail-quantity" style="text-align: center" value="\${item.soLuong}"/>
                                                        <button class="btn text-light btn-add-product" style="background-color: #EB8153"><i class="fa fa-plus"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                            <div class="d-flex  align-items-center">
                                                <div class="ml-2">
                                                    <span>Đơn giá</span><br>
                                                    <span class="mb-0 pt-1 fs-5 font-w500 text-black">\${item.gia}</span> đ
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                            <div class="d-flex project-status align-items-center">
                                                <div class="ml-2">
                                                    <span>Tổng tiền</span>
                                                    <span class="mb-0 pt-1 font-w500 fs-5 text-black">\${item.thanhTien}</span> đ
                                                </div>
                                                <div class="dropdown">
                                                    <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                            <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                            <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </svg>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item invoice-detail-delete" href="">Xóa</a>
                                                        <a class="dropdown-item invoice-detail-seen" href="" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop">Xem chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input type="hidden" name="" class="invoice-detail" value="\${item.id}">
                                </div>
                                `;

                         $('#invoice-non').hide();
                         $('#invoice-money-quantity').show();

                         $('#invoice').html(html + `<input type="hidden" name="" class="invoice-id" value="\${response.id}">`);
                         $('.invoice-total').text(totalInvoice);
                         $('#invoice-quantity').text(toatlQuantity);

                         $('.invoice-detail-seen').on('click', function () {
                             let invoiceDetailId = parseInt($(this).closest('.card-body-invoice-detail').find('.invoice-detail').val());
                             $.ajax({
                                 url: "/api/hoa-don-chi-tiet/" + invoiceDetailId,
                                 method: "GET",
                                 dataType: "json",
                                 success: (response) => {
                                     $("#tenSanPham").text(response.tenSanPham);
                                     $("#gia").text(response.gia);
                                     $("#soLuong").text(response.soLuong);
                                     $("#tenThuongHieu").text(response.tenThuongHieu);
                                     $("#image").attr('src', '/assets/images/sanpham/' + response.image);
                                     const giaTriThuocTinhChecked = response.giaTriThuocTinhChecked;
                                     let htmlThuocTinh = '';
                                     $.each(response.thuocTinh, (index, item) => {
                                         htmlThuocTinh += `<div class="row mt-3" style="border-bottom: 1px solid #dedede; padding: 10px"><div class="col-3"><h5>\${item.ten}:</h5></div>
                                                                    <div class="col-9 d-flex"> `

                                         let htmlGiaTriThuocTinh = '';
                                         $.each(item.giaTriThuocTinh, (index, item1) => {
                                             let checked = giaTriThuocTinhChecked.includes(item1.id) ? "checked" : "";
                                             htmlGiaTriThuocTinh += `<div class="form-check mr-3 mb-2">
                                                                        <input type="radio" class="form-check-input"
                                                                               value="\${item1.id}"  \${checked}>
                                                                        <label class="form-check-label">\${item1.giaTri}</label>
                                                                    </div>`

                                         })
                                         htmlThuocTinh = htmlThuocTinh + htmlGiaTriThuocTinh + `</div></div>`;
                                     })
                                     $(".thuoc-tinh").html(htmlThuocTinh)
                                 },
                                 error: (error) => {
                                 }
                             })

                         })

                         $('.btn-add-product').on('click', function () {
                             let quantity = parseInt($(this).closest('.action').find('.invoice-detail-quantity').val());
                             quantity += 1;
                             let invoiceDetailId = parseInt($(this).closest('.card-body-invoice-detail').find('.invoice-detail').val());
                             updateQuantity(invoiceDetailId, quantity)
                         })

                         $('.btn-remove-product').on('click', function () {
                             let quantityElement = $(this).closest('.action').find('.invoice-detail-quantity');
                             let quantity = parseInt(quantityElement.val());
                             if (quantity === 1) {
                                 showError("Số lượng không thể nhỏ hơn 1. Không thể giảm thêm nữa.")
                                 return;
                             }
                             quantity -= 1;
                             let invoiceDetailId = parseInt($(this).closest('.card-body-invoice-detail').find('.invoice-detail').val());
                             updateQuantity(invoiceDetailId, quantity);
                         });

                         $('.invoice-detail-quantity').on('input', function () {
                             let inputValue = $(this).val();
                             if (!(/^\d+$/.test(inputValue))) {
                                 inputValue = inputValue.replace(/[^\d]/g, '');
                                 $(this).val(inputValue);
                             }
                             let quantity = parseInt(inputValue);
                             if (isNaN(quantity) || quantity === 0) {
                                 quantity = 1;
                                 $(this).val(quantity);
                             }

                             let invoiceDetailId = parseInt($(this).closest('.card-body-invoice-detail').find('.invoice-detail').val());
                             updateQuantity(invoiceDetailId, quantity);
                         });

                         $('.invoice-detail-delete').on('click', function () {
                             let invoiceDetailId = parseInt($(this).closest('.card-body-invoice-detail').find('.invoice-detail').val());
                             $.ajax({
                                 url: "/api/hoa-don-chi-tiet/" + invoiceDetailId,
                                 method: "DELETE",
                                 contentType: "application/json; charset=utf-8",
                                 data: JSON.stringify(invoiceDetailId),
                                 success: (response) => {
                                     showSuccess("Xóa sản phẩm thành công");
                                     loadHoaDon()
                                 },
                                 error: (error) => {
                                 }
                             })

                         })
                     })
                 } else {
                     $('#invoice-money-quantity').hide();
                     $('.invoice-total').text(0);

                 }
             },
             error: (error) => {
                 console.log(error);
             }
         });
     }
 </script>
</body>
</html>
