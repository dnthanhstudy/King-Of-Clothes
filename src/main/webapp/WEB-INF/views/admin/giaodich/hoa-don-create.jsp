<%--
  Created by IntelliJ IDEA.
  User: MMC
  Date: 10/27/2023
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Hóa Đơn</title>
</head>
<body>
<%--xem chi tiết--%>
<div class="offcanvas offcanvas-end w-50" style="border-bottom-left-radius: 30px;border-top-left-radius: 30px " data-bs-backdrop="static" tabindex="-1" id="staticBackdrop" aria-labelledby="staticBackdropLabel">
    <div class="offcanvas-header mt-3 ms-3">
        <h4 class="offcanvas-title font-weight-bold" id="staticBackdropLabel">Áo polo nam aelimited</h4>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
        <div class="row">
            <nav class="mt-3">
                <div class="nav nav-tabs" id="nav-tab" role="tablist" style="font-size: 20px">
                    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Thông tin chung</button>
                    <button class="nav-link ms-3" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Mô tả sản phẩm</button>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
                    <div class="row mt-3">
                        <div class="col-md-4">
                            <img src="/template/web/img/anh2.png" class="img-fluid" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="row p-2">
                                <div class="col-3">
                                    <h5>Giá bán:</h5>
                                </div>
                                <div class="col-9">
                                    <h4 class="text-cyan">250,000</h4>
                                </div>
                            </div>
                            <div class="row mt-3" style="border-bottom: 1px solid #dedede; padding: 10px">
                                <div class="col-3">
                                    <h5>Số lượng:</h5>
                                </div>
                                <div class="col-3">
                                    <div class="input-group">
                                        <button class="btn text-light " style="background-color: #EB8153"><i
                                                class="fa fa-minus"></i></button>
                                        <input type="text" class="form-control" style="text-align: center" value="1">
                                        <button class="btn text-light " style="background-color: #EB8153"><i
                                                class="fa fa-plus"></i></button>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <h5><span>Tồn: 101</span> <span class="ms-4">| Có thể bán: 101</span></h5>
                                </div>
                            </div>
                            <div class="row mt-3" style="border-bottom: 1px solid #dedede; padding: 10px">
                                <h5>Thương hiệu: </h5>
                            </div>
                            <div class="row mt-3" style="border-bottom: 1px solid #dedede; padding: 10px">
                                <h5>Vị trí: </h5>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0"></div>
            </div>
        </div>
    </div>
    <div class="offcanvas-footer">
            <div class="row p-5">
                <div class="text-right">
                    <button class="btn btn-light me-3 " data-bs-dismiss="offcanvas" aria-label="Close" style="border: 1px solid #dedede; font-size: 22px; border-radius: 10px ">Bỏ qua</button>
                    <button class="btn text-light " data-bs-dismiss="offcanvas" aria-label="Close" style="background-color: #EB8153;font-size: 22px; border-radius: 10px">Xong</button>
                </div>
            </div>
    </div>
</div>
<section>
    <div class="content-body" style="background-color: #f2eded">
        <div class="container-fluid">
            <div class="row">
                <div class="col-8">
                    <div class="group123">
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon ms-2" aria-hidden="true"
                             viewBox="0 0 512 512">
                            <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                            <style>svg {
                                fill: #ebeef4
                            }</style>
                            <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                        </svg>
                        <input placeholder="Tìm hàng hóa" type="search" class="inputghichu w-25">
                    </div>
                </div>
                <div class="col-4">
                    <button class="btn btn-success float-right" data-bs-toggle="modal" data-bs-target="#exampleModal"> +
                        Chọn sản phẩm
                    </button>
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Chọn sản phẩm</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body" style="height: 700px; overflow-y: scroll;">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="card mb-3" style="max-width: 540px;">
                                                <div class="row g-0">
                                                    <div class="col-md-4">
                                                        <img src="/template/web/img/anh2.png"
                                                             class="img-fluid rounded-start" alt="...">
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="card-body">
                                                            <h6 class="card-title">Áo polo nam aelimited</h6>
                                                            <p class="card-text" style="color: #EB8153">500.000</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-lg-8">
                    <div style="max-height: 500px; overflow-y: scroll;">
                        <div class="card card-body mb-2" style="border-radius: 10px;">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">6</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP06</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="2">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">250000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">500000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="">Xóa</a>
                                                <a class="dropdown-item" href="" data-bs-toggle="offcanvas" data-bs-target="#staticBackdrop" aria-controls="staticBackdrop">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body mb-2" style="border-radius: 10px;">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">5</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP05</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="2">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">250000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">500000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body mb-2" style="border-radius: 10px;">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">4</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP04</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="2">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">250000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">500000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body mb-2" style="border-radius: 10px">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">3</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP03</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nữ aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="1">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">150000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body mb-2" style="border-radius: 10px">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">2</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP02</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo sơ mi nam aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="3">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">100000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">300000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card card-body mb-2" style="border-radius: 10px">
                            <div class="row">
                                <div class="col-xl-1 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>#</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">1</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Mã sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">SP01</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tên sản phẩm</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Áo polo nam aelimited</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số lượng</span>
                                            <div class="input-group w-75">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-minus"></i></button>
                                                <input type="text" class="form-control" style="text-align: center" value="1">
                                                <button class="btn text-light " style="background-color: #EB8153"><i
                                                        class="fa fa-plus"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">

                                        <div class="ml-2">
                                            <span>Đơn giá</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">500000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">500000</h5>
                                        </div>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                          stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                          stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-body mt-3" style="border-radius: 10px">
                        <div class="row">
                            <div class="col-8">
                                <div class="group123">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" aria-hidden="true"
                                         viewBox="0 0 512 512">
                                        <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                        <style>svg {
                                            fill: #e3e9f2
                                        }</style>
                                        <path d="M362.7 19.3L314.3 67.7 444.3 197.7l48.4-48.4c25-25 25-65.5 0-90.5L453.3 19.3c-25-25-65.5-25-90.5 0zm-71 71L58.6 323.5c-10.4 10.4-18 23.3-22.2 37.4L1 481.2C-1.5 489.7 .8 498.8 7 505s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L421.7 220.3 291.7 90.3z"/>
                                    </svg>
                                    <input placeholder="Ghi chú đơn hàng" type="search" class="inputghichu w-100">
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="d-flex justify-content-between">
                                    <h4><strong>Tổng tiền hàng:</strong> <span>11</span></h4>
                                    <h4 class="text-right">24500000</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card card-body" style="border-radius: 10px; height: 593px">
                        <div class="row">
                            <div class="col-lg-6">
                                <h5><strong>Nhân viên:</strong> Khánh Linh</h5>
                            </div>
                            <div class="col-lg-6 text-right">
                                <h5 id="thoiGian"></h5>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-9">
                                <div class="group123 mt-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon ms-2" aria-hidden="true"
                                         viewBox="0 0 512 512">
                                        <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                        <style>svg {
                                            fill: #ebeef4
                                        }</style>
                                        <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
                                    </svg>
                                    <input placeholder="Tìm khách hàng" type="search" class="inputghichu w-100">
                                </div>
                            </div>
                            <div class="col-3">
                                <button type="button" class="btn w-100 mt-2" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal1"
                                        style="background-color: #F3F3F4; border: 1px solid #F3F3F4">
                                    <i class="bi bi-plus-lg"></i>
                                </button>
                                <div class="modal fade" id="exampleModal1" tabindex="-1"
                                     aria-labelledby="exampleModalLabel1" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel1">Thêm khách hàng</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <label>Mã khách hàng:</label>
                                                        <input type="text" class="form-control" disabled>
                                                    </div>
                                                    <div class="col">
                                                        <label>Họ và tên:</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col">
                                                        <label>Số điện thoại:</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col">
                                                        <label>Địa chỉ email:</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <div class="col">
                                                        <label>Số CCCD:</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                    <div class="col">
                                                        <label>Địa chỉ:</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="row mt-3">
                                                    <div class="col">
                                                        <label class="form-label">Ngày sinh:</label>
                                                        <input type="date" class="form-control">
                                                    </div>
                                                    <div class="col">
                                                        <label>Giới tính:</label>
                                                        <select class="form-select">
                                                            <option value="true" selected>Nam</option>
                                                            <option value="false">Nữ</option>
                                                        </select>
                                                    </div>
                                                    <div class="col">
                                                        <label>Trạng thái:</label>
                                                        <select class="form-select">
                                                            <option value="1" selected>Hoạt động</option>
                                                            <option value="0">Ngừng hoạt động</option>
                                                        </select>
                                                    </div>
                                                    <div class="col d-none">
                                                        <label class="form-label">Ngày đăng ký:</label>
                                                        <input type="text" class="form-control" disabled>
                                                    </div>
                                                </div>
                                                <div class="row mt-3">
                                                    <div class="col">
                                                        <div class="form-floating">
                                                            <textarea class="form-control"
                                                                      placeholder="Leave a comment here"></textarea>
                                                            <label>Mô tả</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn" style="background-color: #A6edab; color: #00852d">
                                                    Add
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-6 ">
                                <h5>Tổng tiền hàng:</h5>
                            </div>
                            <div class="col-6 text-right">
                                <h5>2450000</h5>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-6">
                                <h5>Giảm giá:</h5>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-4 text-right">
                                <div class="input-wrapper1">
                                    <input class="input-box1" type="text" placeholder="Nhập số tiền">
                                    <span class="underline1"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-6 ">
                                <h5><strong>Khách cần trả:</strong></h5>
                            </div>
                            <div class="col-6 text-right">
                                <h5 style="color: #EB8153"><strong>2450000</strong></h5>
                            </div>
                        </div>
                        <div class="row mt-2">
                            <div class="col-6 ">
                                <h5><strong>Khách thanh toán:</strong></h5>
                                <select class="form-select" aria-label="Default select example">
                                    <option value="1">Tiền mặt</option>
                                    <option value="2">Chuyển khoản</option>
                                </select>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-4 text-right">
                                <div class="input-wrapper1">
                                    <input class="input-box1" type="text" placeholder="Nhập số tiền">
                                    <span class="underline1"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-6 ">
                                <h5>Tiền thừa trả khách:</h5>
                            </div>
                            <div class="col-6 text-right">
                                <h5>10000</h5>
                            </div>
                        </div>
                        <div class="row mt-auto">
                            <div class="col-12">
                                <button class="btn w-100 text-light" style="background-color: #EB8153;">Thanh toán
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

</body>
</html>
