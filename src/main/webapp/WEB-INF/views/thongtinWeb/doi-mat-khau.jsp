<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/19/2023
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
    <title>Đổi mật khẩu</title>
</head>
<body>
<div class="khung">
    <span style="font-size: 25px"><s:message code="web.ttweb.changPass"/></span>
    <hr>
    <div class="row">
        <div class="col-8" style="border-right: 2px solid #dedede">
            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.OldPass"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Mật khẩu cũ:" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.NewPass"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Mật khẩu mới:" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.ConfirmPass"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Xác nhận mật khẩu:" class="form-control"/>
                </div>
            </div>
        </div>
        <div class="col-4 text-center mt-5">
        </div>
    </div>
    <div style="margin-left: 170px" >
        <button type="button" class="btn" style="background-color: #EFCACA;color: #BF0000;"  ><s:message code="web.ttweb.submit"/></button>
    </div>
</div>
</body>
</html>
