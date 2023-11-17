<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/17/2023
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ví Điện Tử</title>
</head>
<body>
    <div style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; padding: 20px">
        <div class="d-flex justify-content-between">
            <div>
                <span class="fs-5">Số dư ví : </span><span class="fs-2">100000₫</span>
            </div>
            <div>
                <span class="badge bg-primary text-wrap fs-3"> <i class="bi bi-coin"></i> 30</span>
            </div>
        </div>
        <div class="card mt-4">
            <div class="p-4">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="btn btn-default" href="/vi-dien-tu/nap-tien">
                            <i class="bi bi-cash-coin fs-2"></i>
                            <h6>Nạp tiền</h6>
                        </a>
                    </li>
                    <li class="nav-item ms-5">
                        <button id="lichSuButton" class="btn btn-default">
                            <i class="bi bi-receipt fs-2"></i>
                            <h6>Lịch sử</h6>
                        </button>
                    </li>
                </ul>
            </div>
        </div>

        <div class="mt-4" id="lichSuContainer" style="display: none;">
            <div class="row">
                <span class="fs-4" style="border-bottom: 1px solid #dedede; padding: 20px">Giao dịch gần đây:</span>
            </div>
            <div class="d-flex justify-content-between p-3" style="border-bottom: 1px solid #dedede;">
                <div>
                    <div class="row">
                        <div class="col-3 mt-2">
                            <i class="bi bi-wallet2 fs-4"></i>
                        </div>
                        <div class="col">
                            <span class="fs-5">Thanh toán</span>
                            <p class="fs-6">02 Tháng 8 2023</p>
                        </div>
                    </div>
                </div>
                <div>
                    <span class="fs-4">-30000₫</span>
                    <p><a href="#" class="text-decoration-none">Chi tiết</a></p>
                </div>
            </div>
            <div class="d-flex justify-content-between p-3" style="border-bottom: 1px solid #dedede;">
                <div>
                    <div class="row">
                        <div class="col-3 mt-2">
                            <i class="bi bi-wallet2 fs-4"></i>
                        </div>
                        <div class="col">
                            <span class="fs-5">Thanh toán</span>
                            <p class="fs-6">02 Tháng 8 2023</p>
                        </div>
                    </div>
                </div>
                <div>
                    <span class="fs-4">-30000₫</span>
                    <p><a href="#" class="text-decoration-none">Chi tiết</a></p>
                </div>
            </div>
            <div class="d-flex justify-content-between p-3" style="border-bottom: 1px solid #dedede;">
                <div>
                    <div class="row">
                        <div class="col-3 mt-2">
                            <i class="bi bi-wallet2 fs-4"></i>
                        </div>
                        <div class="col">
                            <span class="fs-5">Thanh toán</span>
                            <p class="fs-6">02 Tháng 8 2023</p>
                        </div>
                    </div>
                </div>
                <div>
                    <span class="fs-4">-30000₫</span>
                    <p><a href="#" class="text-decoration-none">Chi tiết</a></p>
                </div>
            </div>

        </div>
    </div>


    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var lichSuButton = document.getElementById("lichSuButton");
            var lichSuContainer = document.getElementById("lichSuContainer");

            lichSuButton.addEventListener("click", function () {
                var isHidden = lichSuContainer.style.display === "none";

                if (isHidden) {
                    lichSuContainer.style.display = "block";
                } else {
                    lichSuContainer.style.display = "none";
                }
            });
        });
    </script>
</body>
</html>
