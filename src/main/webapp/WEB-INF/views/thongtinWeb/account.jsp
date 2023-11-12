<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/26/2023
  Time: 11:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account</title>
</head>

<div class="khung">
    <span style="font-size: 25px">Hồ sơ của tôi</span>
    <hr>
    <div class="row">
        <div class="col-8" style="border-right: 2px solid #dedede">
            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Tên tài khoản:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <p>seiichitakashi</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Tên:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Họ và tên:" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Email:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Email:" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Số điện thoại:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Số điện thoại:" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Giới tính:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                        <label class="form-check-label" for="inlineRadio1">Nam</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                        <label class="form-check-label" for="inlineRadio2">Nữ</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" >
                        <label class="form-check-label" for="inlineRadio3">Khác</label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Ngày sinh:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input type="date" placeholder="Ngày sinh:" class="form-control"/>
                </div>
            </div>

        </div>
        <div class="col-4 text-center mt-5">
            <div>
                <img src="/template/web/img/anh1.png" width="50%" style="border-radius: 50%" alt="">
            </div>
            <div class="mt-4">
                <button type="button" class="btn" style="background-color: #EFCACA;color: #BF0000"  onclick="chonAnh()">Chọn Ảnh</button>
            </div>
        </div>
    </div>
    <div style="margin-left: 170px" >
        <button type="button" class="btn" style="background-color: #EFCACA;color: #BF0000;"  >Submit</button>
    </div>
</div>

<script>
    function chonAnh() {
        var fileInput = document.createElement("input");
        fileInput.type = "file";
        fileInput.style.display = "none";
        document.body.appendChild(fileInput);
        fileInput.addEventListener("change", function () {

        });
        fileInput.click();
    }
</script>
</body>
</html>