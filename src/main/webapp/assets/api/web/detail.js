const lenOfAttribute = parseInt($('#len-attribute').val());
$("#product").on("change", "input[type='radio']", function () {
    const lenChecked = $('#product input[type="radio"]:checked').length;
    if (lenChecked === lenOfAttribute) {
        let attributeId = [];
        $('#product input[type="radio"]:checked').each(function () {
            attributeId.push(parseInt($(this).val()));
        })
        $.ajax({
            url: "/api/bien-the",
            method: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: JSON.stringify(attributeId),
            success: (response) => {
                $('.product-origin').text(response.gia);

                if (response.hinhAnh !== null) {
                    $('.product-image-primary').attr('src', '/assets/images/sanpham/' + response.hinhAnh);
                }
                if (response.soLuong !== null) {
                    $('.product-quantity').text(response.soLuong)
                }
                if (response.khuyenMaiHienThiResponse !== null) {
                    $('.product-buy').text(response.giaBan)
                }

                $('.product-price-custom-vnd').each(function(index, item) {
                    let res = $(item).html();
                    if(res.indexOf("đ") === -1){
                        let numericValue = parseInt(res.replace(/[^\d]/g, ''));
                        let formattedValue = new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(numericValue);
                        $(item).html(formattedValue);
                    }
                });

            },
            error: (error) => {
                console.log(error);
            }
        });
    }
});