<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/17/2023
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Nạp tiền</title>

</head>
<section>
    <div style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; padding: 20px">
    <div class="row">
        <span class="fs-5" style="border-bottom: 1px solid #dedede;padding: 15px">Số tiền nạp (₫) : </span>
    </div>

    <div class="row" style="border-bottom: 1px solid #dedede;padding: 15px">
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="100000" onclick="changeValue(this)">100.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="200000" onclick="changeValue(this)">200.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="300000" onclick="changeValue(this)">300.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="500000" onclick="changeValue(this)">500.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="1000000" onclick="changeValue(this)">1.000.000</button>
        </div>
        <div class="col-4 p-2">
            <button class="color-button w-100 getValue" value="2000000" onclick="changeValue(this)">2.000.000</button>
        </div>
    </div>

    <div class="row">
        <span class="fs-5 p-3">Nhập số tiền (₫) : </span>
    </div>

    <div class="input-wrapper1">
        <input class="input-box1 w-25" type="text" id="soTienNap">
        <span class="underline1"></span>
    </div>

    <div class="row">
        <div class="col-6"></div>
        <div class="col-6">
            <div class="d-flex justify-content-between mt-4">
                <div>
                    <span>Nạp tiền</span>
                </div>
                <div>
                    <span id="naptien">0</span>₫
                </div>
            </div>
            <div class="d-flex justify-content-between mt-2">
                <div>
                    <span class="fs-5">Tổng thanh toán</span>
                </div>
                <div>
                    <span id="tongtien">0</span>₫
                </div>
            </div>
        </div>
    </div>
        <div class="row text-center">
            <div class="col-9"></div>
            <div class="col-3 mt-3">
                <button type="button" class="btn btn-success" onclick="xacNhanThanhToan();">Xác nhận</button>
            </div>
        </div>


    </div>

</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        var selectedColor = null;

        $(".color-button").on("click", function () {
            $(".color-button").removeClass("active");
            $(this).addClass("active");

            selectedColor = $(this).data("color");
        });
    });
    // cập nhật value
    function formatNumber(number) {
        return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }
    function changeValue(button) {
        var value = formatNumber(parseFloat(button.value));
        $("#soTienNap").val(value);
        $("#naptien").text(value);
        $("#tongtien").text(value);
        updateAmounts(value);
    }
    // tự động chuyển dấu
    function updateFormattedValue() {
        var inputValue = $("#soTienNap").val().replace(/\./g, ''); // Remove existing periods

        // Check if the input is emty or not a valid number
        if (inputValue === "" || isNaN(inputValue)) {
            inputValue = "0";
        }

        var formattedValue = formatNumber(parseFloat(inputValue));
        $("#soTienNap").val(formattedValue);
        updateAmounts(formattedValue);
    }
    $(document).ready(function() {
        $("#soTienNap").on("input", updateFormattedValue);


    });

    function updateAmounts(value) {
        $("#naptien").text(value);
        $("#tongtien").text(value);
    }
    //xóa dấu '.'
    function removeFormatting(value) {
        return value.replace(/\./g, '');
    }

    function xacNhanThanhToan() {
        var inputValue = $("#soTienNap").val();
        var plainNumber = removeFormatting(inputValue);
        console.log(plainNumber);
    }

</script>

