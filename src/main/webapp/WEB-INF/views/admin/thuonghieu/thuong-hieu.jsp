<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/30/2023
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thương hiệu</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <div class="card card-body hstack gap-3 mt-3">
            <div class="p-2">
                <button  class="btn btn-primary" id="submit">Submit</button>
            </div>
            <div class="p-2">

                <input name="ten" id="ten" type="text" placeholder="Tên thương hiệu" class="form-control">
                <input id="slug" type="hidden">
            </div>
            <div class="p-2 ms-auto">
                <div class="InputContainer">
                    <input type="text" id="searchAll"  name="text" class="input"  placeholder="Tìm thương hiệu">

                    <div class="border"></div>

                    <button id="searchButton" class="micButton">
                        <svg viewBox="0 0 512 512" class="searchIcon"><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path></svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="card mt-4" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
        padding: 20px; background-color: #fff">
            <div class="row col-12">
                <h4>Danh sách thương hiệu</h4>
            </div>
            <hr>
            <div class="d-flex justify-content-between">
                <hr>
                <table class="table table-hover table-striped"  id="tbody-thuonghieu">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên thương hiệu</th>
                        <th scope="col" colspan="2">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <ul class="pagination d-flex justify-content-center"  id="pagination"></ul>
    </div>
</div>

<script src="<c:url value='/assets/js/defined.js'/>"></script>
<script>
    let param = '';
    let pageCurrent = 1;
    function loadThuongHieu() {
        $.ajax({
            url: "/api/thuong-hieu?page=" + pageCurrent,
            method: 'GET',
            success: function (response) {
                var tbody = $('#tbody-thuonghieu tbody');
                tbody.empty();
                var index = 0;
                response.data.forEach(function(item) {
                    var row = `
                            <tr>
                                 <td>\${++index}</td>
                                <td>\${item.ten}</td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-delete-thuong-hieu" value="\${item.slug}" >
                                       <svg viewbox="0 0 24 24" height="1em" xmlns="http://www.w3.org/2000/svg">
                                           <path d="M3 6H5H21" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                           <path d="M8 6V4C8 3.46957 8.21071 2.96086 8.58579 2.58579C8.96086 2.21071 9.46957 2 10 2H14C14.5304 2 15.0391 2.21071 15.4142 2.58579C15.7893 2.96086 16 3.46957 16 4V6M19 6V20C19 20.5304 18.7893 21.0391 18.4142 21.4142C18.0391 21.7893 17.5304 22 17 22H7C6.46957 22 5.96086 21.7893 5.58579 21.4142C5.21071 21.0391 5 20.5304 5 20V6H19Z" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                       </svg>
                                   </button>
                                </td>
                            </tr>`;
                    tbody.append(row);
                });
                $('#pagination').twbsPagination({
                    first: "First",
                    prev: "Previous",
                    next: "Next",
                    last: "Last",
                    visiblePages: 5,
                    totalPages: response.meta.totalPage,
                    startPage: response.meta.pageCurrent,
                    onPageClick: function (event, page) {
                        if(page !== pageCurrent){
                            event.preventDefault();
                            pageCurrent = page;
                            if(param != ''){
                                searchThuongHieu(param)
                            }else{
                                loadThuongHieu();
                            }
                        }
                    },
                });
            },
            error: function(xhr, status, error) {
                console.log('Có lỗi xảy ra: ' + error);
            }
        });
    }
    loadThuongHieu();

    function searchThuongHieu(){
        $.ajax({
            url: '/api/thuong-hieu/search?q=' + param + "&page=" + pageCurrent,
            method: 'GET',
            dataType: 'json',
            success: function (response) {
                var tbody = $('#tbody-thuonghieu tbody');
                tbody.empty();
                var index = 0;
                response.data.forEach(function(item) {
                    var row = `
                            <tr>
                                 <td>\${++index}</td>
                                <td>\${item.ten}</td>
                                <td>
                                    <button type="button" class="btn btn-danger btn-delete-thuong-hieu" value="\${item.slug}" >
                                       <svg viewbox="0 0 24 24" height="1em" xmlns="http://www.w3.org/2000/svg">
                                           <path d="M3 6H5H21" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                           <path d="M8 6V4C8 3.46957 8.21071 2.96086 8.58579 2.58579C8.96086 2.21071 9.46957 2 10 2H14C14.5304 2 15.0391 2.21071 15.4142 2.58579C15.7893 2.96086 16 3.46957 16 4V6M19 6V20C19 20.5304 18.7893 21.0391 18.4142 21.4142C18.0391 21.7893 17.5304 22 17 22H7C6.46957 22 5.96086 21.7893 5.58579 21.4142C5.21071 21.0391 5 20.5304 5 20V6H19Z" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                       </svg>
                                   </button>
                                </td>
                            </tr>`;
                    tbody.append(row);
                });
                $('#pagination').twbsPagination({
                    first: "First",
                    prev: "Previous",
                    next: "Next",
                    last: "Last",
                    visiblePages: 5,
                    totalPages: response.meta.totalPage,
                    startPage: response.meta.pageCurrent,
                    onPageClick: function (event, page) {
                        if(page !== pageCurrent){
                            event.preventDefault();
                            pageCurrent = page;
                            searchThuongHieu()
                        }
                    },
                });
            },
            error: function (xhr, status, error) {
                console.log('Lỗi khi lấy danh sách thương hiệu: ' + error);
            }
        });
    }


    $('#searchButton').on('click', (e) =>{
        e.preventDefault();
        param = $('#searchAll').val();
        searchThuongHieu();
    })

    $("#ten").keyup(function () {
        const name = $(this).val();
        const slug = customNameToSlug(name);
        $("#slug").val(slug);
    });

    function validateForm() {
        let isValid = true;

        if ($("#ten").val() === "") {
            showError("Tên thương hiệu không được để trống");
            isValid = false;
        }
        return isValid;
    }

    $('#submit').on('click', (e) => {
        e.preventDefault();
        if (validateForm()) {
            let data = {
                ten: $("#ten").val(),
                slug: $("#slug").val(),
            };

            $.ajax({
                url: "/api/thuong-hieu",
                method: "POST",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify(data),
                success: (response) => {
                    console.log("success");
                    window.location.href = '/admin/thuong-hieu';
                },
                error: (error) => {
                    showError(error.responseJSON.error);
                }
            });
        }
    });

    $('#tbody-thuonghieu').on('click', (e) => {
        if($(e.target).hasClass('btn-delete-thuong-hieu')){
            let slug = $(e.target).val();
            showConfirm("Bạn có muốn xóa?", slug)
                .then((confirmed) => {
                    if (confirmed) {
                        $.ajax({
                            url: '/api/thuong-hieu/' + slug,
                            method: 'DELETE',
                            success: function (req) {
                                loadThuongHieu();
                                showSuccess("Delete success");
                            },
                            error: function (xhr, status, error) {
                                showError("Delete fail");
                            }
                        });
                    }
                })
        }
    })
</script>
</body>
</html>