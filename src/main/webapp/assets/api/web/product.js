let pagecurrent = 1;
loadProduct();
function loadProduct(){
    $.ajax({
        url: `/api/sanphams?page=${pagecurrent}`,
        type: 'GET',
        contentType: 'application/json',
        success: function (response) {
            console.log(response);
            let html = '';
            $.each(response.data, (index, item) => {
                html += `<div class="col-lg-4 col-md-6 col-sm-12 pb-1">
                                <div class="card product-item border-0 mb-4">
                                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                                        <img class="img-fluid w-100"
                                             src="/assets/images/sanphams/2622858128.jpg"
                                             alt="Ảnh sản phẩm">
                                    </div>
                                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                                        <h6 class="text-truncate mb-3">${item.ten}</h6>
                                        <div class="d-flex justify-content-center">
                                            <h6>$123.00</h6>
                                            <h6 class="text-muted ml-2">
                                                <del>${item.gia}</del>
                                            </h6>
                                        </div>
                                    </div>
                                    <div class="card-footer d-flex justify-content-between bg-light border">
                                        <a href="/sanphams/${item.slug}" class="btn btn-sm text-dark p-0"><i
                                                class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                                        <a href="" class="btn btn-sm text-dark p-0"><i
                                                class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                                    </div>
                                </div>
                            </div>`;
            })
            $('.list-product').html(html);
            $('#pagination').twbsPagination({
                first: "First",
                prev: "Previous",
                next: "Next",
                last: "Last",
                visiblePages: 5,
                totalPages: response.meta.totalpage,
                startPage: response.meta.pagefirst,
                onPageClick: function (event, page) {
                    if(page !== pagecurrent){
                        event.preventDefault();
                        pagecurrent = page;
                        loadProduct();
                    }
                },
            });
        },
        error: function (error) {

        }
    })
}
