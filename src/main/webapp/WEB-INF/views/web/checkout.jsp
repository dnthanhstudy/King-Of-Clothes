<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/31/2023
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="btnalldiachi" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"  >
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content" >
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel">Địa chỉ của tôi</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="height: 450px; overflow-y: scroll;">
                <div class="row" id="alldiachi">
                    <div class="col-10">
                        <div class="ms-3" style="border-bottom: #6C757D">
                            <input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1" value="" aria-label="...">
                            <div class="hstack gap-3 ms-3">
                                <div>
                                    <span class="text-dark">Khánh Linh</span>
                                </div>
                                <div class="vr" style="height: 30px"></div>
                                <div >
                                    <span class="">0987654321</span>
                                </div>
                            </div>
                            <div class="ms-3">
                                <p class="">Xóm yên lương, Xã Ngọc Lương, Huyện Yên Thủy, Hòa Bình</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-2">
                        <a class="text-decoration-none" style="color: #00aced" data-bs-target="#formdiachi" data-bs-toggle="modal">Cập nhật</a>
                    </div>

                </div>
                <button class="btn btn-light" onclick="themDiaChi()" data-bs-target="#formdiachi" data-bs-toggle="modal" >
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 448 512">
                        <path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/>
                    </svg>
                    Thêm địa chỉ mới</button>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Hủy</button>
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal" onclick="xacNhanDiaChi()">Xác nhận</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="formdiachi" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" style="overflow:hidden;">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Cập nhật địa chỉ</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-6">
                        <div class="mb-3">
                            <label  class="form-label">Tên người nhận</label>
                            <input type="text" class="form-control" id="tennguoinhanform">
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Số điện thoại</label>
                            <input type="text" id="sdtform" class="form-control" >
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mb-3">
                            <label class="form-label">Thành phố</label>
                            <select style="width: 100%" class="form-control" id="thanhpho"></select>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Quận/Huyện</label>
                            <select class="form-control " style="width: 100%" id="quanhuyen"></select>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label">Xã</label>
                            <select class="form-control" style="width: 100%" id="xa"></select>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mb-3">
                            <label class="form-label">Số nhà</label>
                            <textarea class="form-control" id="sonha" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="true"  id="defaultform">
                            <label class="form-check-label" >
                                Đặt làm địa chỉ mặc định
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-light" data-bs-target="#exampleModalToggle" data-bs-toggle="modal">Trở lại</button>
                <button class="btn btn-danger" data-bs-target="#exampleModalToggle" data-bs-toggle="modal" onclick="hoanThanh()">Hoàn thành</button>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Check Out</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Check Out</p>
        </div>
    </div>
</div>
<div class="container-fluid pt-5">
    <div class="px-xl-5">
        <div class="khung card">
            <div class="row">
                <h5 style="color: #C3817B"><i class="bi bi-geo-alt-fill"></i> Địa chỉ nhận hàng</h5>
            </div>
            <div class="row mt-2">
                <div class="col-4">
                    <h5 class="font-weight-bold" id="tennguoinhan">Tuấn Anh <span id="sdt">0389478937</span> </h5>
                </div>
                <div class="col-7">
                    <span id="diachi">Xóm ninh hoà, Xã Yên Trị, Huyện Yên Thủy, Hòa Bình, Vietnam </span><span style="background-color: #C3817B; color: white" id="defaultdc">Mặc định</span>
                </div>
                <div class="col-1">
                    <button class="custom-button" data-bs-target="#btnalldiachi" data-bs-toggle="modal" style="border: none;background: none;padding: 0;cursor: pointer;color: blue;text-decoration: none;">Thay đổi</button>
                </div>
            </div>
        </div>

        <div class="khung card mt-3">
            <div class="row">
                <div class="col-5">
                    <h5>Sản phẩm</h5>
                </div>
                <div class="col-2"></div>
                <div class="col-2">
                    <span>Đơn giá</span>
                </div>
                <div class="col-2">
                    <span>Số lượng</span>
                </div>
                <div class="col-1">
                    <span>Thành tiền</span>
                </div>
            </div>
            <div id="hdct">
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
                <div class="row mt-3" style="border-bottom: 1px solid #dedede">
                    <div class="col-5">
                        <div class="mb-3">
                            <div class="row g-0">
                                <div class="col-md-2">
                                    <img src="/template/web/img/anh2.png" class="img-fluid rounded-start " alt="...">
                                </div>
                                <div class="col-md-10">
                                    <div class="card-body">
                                        <h6 class="card-title">Áo polo nam aelimited</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title" style="border: 1px solid #dedede;padding: 5px">Loại: Trắng,Size M</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">300000</h6>
                    </div>
                    <div class="col-2 mt-3">
                        <h6 class="card-title">2</h6>
                    </div>
                    <div class="col-1 mt-3">
                        <h6 class="card-title">600000</h6>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung card mt-2">
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                <div class="col-7"></div>
                <div class="col-5">
                    <div class="row">
                        <div class="col-6">
                            <span><i class='bx bxs-coupon bx-tada bx-flip-vertical' style='color:#b29898' ></i> Voucher</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class=" text-cyan">Chọn Voucher</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="border-bottom: 1px solid #dedede;">
                <div class="col-5" style="border-right: 1px solid #dedede;">
                    <div class="row mt-3">
                        <div class="col-2">
                            <h6 class="mt-2">Lời nhắn:</h6>
                        </div>
                        <div class="col-10">
                            <input type="text" class="form-control w-75" placeholder="Lưu ý cho shop">
                        </div>
                    </div>
                </div>
                <div class="col-7" >
                    <div class="row my-3" style="border-bottom: 1px solid #dedede; padding-bottom: 10px">
                        <div class="col-3">
                            <h6>Đơn vị vận chuyển:</h6>
                        </div>
                        <div class="col-7">
                            <h6>Nhanh</h6>
                            <span >Thời gian giao dự kiến <span id="thoigiandukien">2 Th11 - 7 Th11</span></span>
                        </div>
                        <div class="col-2">
                            <span class="float-right sotiengiaohang" >27500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <h6>Được đồng kiểm. <span style="font-size: 20px">℗</span></h6>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-9"></div>
                <div class="col-3">
                    <div class="row">
                        <div class="col-8">
                            <span>Tổng số tiền (<span id="tongsanpham"></span> sản phẩm):</span>
                        </div>
                        <div class="col-4 text-right">
                            <span class="tongtienghct">1.827.500₫</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung card mt-3">
            <div class="row" style="border-bottom: 1px solid #dedede; padding-bottom: 20px">
                <div class="col-3">
                    <h5>Phương thức thanh toán:</h5>
                </div>
                <div class="col-9">
                    <button class="btn btn-light" id="paypalButton" style="border: 1px solid #dedede">Ví điện tử</button>
                    <button class="btn btn-light ms-2" id="codButton" style="border: 1px solid #dedede">Thanh toán khi nhận hàng</button>
                </div>
            </div>
            <div class="row" style="border-bottom: 1px solid #dedede;">
                <div class="form-check ms-3 my-3" id="mbBankRadio">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios1" value="mbb" checked>
                    <label class="form-check-label" for="exampleRadios1">
                        <img src="/template/web/img/mb.png" alt=""> MB Bank
                    </label>
                </div>
                <div class="form-check ms-3 my-3" id="vpBankRadio">
                    <input class="form-check-input" type="radio" name="payment" id="exampleRadios2" value="paypal">
                    <label class="form-check-label" for="exampleRadios2">
                        <img src="/template/web/img/pp.webp" style="width: 70px;height: 70px" alt=""> PayPal
                    </label>
                </div>
                <div class="thanhtoan">
                    <div class="row my-3">
                        <div class="col-3">
                            <span>Thanh toán khi nhận hàng</span>
                        </div>
                        <div class="col-9">
                            <span>Phí thu hộ: ₫0 VNĐ. Ưu đãi về phí vận chuyển (nếu có) áp dụng cả với phí thu hộ.</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-9"></div>
                <div class="col-3">
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Tổng tiền hàng</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class="tongtienghct">1800000₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Phí vận chuyển</span>
                        </div>
                        <div class="col-6 text-right">
                            <span class="sotiengiaohang">27500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="col-6">
                            <span>Tổng thanh toán:</span>
                        </div>
                        <div class="col-6 text-right">
                            <span style="font-size: 30px; color: #C3817B" id="tongthanhtoan">1.827.500₫</span>
                        </div>
                    </div>
                    <div class="row my-3">
                        <button class="btn w-75 ms-5 text-light" style="background-color: #C3817B;" onclick="datHang()">Đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<form action="${pageContext.request.contextPath}/pay" method="post" style="display: none">
    <input type="hidden" name="method" value="paypal">
    <input type="hidden" name="intent" value="sale">
    <input type="hidden" name="currency" value="USD">
    <input type="hidden" name="description" value="Product Description">
    <input type="hidden" name="price"  value="10.00">
    <input type="hidden" name="idkh"  value="1">
    <input type="hidden" name="idttmuahang" value="" id="idttmuahang">
    <button id="submidpaypal" type="submit">Pay with PayPal</button>
</form>
