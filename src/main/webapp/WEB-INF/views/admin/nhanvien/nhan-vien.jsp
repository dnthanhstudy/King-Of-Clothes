<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 9/26/2023
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="content-body">
    <div class="container-fluid">

        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
            Danh sách thông tin nhân viên
        </h4>
        <div class="row">
            <div class="col-xl-12">
                <div class="card ">
                    <div class=" card-body d-flex mb-3 ">
                        <div class="p-2">
                            <a href="/admin/nhan-vien/create" type="button" class="btn"
                               style="background-color: #9df99d;color: #003c00">
                                Add
                            </a>
                        </div>
                        <div class="p-2">
                            <button class="btn" style="background-color: #ff4545;color: white" data-bs-toggle="modal"
                                    data-bs-target="#kkkk">
                                Delete All
                            </button>
                            <div class="modal" id="kkkk" tabindex="-1" aria-labelledby="remove1" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title  fs-5" id="remove1">Delete All Personnel</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <h5 class="text-secondary">Are You Sure You Want To Delete This Records</h5>
                                            <p class="text-warning"><small>This Action Cannot Be Undone</small></p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-bs-dismiss="modal">
                                                Cancel
                                            </button>
                                            <button type="button" class="btn btn-danger">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="p-2">
                            <button class="btn" style="background-color: orange;color: white">
                                Import
                            </button>
                        </div>

                        <div class="p-2">
                            <div>
                                <button class="btn" data-bs-toggle="modal" data-bs-target="#addcv"
                                        style="background-color: #EFCACA;color: #BF0000">
                                    Export
                                </button>

                                <div class="modal" id="addcv" tabindex="-1" aria-labelledby="addcv" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h1 class="modal-title fs-5" id="addcv">Export danh sách nhân viên</h1>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <label>Nhập số nhân viên muốn export:</label>
                                                <input type="text" class="form-control">
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn" style="background-color: #EFCACA;color: #BF0000">
                                                    Export
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--search--%>
                        <div class="p-2 ms-auto">
                            <div class="InputContainer">
                                <input type="text" id="searchAll"  name="text" class="input"  placeholder="Search">

                                <div class="border"></div>

                                <button id="searchButton" class="micButton">
                                    <svg viewBox="0 0 512 512" class="searchIcon"><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path></svg>
                                </button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="row" id="cardNhanVien">

        </div>



        <nav>
            <ul class="pagination pagination-gutter pagination-primary no-bg d-flex justify-content-center">
                <li class="page-item page-indicator">
                    <a class="page-link" href="javascript:void(0)">
                        <i class="la la-angle-left"></i></a>
                </li>
                <li class="page-item "><a class="page-link" href="javascript:void(0)">1</a>
                </li>
                <li class="page-item active"><a class="page-link" href="javascript:void(0)">2</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                <li class="page-item page-indicator">
                    <a class="page-link" href="javascript:void(0)">
                        <i class="la la-angle-right"></i></a>
                </li>
            </ul>
        </nav>
    </div>
</div>
