<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Danh sách sản phẩm</title>
</head>
<body>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Sản phẩm</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Sản phẩm</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Shop Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-12" id="filter">
            <!-- Price Start -->
            <div class="border-bottom mb-4 pb-4">
                <h5 id="gia" class="font-weight-semi-bold mb-4">Lọc theo giá</h5>
                <form>
                    <div class="mb-3">
                        <button value="0,100000" name="gia" class="btn btn-primary">Dưới 100.000đ</button>
                    </div>
                    <div class=" mb-3">
                        <button value="100000,200000" name="gia" class="btn btn-primary">100.000đ - 200.000đ</button>
                    </div>
                    <div class=" mb-3">
                        <button value="200000,500000" name="gia" class="btn btn-primary">200.000đ - 500.000đ</button>
                    </div>
                    <div class=" mb-3">
                        <button value="500000,1000000000" name="gia" class="btn btn-primary">Trên 500.000đ</button>
                    </div>
                </form>
            </div>

            <c:forEach items="${filterProduct}" var="filter">
                <div class="border-bottom mb-4 pb-4">
                    <h5 id="${filter.ma}" class="font-weight-semi-bold mb-4">Lọc theo ${filter.ten}</h5>
                    <form>
                        <c:forEach items="${filter.giaTri}" var="giaTri" varStatus="loop">
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3">
                                <input value="${giaTri}" type="checkbox" class="custom-control-input" id="${filter.ma}-${loop.count}">
                                <label for="${filter.ma}-${loop.count}" class="custom-control-label">${giaTri}</label>
                            </div>
                        </c:forEach>
                    </form>
                </div>
            </c:forEach>

            <script>
                $('#filter input[type="checkbox"]').on('change', function(){ // on change of state
                    if(this.checked)
                    {
                        console.log($(this).val());
                    }
                })
            </script>
        </div>
        <!-- Shop Sidebar End -->

        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <form action="<c:url value='/shop'/>" method="GET" id="form-submit-product">
                    <div class="list-product row">
                        <c:forEach var="item" items="${mapProduct.data}">
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100"
                                             src="/assets/images/sanpham/${item.anh[0].hinhAnh}" alt="">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="text-truncate mb-3">${item.ten}</h6>
                                        <div class="d-flex justify-content-center">
                                            <h6>${item.gia}</h6>
                                            <h6 class="text-muted ml-2">
                                                <del>$123.00</del>
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between bg-light border">
                                        <a href="/san-pham/${item.slug}" class="btn btn-sm text-dark p-0"><i
                                                class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                        <a href="" class="btn btn-sm text-dark p-0"><i
                                                class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="col-12 pb-1">
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page-product" name="page"/>
                    </div>
                </form>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->
<script src="<c:url value='/template/web/paging/jquery.twbsPagination.js'/>"></script>
<script>
    let currentPage = ${mapProduct.meta.pageCurrent};
    let totalPages = ${mapProduct.meta.totalPage};

    $('#pagination').twbsPagination({
        totalPages: totalPages,
        visiblePages: 5,
        startPage: currentPage,
        onPageClick: function (event, page) {
            if (currentPage != page) {
                $('#page-product').val(page);
                $('#form-submit-product').submit();
            }
        }
    });
</script>
</body>
</html>