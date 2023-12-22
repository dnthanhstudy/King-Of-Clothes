<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 12/21/2023
  Time: 1:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông tin tích điểm</title>
</head>
<body>
<div style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px; padding: 20px">
    <div class="card">
        <div class="p-2">
            <ul class="nav">
                <li class="nav-item ms-5">
                    <button id="lichSuButton" class="btn btn-default">
                        <i class="bi bi-receipt fs-2"></i>
                        <h5 class="text-primary">Lịch sử</h5>
                    </button>
                </li>
                <li class="nav-item p-4 ms-auto">
                        <span class="badge bg-primary text-wrap fs-3"> <i class="bi bi-piggy-bank-fill me-2"></i> 30</span>
                </li>
            </ul>
        </div>
    </div>

    <div class="mt-4" id="lichSuContainer" style="display: none;">
        <div class="row">
            <span class="fs-4" style="border-bottom: 1px solid #dedede; padding: 20px">Giao dịch gần đây:</span>
        </div>
        <div id="cardLichSu">

        </div>
    </div>
</div>

</body>
</html>
