<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<%@ page import="com.laptrinhjavaweb.security.utils.SecurityUtils" %>

<head>
    <title>${product.ten}</title>
</head>

<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 180px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Product Detail</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Product Detail</p>
        </div>
    </div>
</div>

<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb bg-light p-0">
                <li class="breadcrumb-item"><a href="/trang-chu">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="/danh-muc/${product.danhMuc.slug}">${product.danhMuc.ten}</a></li>
                <li class="breadcrumb-item active" aria-current="page">${product.ten}</li>
            </ol>
        </nav>
    </div>
    <div class="row px-xl-5">
        <div class="col-lg-5 col-md-5 col-sm-12">
            <div class="row">
                <img class="product-image-primary" src="/assets/images/sanpham/${product.anh[0].hinhAnh}" alt="Image">
            </div>
            <div class="row mt-3">
                <div class="col">
                    <div class="owl-carousel related-carousel product-list-images">
                        <c:forEach var="item" items="${product.anh}">
                            <div class="card product-item border-0">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img alt="Ảnh sản phẩm" class="img-fluid w-100"
                                         src="/assets/images/sanpham/${item.hinhAnh}"/>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-7 col-md-7 col-sm-12" id="product">
            <div class="khung">
                <h3 class="font-weight-semi-bold product-name">${product.ten}</h3>

                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(50 Reviews)</small>
                </div>
                <c:if test="${not empty product.khuyenMaiHienThiResponse}">
                    <p>Kết thúc sau:
                        <input id="product-finish" type="hidden" value="${product.khuyenMaiHienThiResponse.ngayKetThuc}">
                        <span class="finish"></span>
                    </p>
                </c:if>
                <h3 class="font-weight-semi-bold mb-4 product-price product-price-custom-vnd product-buy">
                    ${product.giaBan}
                </h3>
                <div class="mb-3">
                    <c:if test="${not empty product.khuyenMaiHienThiResponse}">
                        <del class="product-price-custom-vnd product-origin">${product.gia}</del>
                        <c:if test="${product.khuyenMaiHienThiResponse.loai eq '1'}">
                            <div class="badge rounded-pill text-bg-danger">
                                <span class="product-price-custom-percent coupon-value ">${product.khuyenMaiHienThiResponse.giaTri}</span>
                                <span class="coupon-type">% Giảm</span>
                            </div>
                        </c:if>

                        <c:if test="${product.khuyenMaiHienThiResponse.loai eq '0'}">
                            <div class="badge rounded-pill text-bg-danger">
                                <span class="product-price-custom-vnd coupon-value">${product.khuyenMaiHienThiResponse.giaTri}</span>
                                <span class="coupon-type"> Giảm</span>
                            </div>
                        </c:if>
                    </c:if>
                </div>
                <c:forEach var="item" items="${product.thuocTinh}">
                    <div class="d-flex align-items-center mb-3">
                        <p class="text-dark font-weight-medium mb-0 mr-3">${item.ten}:</p>
                        <form class="d-flex flex-wrap" id="form-${item.ten}">
                            <c:forEach var="itemGiaTri" items="${item.giaTriThuocTinh}">
                                <div class="form-check mr-3 mb-2">
                                    <input type="radio" name="giatrithuoctinh" id="giatrithuoctinh-${itemGiaTri.giaTri}"
                                           class="form-check-input"
                                           value="${itemGiaTri.id}">
                                    <label for="giatrithuoctinh-${itemGiaTri.giaTri}"
                                           class="form-check-label">${itemGiaTri.giaTri}</label>
                                </div>
                            </c:forEach>
                        </form>
                    </div>
                </c:forEach>
                <input type="hidden" value="${f:length(product.thuocTinh)}" id="len-attribute">
                <p class="text-dark font-weight-medium mb-0 mr-3">Thương hiệu: ${product.thuongHieu.ten}</p>

                <div class="d-flex align-items-center pt-2 mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Quantity:</p>
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-minus">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="text" class="form-control bg-secondary text-center" id="quantity" value="1">
                        <div class="input-group-btn">
                            <button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <p class="text-dark mb-0 mr-3 product-quantity">${product.soLuong} sản phẩm có sẵn</p>
                </div>
                <div class="d-flex align-items-center pt-2">
                    <button class="btn btn-secondary px-3" id="addCart"><i class="fa fa-shopping-cart mr-1"></i> Add To
                        Cart
                    </button>
                    <button class="btn btn-primary px-3 ms-3" onclick="muaNgay()">Mua ngay</button>

                </div>
            </div>

            <div class="khung mt-4">
                <h5>Mô tả sản phẩm</h5>
                <span class="product-description">Áo thun polo nam thể thao LADOS - 9080 cổ bẻ, chất liệu vải thun lạnh mát mẻ, kiểu dáng DRI-FIT
                Chất liệu: Vải poli lanh, vải thoáng khí mát mẻ
                Co giãn tốt, mặc cực thoải mái, thấm hút mồ hôi tốt
                Chất vải đẹp, đứng form áo
                Đường may cực tỉ mỉ cực đẹp
                Có thể mặc đi chơi, chạy bộ, tậm gym vận động
                Kiểu dáng: Thiết kế theo form rộng vừa,đơn giản , dễ mặc ..Tôn lên được sự trẻ trung năng động cho các bạn nam, kèm vào đó là sự hoạt động thoải mái khi mặc sản phẩm.
                </span>
            </div>

        </div>
    </div>
</div>
<div class="row px-xl-5">
    <div class="col">
        <div class="nav nav-tabs justify-content-center border-secondary mb-4">
            <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-2">Information</a>
            <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</a>
        </div>
        <div class="tab-content">

            <div class="tab-pane fade show active" id="tab-pane-2">
                <h4 class="mb-3">Thông tin thêm</h4>
                <hr>
                <div class="row">
                    <div class="col-lg-6">
                        <h6>Bảng size bên shop :</h6>
                        <p>Size S: Dành cho người nặng từ 35kg - 41kg < 1m50</p>
                        <p>Size M: Dành cho người nặng từ 42kg - 53kg < 1m63</p>
                        <p>Size L: Dành cho người nặng từ 54kg - 60kg < 1m70</p>
                        <p>Size XL: Dành cho người nặng từ 61kg - 69kg < 1m75</p>
                        <p>Size XXL: Dành cho người nặng từ 70kg - 76kg < 1m80</p>
                    </div>
                    <div class="col-lg-6">
                        <h6>CAM KẾT - ĐẢM BẢO:</h6>
                        <p>- Đảm bảo vải chuẩn cotton chất lượng cao.</p>
                        <p>- Hàng có sẵn, giao hàng ngay khi nhận được đơn đặt hàng.</p>
                        <p>- Hoàn tiền 100% nếu sản phẩm lỗi, nhầm hoặc không giống với mô tả.</p>
                        <p>- Chấp nhận đổi hàng khi size không vừa (vui lòng nhắn tin riêng cho shop).</p>
                        <p>- Giao hàng toàn quốc, thanh toán khi nhận hàng.</p>
                        <p>📌 LƯU Ý: Khi quý khách có gặp bất kì vấn đề gì về sản phẩm và vận chuyển đừng vội đánh giá
                            mà hãy liên hệ Shop để đc hỗ trợ 1 cách tốt nhất nhé.</p>
                    </div>

                </div>
            </div>
            <div class="tab-pane fade" id="tab-pane-3">
                <div class="row">
                    <div class="col-md-6">
                        <h4 class="mb-4">1 review for "Colorful Stylish Shirt"</h4>
                        <div class="media mb-4">
                            <img src="<c:url value='/template/web/img/user.jpg'/>" alt="Image"
                                 class="img-fluid mr-3 mt-1" style="width: 45px;">
                            <div class="media-body">
                                <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                <div class="text-primary mb-2">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                    <i class="far fa-star"></i>
                                </div>
                                <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at.
                                    Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h4 class="mb-4">Leave a review</h4>
                        <small>Your email address will not be published. Required fields are marked *</small>
                        <div class="d-flex my-3">
                            <p class="mb-0 mr-2">Your Rating * :</p>
                            <div class="rating">
                                <input type="radio" id="star-1" name="star-radio" value="star-1">
                                <label for="star-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-2" name="star-radio" value="star-1">
                                <label for="star-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-3" name="star-radio" value="star-1">
                                <label for="star-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-4" name="star-radio" value="star-1">
                                <label for="star-4">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star-5" name="star-radio" value="star-1">
                                <label for="star-5">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path pathLength="360"
                                              d="M12,17.27L18.18,21L16.54,13.97L22,9.24L14.81,8.62L12,2L9.19,8.62L2,9.24L7.45,13.97L5.82,21L12,17.27Z"></path>
                                    </svg>
                                </label>
                            </div>
                        </div>
                        <form>
                            <div class="form-group">
                                <label for="message">Your Review *</label>
                                <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                            </div>
                            <div class="form-group mb-0">
                                <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid py-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Các sản phẩm tương tự</span></h2>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel related-carousel">
                <c:forEach items="${sameProduct}" var="item">
                    <a href="/san-pham/${item.slug}" class="text-decoration-none">
                        <div class="card product-item border-0 hovers">
                            <div class="card-header  product-img position-relative overflow-hidden bg-transparent border p-0">
                                <img class="img-fluid w-100" src="/assets/images/sanpham/${item.anh[0].hinhAnh}"
                                     style="height:350px" alt="">
                            </div>
                            <div class="card-body border border-left border-right text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">${item.ten}</h6>
                                <div class="d-flex justify-content-center">
                                    <c:if test="${empty item.khuyenMaiHienThiResponse}">
                                        <h4 class="text-danger product-price-custom-vnd ms-2">${item.giaBan}</h4>
                                    </c:if>

                                    <c:if test="${not empty item.khuyenMaiHienThiResponse}">
                                        <h6><del class="product-price-custom-vnd product-buy">${item.gia}</del></h6>
                                        <h4 class="text-danger product-price-custom-vnd ms-2">${item.giaBan}</h4>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</div>
<script src="<c:url value='/assets/js/price-product-custom.js'/>"></script>
<script src="<c:url value='/assets/api/web/detail.js'/>"></script>
<script>
    var x = setInterval(function () {
        var finish = parseInt($('#product-finish').val());
        var now = new Date().getTime();
        console.log(finish);
        console.log(now);
        var distance = finish - now;

        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        $('.finish').text(days + "d " + hours + "h "
            + minutes + "m " + seconds + "s ");

        if (distance < 0) {
            clearInterval(x);
            $('.finish').text("EXPIRED");
            // call api update trạng thái của khuyến mại sản phẩm (expired nhé)
        }
    }, 1000);

    function checkedRadio() {
        var allGroupsChecked = true;
        var checkedGroups = {}; // Để lưu trữ những nhóm đã được chọn

        $('.khung input[type="radio"]').each(function () {
            var groupName = $(this).attr('name');
            if ($(this).is(':checked')) {
                checkedGroups[groupName] = true; // Đánh dấu nhóm đã được chọn
            }
        });

        // Kiểm tra xem có bất kỳ nhóm nào chưa được chọn hay không
        $('.khung input[type="radio"]').each(function () {
            var groupName = $(this).attr('name');
            if (!checkedGroups[groupName]) {
                allGroupsChecked = false;
                return false; // Thoát khỏi vòng lặp nếu có nhóm chưa được chọn
            }
        });

        return allGroupsChecked;
    }

    $("#addCart").click(function () {

        const idkh = <%=SecurityUtils.getPrincipal().getId()%>;
        if (idkh == -1) {
            window.location.href = "/login?is_not_login";
        }
        let checkallRadio = checkedRadio();
        if (!checkallRadio) {
            showError("Bạn phải chọn đầy đủ loại")
            return;
        }
        // Người dùng đã đăng nhập, thực hiện gửi Ajax request
        let arrData = [];
        $("input[type=radio]:checked").each(function () {
            arrData.push($(this).val());
        });

        var spcosan = <c:out value="${product.soLuong}" />;
        var quantity = $("#quantity").val();
        if (quantity > spcosan) {
            showError("Số lượng của cửa hàng không đủ");
            return;
        }
        $.ajax({
            url: '/api/user/giohang/addcart?idkh=' + idkh + '&data=' + arrData.join(",") + "&quantity=" + quantity,
            method: 'GET',
            success: function (req) {
                showSuccess("Thêm vào giỏ hàng thành công")
            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    });

    async function muaNgay() {
        const idkh = <%=SecurityUtils.getPrincipal().getId()%>;
        if (idkh == -1) {
            window.location.href = "/login?is_not_login";
        }
        let checkallRadio = checkedRadio();
        if (!checkallRadio) {
            showError("Bạn phải chọn đầy đủ loại")
            return;
        }
        // Người dùng đã đăng nhập, thực hiện gửi Ajax request
        let arrData = [];
        $("input[type=radio]:checked").each(function () {
            arrData.push($(this).val());
        });

        var spcosan = <c:out value="${product.soLuong}" />;
        var quantity = $("#quantity").val();
        if (quantity > spcosan) {
            showError("Số lượng của cửa hàng không đủ");
            return;
        }
        $.ajax({
            url: '/api/user/giohang/addcart?idkh=' + idkh + '&data=' + arrData.join(",") + "&quantity=" + quantity,
            method: 'GET',
            success: function (req) {
                window.location.href = "/cart?idbienthe=" + req;
            },
            error: function (xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
</script>