<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/17/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nạp tiền</title>

</head>
<body>
<div style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; padding: 20px">
    <div class="row">
        <span class="fs-5" style="border-bottom: 1px solid #dedede;padding: 15px">Số tiền nạp (₫) : </span>
    </div>

    <div class="row" style="border-bottom: 1px solid #dedede;padding: 15px">
        <div class="col-4 p-2">
            <button class="color-button1 w-100">100.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button1 w-100">200.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button1 w-100">300.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button1 w-100">500.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button1 w-100">1.000.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button1 w-100">2.000.000</button>
        </div>
    </div>

    <div class="row">
        <span class="fs-5 p-3">Nhập số tiền (₫) : </span>
    </div>

    <div class="input-wrapper1">
        <input class="input-box1 w-25" type="text" >
        <span class="underline1"></span>
    </div>

    <div class="card p-2 mt-4">
        <span>Thanh toán</span>
        <p>COde phần thanh toán theo MB, hay PayPal thì code vào đây</p>
    </div>

    <div class="row">
        <div class="col-6"></div>
        <div class="col-6">
            <div class="d-flex justify-content-between mt-4">
                <div>
                    <span>Nạp tiền</span>
                </div>
                <div>
                    <span>0₫</span>
                </div>
            </div>
            <div class="d-flex justify-content-between mt-2">
                <div>
                    <span class="fs-5">Tổng thanh toán</span>
                </div>
                <div>
                    <span>0₫</span>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    $(document).ready(function () {
        var selectedColor = null;

        $(".color-button").on("click", function () {
            $(".color-button").removeClass("active");
            $(this).addClass("active");

            selectedColor = $(this).data("color");
        });
    });
</script>
</body>
</html>
