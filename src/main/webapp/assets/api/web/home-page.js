let page = 1;
let limit = 8;
loadProduct();

$('#load-more-product').on('click', (e) => {
    page = page + 1;
    loadProduct();
})

function loadProduct() {
    $.ajax({
        url: "/api/san-pham/pagination?page=" + page + "&limit=" + limit,
        method: "GET",
        dataType: "json",
        success: (response) => {
            if (page == response.meta.totalPage) {
                $('#load-more-product').attr('disabled', true);
            }
            let html = '';
            $.each(response.data, (index, item) => {
                html += `<div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                            <a href="/san-pham/${item.slug}" class="text-decoration-none">
                                <div class="card product-item border-0 mb-4 hovers">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100" src="/assets/images/sanpham/${item.anh[0].hinhAnh}" style="height:350px"  alt="">
                                    </div>
                                    <div class="card-body border border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="text-truncate mb-3">${item.ten}</h6>
                                        <div class="d-flex justify-content-center">
                                             <h6 class="product-price-origin">${item.gia}</h6>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>`;
            })
            $('#product-home-page').append(html);

            $('.product-price-origin').each(function(index, item) {
                let res = $(item).html();
                res = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(res);
                $(item).html(res);
            });
        },
        error: (error) => {
            console.log(error);
        }
    });
}