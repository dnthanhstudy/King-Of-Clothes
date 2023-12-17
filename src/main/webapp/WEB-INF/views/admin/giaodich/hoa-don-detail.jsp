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
                 <div class="col-lg-9">
                    <div class="card" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                        <div class="d-flex justify-content-between">
                            <h4>Thông tin khách hàng</h4>
                            <button type="button" class="buttonExport" id="exportButton">
                                <span class="button__text">Export</span>
                                <span class="button__icon"><svg class="svgExport" data-name="Layer 2" id="bdd05811-e15d-428c-bb53-8661459f9307" viewBox="0 0 35 35" xmlns="http://www.w3.org/2000/svg"><path d="M17.5,22.131a1.249,1.249,0,0,1-1.25-1.25V2.187a1.25,1.25,0,0,1,2.5,0V20.881A1.25,1.25,0,0,1,17.5,22.131Z"></path><path d="M17.5,22.693a3.189,3.189,0,0,1-2.262-.936L8.487,15.006a1.249,1.249,0,0,1,1.767-1.767l6.751,6.751a.7.7,0,0,0,.99,0l6.751-6.751a1.25,1.25,0,0,1,1.768,1.767l-6.752,6.751A3.191,3.191,0,0,1,17.5,22.693Z"></path><path d="M31.436,34.063H3.564A3.318,3.318,0,0,1,.25,30.749V22.011a1.25,1.25,0,0,1,2.5,0v8.738a.815.815,0,0,0,.814.814H31.436a.815.815,0,0,0,.814-.814V22.011a1.25,1.25,0,1,1,2.5,0v8.738A3.318,3.318,0,0,1,31.436,34.063Z"></path></svg></span>
                            </button>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-1">
                                    <img src="/template/admin/images/avatar.jpeg" width="50px" style="border-radius: 50%" alt="">
                            </div>
                            <div class="col-11">
                                    <span style="color: #eb8153" class="fs-5" id="tenKhachHang"></span><br>
                                    <span class="fs-5" id="soDienThoaiKhachHang"></span>
                            </div>
                        </div>
                    </div>
                     <div class="card mt-2" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                         <h4>Thông tin sản phẩm</h4>
                         <hr>
                         <table class="table table-hover table-striped" id="tblSanPham">
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
                                 <td></td>
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
                                    <div class="col-5 text-right font-weight-bold" id="invoice-quantity"></div>
                                </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Tổng tiền hàng:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold invoice-total"></div>
                                 </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Khách cần trả:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold invoice-total"></div>
                                 </div>
                                 <div class="row mt-2">
                                     <div class="col-7">
                                         Khách đã trả:
                                     </div>
                                     <div class="col-5 text-right font-weight-bold" id="tienKhachTra"></div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-3">
                     <div class="card " style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
    padding: 20px; background-color: #fff">
                         <h4>Thông tin hóa đơn</h4>
                         <hr>
                         <div class="d-flex justify-content-between">
                                 <span class="fs-5">Mã hóa đơn:</span>
                                 <span style="color: #EB8153" class="fs-5" id="ma"></span>
                         </div>
                         <div class="d-flex justify-content-between mt-3">
                                <span class="fs-5">Thời gian:</span>
                                 <span class="fs-5" id="ngayTao"></span>
                         </div>
                         <div class="d-flex justify-content-between mt-3">
                                  <span class="fs-5">Người bán:</span>
                                 <span class="fs-5" id="tenNhanVien"></span>
                         </div>
                         <div class="row mt-3">
                                <span class="fs-5">Ghi chú:</span>
                                 <textarea class="form-control"></textarea>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>


 <script>
     loadHoaDon();

     function getDateTimeFromTimestamp(unixTimeStamp) {
         let date = new Date(unixTimeStamp);
         return ('0' + date.getDate()).slice(-2) + '/' + ('0' + (date.getMonth() + 1)).slice(-2) + '/' + date.getFullYear() + ' ' + ('0' + date.getHours()).slice(-2) + ':' + ('0' + date.getMinutes()).slice(-2);
     }

     function loadHoaDon() {
         var url = window.location.pathname.split("/");
         var ma = url[url.length - 1];
         $.ajax({
             url: '/api/hoa-don-off/' + ma,
             method: 'GET',
             dataType: 'json',
             success: function (req) {
                 console.log(req)
                 let totalInvoice = 0;
                 let toatlQuantity = 0;

                 $("#ma").text(req.ma);
                 $("#tenKhachHang").text(req.tenKhachHang);
                 $("#soDienThoaiKhachHang").text(req.soDienThoaiKhachHang);
                 $("#tenNhanVien").text(req.tenNhanVien);
                 $('#ngayTao').text(getDateTimeFromTimestamp(req.ngayTao));
                 var tbody = $('#tblSanPham tbody');
                 tbody.empty();
                 var index = 0;
                 req.hoaDonChiTiet.forEach(function(item) {
                     totalInvoice += item.thanhTien;
                     toatlQuantity += item.soLuong;
                     var row = `
                            <tr>
                                <td>\${++index}</td>
                                <td>\${item.tenSanPham}</td>
                                 <td>\${item.soLuong}</td>
                                 <td>\${item.gia}</td>
                                 <td>\${item.thanhTien}</td>
                            </tr>
                        `;
                     tbody.append(row);
                     $('#invoice-quantity').text(toatlQuantity);
                     $('.invoice-total').text(totalInvoice);
                     $("#tienKhachTra").text(req.tienKhachTra);
                 });
             },
             error: function (xhr, status, error) {
                 console.log(error);
             }
         })
     }
 </script>
</body>
</html>
