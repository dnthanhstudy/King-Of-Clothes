
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
    <title>Account</title>
</head>

<div class="khung">
    <span style="font-size: 25px"><s:message code="web.ttweb.myProfile"/></span>
    <hr>
    <div class="row">
        <div class="col-8" style="border-right: 2px solid #dedede">
            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.accountName"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <p id="ma">seiichitakashi</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.name"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Họ và tên:" id="ten" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span>Email:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Email:" id="email" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.phone"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input placeholder="Số điện thoại:" id="sdt" class="form-control"/>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.sex"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <div class="form-check form-check-inline">
                        <input class="form-check-input gioi-tinh" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Nam">
                        <label class="form-check-label" for="inlineRadio1"><s:message code="web.ttweb.Male"/></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input gioi-tinh" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="Nữ">
                        <label class="form-check-label" for="inlineRadio2"><s:message code="web.ttweb.Female"/></label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input gioi-tinh" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="Khác">
                        <label class="form-check-label" for="inlineRadio3"><s:message code="web.ttweb.Orther"/></label>
                    </div>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12 col-sm-3 text-start text-sm-end">
                    <label>
                        <span class="text-danger me-1">*</span>
                        <span><s:message code="web.ttweb.date"/>:</span>
                    </label>
                </div>
                <div class="col-12 col-sm-7">
                    <input type="date" id="ngaysinh" class="form-control">
                </div>
            </div>

        </div>
        <div class="col-4 text-center mt-5">
            <div>
                <img src="/template/web/img/avatar.jpeg" width="50%" style="border-radius: 50%" alt="">
            </div>
        </div>
    </div>
    <div style="margin-left: 170px" >
        <button type="button" class="btn" style="background-color: #EFCACA;color: #BF0000;"  ><s:message code="web.ttweb.submit"/></button>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script>
    moment.locale('vn');
    let ma = $('#customer-code').val();
    var options = {
        month: 'numeric', day: 'numeric', year: 'numeric',
    };
    if($('.ma-chuc-vu').val() === 'CUSTOMER'){
        $.ajax({
            url: '/api/khach-hang/' + ma,
            method: 'GET',
            dataType: 'json',
            success: function (req) {
                console.log(req);
                $('#ma').text(req.ma);
                $('#ten').val(req.ten);
                $('#sdt').val(req.soDienThoai);
                $('#email').val(req.email);
                var date = new Date(req.ngaySinh);
                console.log(moment(date).format('YYYY-MM-DD'))
                $('#ngaysinh').val(moment(date).format('YYYY-MM-DD'));
                $('.gioi-tinh').each((index, item) => {
                    if($(item).val() === req.gioiTinh){
                        $(item).attr('checked', true);
                    }
                })
            },
            error: function (xhr, status, error) {
                console.log(error);
            }
        });
    }else {
        $.ajax({
            url: '/api/nhan-vien/' + ma,
            method: 'GET',
            dataType: 'json',
            success: function (req) {
                $('#ma').text(req.ma);
                $('#ten').val(req.ten);
                $('#sdt').val(req.soDienThoai);
                $('#email').val(req.email);
                var date = new Date(req.ngaySinh);
                console.log(moment(date).format('YYYY-MM-DD'))
                $('#ngaysinh').val(moment(date).format('YYYY-MM-DD'));
                $('.gioi-tinh').each((index, item) => {
                    if($(item).val() === req.gioiTinh){
                        $(item).attr('checked', true);
                    }
                })
            },
            error: function (xhr, status, error) {
                console.log(error);
            }
        });
    }



</script>
</body>
</html>