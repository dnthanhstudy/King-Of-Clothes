<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Mở ca làm việc</title>
</head>
<body>
<div class="content-body">
    <c:if test="${param.isNotOpenShift != null}">
        <script>
            showError("Bạn cần phải mở ca làm việc mới thực hiện được các quyền tiêp theo!")
        </script>
    </c:if>
    <div class="container-fluid">
        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
            Mở ca làm việc
        </h4>

        <div class="row ">
            <div class="col-12 col-md-3 col-lg-3 col-xl-3"></div>
            <div class="col-12 col-md-12 col-lg-6 col-xl-6">
                <div class="card">
                    <div class="card-header" style="background-color: #9df99d">
                        <div>
                            Vui lòng mở ca làm việc mới để có thể thực hiện chức năng dành cho nhân viên thu ngân
                        </div>
                    </div>
                    <div class="card-body ">
                        <div class="row">
                            <div class="col-4">
                                <h6>Tên nhân viên:</h6>
                            </div>
                            <div class="col-8">
                                <span><%=SecurityUtils.getPrincipal().getTen()%></span>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-4">
                                <h6>Giờ bắt đầu:</h6>
                            </div>
                            <div class="col-8">
                                <span id="thoiGian"></span>
                            </div>
                        </div>

                        <div class="row mt-2">
                            <div class="col-4">
                                <h6>Tiền mặt đầu ca:</h6>
                            </div>
                            <div class="col-8">
                                <div class="input-wrapper1">
                                    <input class="input-box1" type="text" id="soTienDauCa" placeholder="Nhập số tiền">
                                    <span class="underline1"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2 float-right">
                            <div class="">
                                <a href="#" class="btn ms-2" style="background-color: #FFc5c4; color: #be2329">Đăng xuất</a>
                                <button class="btn" id="addMocaButton" style="background-color: #A6edab; color: #00852d">Mở ca</button>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
            <div class="col-12 col-md-3 col-lg-3 col-xl-6"></div>
        </div>
    </div>
</div>
<script>
    $('#thoiGian').text(new Date().toLocaleString());
    if(role === "STAFF"){
        $('#menu').html('');
    }

    $('#addMocaButton').click('on', (e) => {
        let data = {}
        $.ajax({
            url: "/api/nhan-vien/" + $('.user-name-login').text(),
            method: "PUT",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(data),
            success: (response) => {
                window.location.href = "/admin/giao-dich/hoa-don";
            },
            error: (error) => {
                console.log("Error");
            }
        });
    })
</script>
</body>
</html>
