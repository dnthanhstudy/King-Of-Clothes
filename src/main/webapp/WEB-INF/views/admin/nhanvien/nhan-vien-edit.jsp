<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 9/26/2023
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa nhân viên</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <div class="card card-body">
            <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
                Sửa thông tin nhân viên
            </h4>
            <input type="hidden"  id="id" >
            <div class="row">
                <div class="col">
                    <label>Mã nhân viên:</label>
                    <input type="text" id="manv" class="form-control" disabled >
                </div>
                <div class="col">
                    <label>Họ và tên:</label>
                    <input type="text" id="tennv" class="form-control" >
                </div>
                <div class="col">
                    <label>Địa chỉ email:</label>
                    <input type="email" id="email" class="form-control" >
                </div>
            </div>

            <div class="row mt-3">
                <div class="col">
                    <label>Địa chỉ thường chú:</label>
                    <input type="text" id="diachi" class="form-control" >
                </div>
                <div class="col">
                    <label>Số điện thoại:</label>
                    <input type="text" id="sdt" class="form-control" >
                </div>
                <div class="col">
                    <label  class="form-label">Ngày sinh:</label>
                    <input type="date" class="form-control" id="ngaysinh" >
                </div>
            </div>

            <div class="row mt-3">
                <div class="col">
                    <label>Số CCCD:</label>
                    <input type="text" id="cccd" class="form-control" >
                </div>
                <div class="col">
                    <label class="form-label">Ngày cấp:</label>
                    <input type="date" class="form-control" id="ngaycap">
                </div>
                <div class="col">
                    <label>Nơi cấp:</label>
                    <input type="text" id="noicap" class="form-control" >
                </div>
            </div>

            <div class="row mt-3">
                <div class="col">
                    <label>Chức vụ:</label>
                    <select class="form-select" id="selectChucVu">
                    </select>

                </div>
                <div class="col">
                    <label>Giới tính:</label>
                    <select class="form-select" id="gioitinh">
                        <option value="true" selected>Nam</option>
                        <option value="false">Nữ</option>
                    </select>
                </div>
                <div class="col">
                    <label>Trạng thái:</label>
                    <select class="form-select" id="trangthai">
                        <option value="1" selected>Hoạt động</option>
                        <option value="0">Vô hiệu hóa</option>
                    </select>
                </div>
            </div>

            <div class="row mt-3">
                <label>Ảnh nhân viên:</label>
                <div class="form-group col-md-12">
                    <input type="file" id="upload-image" name="ImageUpload">
                    <div id="thumbbox">
                        <img height="300" width="300" alt="Thumb image" id="thumbimage" style="display: none" />
                    </div>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col">
                    <button class="btn" id="updateButton" style="background-color: #A6edab; color: #00852d">Update</button>
                    <a href="/admin/nhan-vien" class="btn ms-2" style="background-color: #FFc5c4; color: #be2329">Cancel</a>
                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>
