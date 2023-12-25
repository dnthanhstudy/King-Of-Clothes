<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Giỏ hàng</title>
</head>
<body>
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 180px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Shopping Cart</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Shopping Cart</p>
        </div>
    </div>
</div>
<div class="container-fluid pt-5" id="cart-checked">
    <div class="px-xl-5">
        <div class="khung mb-3">
            <div class="row ">
                <div class="col-5">
                    <div class="form-check mb-3">
                        <input class="form-check-input checked-product checked-all" type="checkbox">
                        <label class="form-check-label">
                            Sản phẩm
                        </label>
                    </div>
                </div>
                <div class="col-2">
                    <span>Đơn giá</span>
                </div>
                <div class="col-2">
                    <span>Số lượng</span>
                </div>
                <div class="col-2">
                    <span>Tổng tiền</span>
                </div>
                <div class="col-1">
                    <span>Thao tác</span>
                </div>
            </div>
        </div>

        <div class="khung mb-5">
            <div id="cart">
                <div style="border-bottom: 1px solid #dedede">
                    <div class="row mt-2 d-flex justify-content-center align-items-center">
                        <div class="col-5">
                            <div class="form-check align-items-center justify-content-between mb-3">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label">
                                    <div class="mb-3" style="max-width: 540px;">
                                        <div class="row g-0">
                                            <div class="col-lg-3">
                                                <a href="">
                                                    <img src="/repository/0PQldf.jpg"
                                                         class="img-fluid rounded-start" alt="...">
                                                </a>
                                            </div>
                                            <div class="col-lg-9">
                                                <div class="card-body">
                                                    <a style="color: black; text-decoration: none;" href=""><h5
                                                            class="card-title line-clamp-2">Áo polo</h5></a>
                                                    <div class="btn-group">
                                                    <span class="dropdown-toggle" data-bs-toggle="dropdown"
                                                          data-bs-auto-close="false" aria-expanded="false">
                                                        Phân loại hàng
                                                    </span>
                                                        <ul class="dropdown-menu p-3">
                                                            <li>
                                                                <div class="color-selector">
                                                                    <label>Color:</label>
                                                                    <div class="color-buttons">
                                                                        <button class="color-button" data-color="black">
                                                                            Black
                                                                        </button>
                                                                        <button class="color-button" data-color="red">
                                                                            Red
                                                                        </button>
                                                                        <button class="color-button" data-color="blue">
                                                                            BLue
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="color-selector">
                                                                    <label>Size:</label>
                                                                    <div class="color-buttons">
                                                                        <button class="size-button" data-color="s">Size
                                                                            S
                                                                        </button>
                                                                        <button class="size-button" data-color="m">Size
                                                                            M
                                                                        </button>
                                                                        <button class="size-button" data-color="l">Size
                                                                            L
                                                                        </button>
                                                                        <button class="size-button" data-color="xl">Size
                                                                            XL
                                                                        </button>
                                                                        <button class="size-button" data-color="xxl">
                                                                            Size XXL
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="text-right ">
                                                                <button type="button" class="btn btn-light">Cancel
                                                                </button>
                                                                <button type="button" class="btn text-light"
                                                                        style="background-color: #C3817B">Submit
                                                                </button>
                                                            </li>
                                                        </ul>

                                                    </div>
                                                    <p id="">Trắng, L</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="col-2">
                            300000
                        </div>
                        <div class="col-2">
                        <span>
                            <div class="input-group " style="width: 100px;">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-minus">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                        <input type="text"
                                               class="form-control form-control-sm bg-secondary text-center slthis"
                                               value="1">
                                        <div class="input-group-btn">
                                            <button class="btn btn-sm btn-primary btn-plus">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                    </div>
                        </span>
                        </div>
                        <div class="col-2">
                            <b>500000</b>
                        </div>
                        <div class="col-1">
                            <a style="cursor: pointer">Xóa</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung mb-5">
            <span class="fs-4">Danh Sách Sản Phẩm Không Hoạt Động</span>
            <div id="cart-disable">
                <div class="special-card" style="border-bottom: 1px solid #dedede">
                    <div class="row mt-2 d-flex justify-content-center align-items-center">
                        <div class="col-5">
                            <div class="form-check align-items-center justify-content-between mb-3 datacart">
                                <input class="form-check-input" type="checkbox">
                                <label class="form-check-label">
                                    <div class="mb-3" style="max-width: 540px;">
                                        <div class="row g-0">
                                            <div class="col-lg-3">
                                                <a href="">
                                                    <img src="/repository/0PQldf.jpg"
                                                         class="img-fluid rounded-start" alt="...">
                                                </a>
                                            </div>
                                            <div class="col-lg-9">
                                                <div class="card-body">
                                                    <a style="color: black; text-decoration: none;" href=""><h5
                                                            class="card-title line-clamp-2">Áo polo</h5></a>
                                                    <div class="btn-group">
                                                        <span class="dropdown-toggle" data-bs-toggle="dropdown"
                                                              data-bs-auto-close="false" aria-expanded="false">
                                                            Phân loại hàng
                                                        </span>
                                                    </div>
                                                    <p>Trắng, L</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </label>
                            </div>
                        </div>
                        <div class="col-2">
                            300000
                        </div>
                        <div class="col-2">
                        <span>
                            <div class="input-group " style="width: 100px;">
                                1
                            </div>
                        </span>
                        </div>
                        <div class="col-2">
                            <b>500000</b>
                        </div>
                        <div class="col-1" style="background: #fff;">
                            <a class="text-dark" style="cursor: pointer; opacity: 1;">Xóa</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="khung mb-3">
            <div class="row mt-4">
                <div class="col-2 mt-2">
                    <div class="form-check mb-3">
                        <input class="form-check-input checked-product checked-all" type="checkbox">
                        <label class="form-check-label">
                            Sản phẩm
                        </label>
                    </div>
                </div>
                <div class="col-1 mt-2">
                    <a>Xóa</a>
                </div>
                <div class="col-3 mt-2">
                </div>
                <div class="col-6">
                    <div class="row">
                        <div class="col-6">
                            Tổng thanh toán (<span class="total-checked">0</span> sản phẩm):
                            <div class="btn-group">
                                <span class="dropdown-toggle text-danger total-buy" style="font-size: 25px"
                                      data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                                    0
                                </span>
                                <ul class="dropdown-menu p-3" style="width: 500px">
                                    <li>
                                        <div class="fs-5" style="border-bottom: 1px solid #dedede; padding: 10px">
                                            <span>Chi tiết khuyến mãi:</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between mt-2"
                                             style="border-bottom: 1px solid #dedede; padding: 10px">
                                            <span>Tổng tiền hàng:</span>
                                            <span class="total-cart">0</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between mt-2"
                                             style="border-bottom: 1px solid #dedede; padding: 10px">
                                            <span>Số tiền giảm:</span>
                                            <span class="total-discount">0</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="d-flex justify-content-between mt-2"
                                             style="border-bottom: 1px solid #dedede; padding: 10px">
                                            <span>Tổng số tiền:</span>
                                            <span class="total-buy">0</span>
                                        </div>
                                    </li>
                                </ul>

                            </div>
                        </div>
                        <div class="col-6 text-right">
                            <button id="buy-product" class="btn text-light w-75" style="background-color: #C3817B">
                                Mua hàng
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value='/assets/api/web/cart.js'/>"></script>
</body>
</html>
