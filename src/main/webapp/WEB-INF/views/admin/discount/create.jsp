<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14-10-2023
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<title>Thêm khuyến mại</title>
<section>
    <div class="content-body">
        <div class="container-fluid">
            <!-- <div class="row page-titles mx-0">
                <div class="col-sm-6 p-md-0">
                    <div class="welcome-text">
                        <h4>Hi, welcome back!</h4>
                        <p class="mb-0">Validation</p>
                    </div>
                </div>
                <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Form</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">Validation</a></li>
                    </ol>
                </div>
            </div> -->
            <!-- row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Thông tin cơ bản</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form-valide" action="#" method="post">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-username">Loại khuyến mãi
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <div class="basic-form">
                                                        <form>
                                                            <div class="form-group mb-0">
                                                                <label class="radio-inline mr-3"><input type="radio" name="optradio"> Mã giảm giá hóa đơn</label>
                                                                <label class="radio-inline mr-3"><input type="radio" name="optradio"> Mã giảm giá sản phẩm</label>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Tên khuyến mãi
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="val-text" name="val-text" placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Mã khuyến mãi <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="val-email" name="val-text" placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-datetime-local">Thời gian sử dụng mã
                                                    <span class="text-danger">*</span>
                                                </label>
                                                <div class="col-lg-3">
                                                    <input type="datetime-local" class="form-control" id="val-password" name="val-datetime-local" placeholder="Choose a safe one..">
                                                </div>
                                                <div class="col-lg-3">
                                                    <input type="datetime-local" class="form-control" id="val-password" name="val-datetime-local" placeholder="Choose a safe one..">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Mô tả thêm <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <textarea class="form-control" id="val-suggestions" name="val-text" rows="2" placeholder="..."></textarea>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="card-header">
                            <h4 class="card-title">Thiết lập giảm giá</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-validation">
                                <form class="form-valide" action="#" method="post">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-username">Loại giảm giá | Mức giảm
                                                </label>
                                                <div class="col-lg-6">
                                                    <form action="#">
                                                        <div class="input-group mb-3">
                                                            <div class="input-group-prepend">
                                                                <!-- <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Theo phần trăm</button>
                                                                <div class="dropdown-menu">
                                                                    <a class="dropdown-item">Theo mức tiền</a>
                                                                </div> -->
                                                                <select id="inputState" class="form-control default-select ">
                                                                    <option selected="">Chọn loại</option>
                                                                    <option >Theo phần trăm</option>
                                                                    <option>Theo mức tiền</option>
                                                                </select>
                                                            </div>
                                                            <input type="text" class="form-control" id="val-text" name="val-text" placeholder="Nhập giá trị">
                                                        </div>


                                                    </form>
                                                </div>
                                                <!-- <div class="col-lg-3">
                                                    <input type="text" class="form-control" id="val-username" name="val-username" placeholder="Nhập giá trị">
                                                </div> -->
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Mức giảm tối đa <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="val-text" name="val-text" placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Giá trị đơn hàng tối thiểu <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="val-text" name="val-text" placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Tổng số lượng sử dụng <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form-control" id="val-text" name="val-text" placeholder="Nhập vào">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-lg-2 col-form-label" for="val-text">Sản phẩm áp dụng <span class="text-danger"></span>
                                                </label>
                                                <div class="col-lg-6">
                                                    <div class="col-lg-12 ml-auto">
                                                        <button type="button" class="btn btn-primary light mb-2" data-toggle="modal" data-target=".bd-example-modal-lg">Thêm sản phẩm</button>
                                                        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h5 class="modal-title">Thêm sản phẩm</h5>
                                                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                                                        </button>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                        <table id="example5" class="display" style="min-width: 845px">
                                                                            <thead>
                                                                            <tr>
                                                                                <th>
                                                                                    <div class="custom-control custom-checkbox ml-2">
                                                                                        <input type="checkbox" class="custom-control-input" id="checkAll" required="">
                                                                                        <label class="custom-control-label" for="checkAll"></label>
                                                                                    </div>
                                                                                </th>
                                                                                <th>Tên sản phẩm</th>
                                                                                <th>Mã SP</th>
                                                                                <th>Số lượng</th>
                                                                                <th>Giá tiền</th>
                                                                            </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                            <tr>
                                                                                <td>
                                                                                    <div class="custom-control custom-checkbox ml-2">
                                                                                        <input type="checkbox" class="custom-control-input" id="customCheckBox2" required="">
                                                                                        <label class="custom-control-label" for="customCheckBox2"></label>
                                                                                    </div>
                                                                                </td>
                                                                                <td>Áo khoác coolmate</td>
                                                                                <td>Cool999</td>
                                                                                <td>99</td>
                                                                                <td>200.000VNĐ</td>
                                                                            </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-danger light" data-dismiss="modal">Đóng</button>
                                                                        <button type="button" class="btn btn-primary">Xác nhận</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-lg-4 ml-auto">
                                                    <a href="project-list.html" class="btn btn-success">Xác nhận</a>
                                                    <a href="project-list.html" class="btn btn-danger">Hủy</a>
                                                    <!-- <button type="button" class="btn btn-primary">Xác nhận</button> -->
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>