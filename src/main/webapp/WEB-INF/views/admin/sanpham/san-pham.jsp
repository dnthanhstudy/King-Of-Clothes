<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/11/2023
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sản phẩm</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
           Sản phẩm
        </h4>

        <div class="card card-body hstack gap-3 mt-3">
            <div class="p-2">
                <a href="/admin/sanpham/createSP" class="btn btn-primary">Thêm mới</a>
            </div>
            <div class="p-2 ms-auto">
                <select class="form-control">
                    <option value="10">10</option>
                    <option value="20">20</option>
                    <option value="30">30</option>
                </select>
            </div>
        </div>

        <div class="group123 ">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon" aria-hidden="true"
                     viewBox="0 0 512 512">
                    <style>svg {
                        fill: #ebeef4
                    }</style>
                    <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                </svg>
                <input placeholder="Tìm sản phẩm" type="search" class="inputghichu w-100">
        </div>

        <div class="card mt-4" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
        padding: 20px; background-color: #fff">
            <div class="row col-12">
                <h4>Danh sách sản phẩm</h4>
            </div>
            <hr>
            <div class="d-flex justify-content-between">
                <hr>
            <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Hình ảnh</th>
                <th scope="col">Mã SP</th>
                <th scope="col">Tên SP</th>
                <th scope="col">Giá</th>
                <th scope="col">Giảm giá</th>
                <th scope="col">Danh muc</th>
                <th scope="col">Thương hiệu</th>
                <th scope="col"></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>STT</td>
                <td>Hình ảnh</td>
                <td>Mã SP</td>
                <td>Tên SP</td>
                <td>Giá</td>
                <td>Giảm giá</td>
                <td>Danh muc</td>
                <td>Thương hiệu</td>
                <td>
                    <a href="/admin/sanpham/updateSP" class="btn btn-warning">Sửa</a>
                    <button class="btn btn-danger">Xóa</button>
                </td>
            </tr>

            </tbody>
        </table>
            </div>
        </div>

    </div>
</div>

</body>
</html>
