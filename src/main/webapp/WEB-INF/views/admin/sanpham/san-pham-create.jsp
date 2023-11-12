<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/11/2023
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm mới sản phẩm</title>
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
            Thêm sản phẩm mới
        </h4>

        <div class="container mt-3">
            <form action="" method="POST" class="form-submit-product">
                <div class="row">
                    <label class="form-label">Chọn hình ảnh</label>
                    <input type="file" id="uploadImage"/>
                    <div class="list-images mt-4">

                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col-4">
                        <label for="slug" class="form-label">Slug</label>
                        <input name="slug" type="text" class="form-control" id="slug" readonly/>
                    </div>

                    <div class="col-4">
                        <label for="ten" class="form-label">Tên</label>
                        <input name="ten" type="text" class="form-control" id="ten"/>
                    </div>

                    <div class="col-4">
                        <label for="gia" class="form-label">Giá</label>
                        <input name="gia" type="text" class="form-control" id="gia"/>
                    </div>

                    <div class="col-6 mt-4 mb-4">
                        <label for="chitietsanpham" class="form-label"
                        >Chi tiết sản phẩm</label
                        >
                        <textarea
                                class="form-control"
                                id="chitietsanpham"
                                name="chitietsanpham"
                        ></textarea>
                    </div>

                    <div class="col-6 mt-4 mb-4">
                        <label for="motasanpham" class="form-label">Mô tả sản phẩm</label>
                        <textarea
                                class="form-control"
                                id="motasanpham"
                                name="motasanpham"
                        ></textarea>
                    </div>

                    <div class="col-6">
                        <select class="form-select" name="danhmucslug">
                            <option selected>Vui lòng chọn danh mục</option>
                            <option value="thoi-trang-tre-em">Thời trang trẻ em</option>
                            <option value="thoi-trang-nam">Thời trang nam</option>
                        </select>
                    </div>

                    <div class="col-6">
                        <select class="form-select" name="thuonghieuslug">
                            <option selected>Vui lòng chọn thương hiệu</option>
                            <option value="adidas">Adidas</option>
                            <option value="nike">Nike</option>
                        </select>
                    </div>
                </div>

                <div class="row mt-4 mb-4">
                    <div class="col-6">
                        <div class="card">
                            <div
                                    class="d-flex justify-content-between align-items-center card-header"
                            >
                                <p>Thuộc tính</p>
                                <div class="col-4">
                                    <div class="input-group">
                                        <input
                                                type="text"
                                                class="form-control input-name-atrribute"
                                                placeholder="Nhập thuộc tính"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <p class="card-text card-text-none-attribute">
                                    Chưa có thuộc tính
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="card">
                            <div
                                    class="d-flex justify-content-between align-items-center card-header"
                            >
                                <p>Biến thể</p>
                            </div>
                            <div class="card-body">
                                <div class="row mb-4 d-flex align-items-center">
                                    <div class="col-8">
                                        <div class="input-group">
                                            <input
                                                    type="text"
                                                    class="form-control"
                                                    placeholder="Thiết lập giá cho tất cả thuộc tính"
                                            />
                                            <button
                                                    class="btn btn-primary"
                                                    type="button"
                                                    id="btn-search"
                                            >
                                                Xác nhận!
                                            </button>
                                        </div>
                                    </div>

                                    <div class="col-4">
                                        <div class="dropdown">
                                            <button
                                                    class="btn btn-info dropdown-toggle"
                                                    type="button"
                                                    data-bs-toggle="dropdown"
                                                    aria-expanded="false"
                                            >
                                                Thuộc tính
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li>
                                                    <a class="dropdown-item" href="#">Another action</a>
                                                </li>
                                                <li>
                                                    <a class="dropdown-item" href="#"
                                                    >Something else here</a
                                                    >
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-variant">
                                    <thead>
                                    <tr>
                                        <th class="text-center" scope="col">Tên biến thể</th>
                                        <th class="text-center" scope="col">Giá</th>
                                        <th class="text-center" scope="col">Chọn hình ảnh</th>
                                    </tr>
                                    </thead>
                                    <tbody class="table-variant-body"></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="sanphambanchay" value="1" name="isbestseller">
                    <label class="form-check-label" for="sanphambanchay">Sản phẩm bán cháy</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="sanphamnhieuluotxem" value="1" name="ismostviewed">
                    <label class="form-check-label" for="sanphamnhieuluotxem">Sản phẩm nhiều lượt xem</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="sanphammoi" value="1" name="isnew">
                    <label class="form-check-label" for="sanphammoi">Sản phẩm mới</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="sanphamnhieuphobien" value="1" name="ispopular">
                    <label class="form-check-label" for="sanphamnhieuphobien">Sản phẩm phổ biến</label>
                </div>

                <div class="row">
                    <button type="button" class="btn btn-success mt-4 mb-4 btn-add-product">Submit</button>
                </div>

            </form>
        </div>

    </div>
</div>

<script src="<c:url value='/template/admin/ckeditor/ckeditor.js'/>"></script>

<script>
    let ckeChiTietSanPham = CKEDITOR.replace("chitietsanpham");
    let ckeMoTaSanPham = CKEDITOR.replace("motasanpham");
</script>
</body>
</html>
