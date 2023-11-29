<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 11/29/2023
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh mục</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <div class="card card-body hstack gap-3 mt-3">
            <div class="p-2">
                <a href="" class="btn btn-primary">Thêm mới</a>
            </div>
            <div class="p-2">
                <input id="ten" type="text" placeholder="Tên danh mục" class="form-control">
                <input id="slug" type="hidden">
            </div>
        </div>
        <div class="group123 ">
            <svg xmlns="http://www.w3.org/2000/svg" class="icon" aria-hidden="true"
                 viewBox="0 0 512 512">
                <style>svg {
                    fill: #ebeef4
                }</style>
                <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"/>
            </svg>
            <input placeholder="Tìm danh mục" id="searchParam" name="searchParam" type="search" class="inputghichu w-100">
        </div>

        <div class="card mt-4" style="box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px, rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
        padding: 20px; background-color: #fff">
            <div class="row col-12">
                <h4>Danh sách danh mục</h4>
            </div>
            <hr>
            <div class="d-flex justify-content-between">
                <hr>
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th scope="col">STT</th>
                        <th scope="col">Tên danh mục</th>
                        <th scope="col" colspan="2">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody class="tbody-danhmuc">
                    </tbody>
                </table>
            </div>
        </div>
        <ul class="pagination d-flex justify-content-center"  id="pagination"></ul>
    </div>
</div>

<script src="<c:url value='/assets/js/defined.js'/>"></script>
<script>
    let pageCurrent = 1;
    loadDanhMuc();
    function loadDanhMuc(){
        $.ajax({
            url: "/api/danh-muc/pagination?page=" + pageCurrent,
            method: "GET",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: (response) => {
                let html = '';
                $.each(response.data, (index, item) => {
                    html += `<tr>
                                <td>\${index+1}</td>
                                <td>\${item.ten}</td>
                                <td>
                                    <a type="button" class="btn btn-warning" href="#" style="text-decoration: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                                            <path d="M471.6 21.7c-21.9-21.9-57.3-21.9-79.2 0L362.3 51.7l97.9 97.9 30.1-30.1c21.9-21.9 21.9-57.3 0-79.2L471.6 21.7zm-299.2 220c-6.1 6.1-10.8 13.6-13.5 21.9l-29.6 88.8c-2.9 8.6-.6 18.1 5.8 24.6s15.9 8.7 24.6 5.8l88.8-29.6c8.2-2.7 15.7-7.4 21.9-13.5L437.7 172.3 339.7 74.3 172.4 241.7zM96 64C43 64 0 107 0 160V416c0 53 43 96 96 96H352c53 0 96-43 96-96V320c0-17.7-14.3-32-32-32s-32 14.3-32 32v96c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V160c0-17.7 14.3-32 32-32h96c17.7 0 32-14.3 32-32s-14.3-32-32-32H96z"/>
                                        </svg>
                                    </a>
                                    <button type="button" class="btn btn-danger" value="" >
                                       <svg viewbox="0 0 24 24" height="1em" xmlns="http://www.w3.org/2000/svg">
                                           <path d="M3 6H5H21" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                           <path d="M8 6V4C8 3.46957 8.21071 2.96086 8.58579 2.58579C8.96086 2.21071 9.46957 2 10 2H14C14.5304 2 15.0391 2.21071 15.4142 2.58579C15.7893 2.96086 16 3.46957 16 4V6M19 6V20C19 20.5304 18.7893 21.0391 18.4142 21.4142C18.0391 21.7893 17.5304 22 17 22H7C6.46957 22 5.96086 21.7893 5.58579 21.4142C5.21071 21.0391 5 20.5304 5 20V6H19Z" stroke="#fff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                       </svg>
                                   </button>
                                </td>
                            </tr>`;
                })
                $('.tbody-danhmuc').html(html);

                console.log(response);
                $('#pagination').twbsPagination({
                    visiblePages: 5,
                    totalPages: response.meta.totalPage,
                    startPage: response.meta.pageCurrent,
                    onPageClick: function (event, page) {
                        if(page !== pageCurrent){
                            event.preventDefault();
                            pageCurrent = page;
                            loadDanhMuc();
                        }
                    },
                });
            },
            error: (error) => {
                console.log(error);
            }
        });
    }



    $("#ten").keyup(function () {
        const name = $(this).val();
        const slug = customNameToSlug(name);
        $("#slug").val(slug);
    });


</script>
</body>
</html>
