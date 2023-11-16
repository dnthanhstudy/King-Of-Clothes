<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 9/26/2023
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm nhân viên</title>
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
                Tạo mới nhân viên
            </h4>

            <div>
                <button class="btn"  data-bs-toggle="modal" data-bs-target="#addcv" style="background-color: #eb8153;color: white" >
                    <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                        <path d="M184 24c0-13.3-10.7-24-24-24s-24 10.7-24 24V64H96c-35.3 0-64 28.7-64 64v16 48V448c0 35.3 28.7 64 64 64H416c35.3 0 64-28.7 64-64V192 144 128c0-35.3-28.7-64-64-64H376V24c0-13.3-10.7-24-24-24s-24 10.7-24 24V64H184V24zM80 192H432V448c0 8.8-7.2 16-16 16H96c-8.8 0-16-7.2-16-16V192zm176 40c-13.3 0-24 10.7-24 24v48H184c-13.3 0-24 10.7-24 24s10.7 24 24 24h48v48c0 13.3 10.7 24 24 24s24-10.7 24-24V352h48c13.3 0 24-10.7 24-24s-10.7-24-24-24H280V256c0-13.3-10.7-24-24-24z"/>
                    </svg> Tạo mới chức vụ
                </button>

                <div class="modal" id="addcv" tabindex="-1" aria-labelledby="addcv" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="addcv">Tạo chức vụ mới</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <label>Nhập tên chức vụ mới:</label>
                                <input type="text" id="tencv" class="form-control" >
                                <div class="mt-3">
                                    <input type="checkbox" class="btn-check"  value="STAFF" autocomplete="off" id="staffCheckbox">
                                    <label class="btn" for="staffCheckbox">STAFF</label>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="themcv" class="btn btn-outline-primary">Add</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <form action="" id="form-submit-nhan-vien">
                <div class="row">
                    <div class="col">
                        <label>Họ và tên:</label>
                        <input type="text" name="ten" id="tennv" class="form-control" >
                    </div>
                    <div class="col">
                        <label>Địa chỉ email:</label>
                        <input type="email" name="email" id="email" class="form-control" >
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <label>Địa chỉ thường chú:</label>
                        <input type="text" name="diaChi"  id="diachi" class="form-control" >
                    </div>
                    <div class="col">
                        <label>Số điện thoại:</label>
                        <input type="text" id="sdt" name="soDienThoai" class="form-control" >
                    </div>
                    <div class="col">
                        <label  class="form-label">Ngày sinh:</label>
                        <input type="date" name="ngaySinh" class="form-control" id="ngaysinh" >
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <label>Số CCCD:</label>
                        <input type="text" name="canCuocCongDan" id="cccd" class="form-control" >
                    </div>
                    <div class="col">
                        <label class="form-label">Ngày cấp:</label>
                        <input type="date" name="ngayCap" class="form-control" id="ngaycap">
                    </div>
                    <div class="col">
                        <label>Nơi cấp:</label>
                        <input type="text" id="noicap" class="form-control" >
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <label>Chức vụ:</label>
                        <select class="form-select" id="selectChucVu" name="maChucVu">
                            <option value="STAFF" selected>Nhân viên</option>
                        </select>
                    </div>
                    <div class="col">
                        <label>Giới tính:</label>
                        <select class="form-select" id="gioitinh" name="gioiTinh">
                            <option value="Nam" selected>Nam</option>
                            <option value="Nữ">Nữ</option>
                        </select>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="form-group col-md-12">
                        <input type="file" id="upload-image" name="ImageUpload">
                        <div id="thumbbox">
                            <img height="300" width="300" alt="Thumb image" id="thumbimage" style="display: none" />
                        </div>
                    </div>
                </div>

                <div class="row mt-3">
                    <div class="col">
                        <button type="submit" class="btn" id="them" style="background-color: #A6edab; color: #00852d">Add</button>
                        <a href="/admin/nhanvien" class="btn ms-2" style="background-color: #FFc5c4; color: #be2329">Cancel</a>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>
<script>
    let image = {};
    $("#upload-image").change(function (event) {
        var reader = new FileReader();
        var file = $(this)[0].files[0];
        reader.onload = function (e) {
            let imageBase64 = e.target.result;
            let name = file.name;

            image["base64"] = imageBase64;
            image["anh"] = name;
        };
        reader.readAsDataURL(file);
        openImage(this);
    });

    function openImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#thumbimage').attr("src", reader.result);
                $('#thumbimage').show();
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    $('#them').on('click', (e) => {
        e.preventDefault();
        let data = getDataFromForm();
        console.log(data);
        $.ajax({
            url: "/api/nhan-vien",
            method: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(data),
            success: (response) => {
                console.log("success");
            },
            error: (error) => {
                console.log(error);
            }
        });
    })

    function getDataFromForm() {
        let dataFromForm = $("#form-submit-nhan-vien").serializeArray();
        let data = {};
        $.each(dataFromForm, (index, value) => {
            let propertyName = value.name;
            let propertyValue = value.value;
            data[propertyName] = propertyValue;
        });
        data['anh'] = image.anh;
        data['base64'] = image.base64;
        return data;
    }

</script>
</body>
</html>
