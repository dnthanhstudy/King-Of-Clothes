<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="/trang-chu" class="text-decoration-none">
                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">K.O.C</span>SHOP</h1>
            </a>
        </div>
        <div class="col-lg-6 col-6 text-left">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for products" id="input-search-product">
                    <div class="input-group-append" id="icon-search-product">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                    </div>
                </div>
        </div>
        <div class="col-lg-3 col-6 text-right">
            <a href="?lang=vi" class="btn border" >Việt</a>
            <a href="?lang=en" class="btn border" >Anh</a>
            <a href="" class="btn border">
                <i class="fas fa-heart text-primary"></i>
                <span class="badge">0</span>
            </a>
            <a href="/cart" class="btn border">
                <i class="fas fa-shopping-cart text-primary"></i>
                <span class="badge">0</span>
            </a>
        </div>
    </div>
</div>
<!-- Topbar End -->
<script>
    $(document).ready(function() {
        $("a[href*=lang]").on("click", function() {
            var param = $(this).attr("href");
            $.ajax({
                url : "/trang-chu" + param,
                success : function() {
                    location.reload();
                }
            });
            return false;
        })

        $('#input-search-product').on('keypress', (e) => {
            if(e.which === 13){
                e.preventDefault();
                const search = $(e.target).val();
                window.location = 'search?q='+search;
            }
        })

        $('#icon-search-product').on('click', (e) => {
            e.preventDefault();
            const search = $('#input-search-product').val();
            window.location = 'search?q='+search;
        })
    })
</script>