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
                            <div class="card product-item border-0 mb-4">
                                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                    <img class="img-fluid w-100" src="/assets/images/sanpham/${item.anh[0].hinhAnh}" alt="">
                                </div>
                                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                    <h6 class="text-truncate mb-3">${item.ten}</h6>
                                    <div class="d-flex justify-content-center">
                                        <h6>${item.gia}</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="/san-pham/${item.slug}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                    <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                </div>
                            </div>
                        </div>`;
            })
            $('#product-home-page').append(html);
        },
        error: (error) => {
            console.log(error);
        }
    });
}