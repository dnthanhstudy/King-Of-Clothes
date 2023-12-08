<%--
  Created by IntelliJ IDEA.
  User: sktfk
  Date: 27/11/2023
  Time: 10:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">



</head>
<body>
<div class="container">
    <table class="table" id="tbl">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Mã hoá đơn</th>
            <th scope="col">Mã giao hàng</th>
            <th scope="col">Ngày đặt hàng</th>
            <th scope="col">Tên khách hàng</th>
            <th scope="col">SDT</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>Otto</td>
            <td>Otto</td>
        </tr>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.css" />

<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function convertVND(number){
        return number.toLocaleString('it-IT', {style : 'currency', currency : 'VND'});
    }
    function getFormattedDate(longDate) {
        date = new Date(longDate);
        let year = date.getFullYear();
        let month = (1 + date.getMonth()).toString().padStart(2, '0');
        let day = date.getDate().toString().padStart(2, '0');

        return day + '-' + month + '-' + year;
    }
    function formatDateInput(longDate) {
        date = new Date(longDate);
        let year = date.getFullYear();
        let month = (1 + date.getMonth()).toString().padStart(2, '0');
        let day = date.getDate().toString().padStart(2, '0');

        return year + '-' + month + '-' + day;
    }
    function getDateTime(longDate) {
        date = new Date(longDate);
        let year = date.getFullYear();
        let month = (1 + date.getMonth()).toString().padStart(2, '0');
        let day = date.getDate().toString().padStart(2, '0');
        let hours = date.getHours().toString().padStart(2, '0');
        let minutes = date.getMinutes().toString().padStart(2, '0');

        return day + '-' + month + '-' + year + ' ' + hours + ':' + minutes;
    }
    function showConfirm(message, id) {
        return new Promise((resolve) => {
            Swal.fire({
                title: 'Bạn chắc chắn?',
                text: message,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Đồng ý!'
            }).then((result) => {
                if (result.isConfirmed) {
                    resolve(true);
                } else {
                    resolve(false);
                }
            });
        });
    }
    function showSuccess(message){
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        Toast.fire({
            icon: 'success',
            title: message
        })
    }
    function showError(message){
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 2000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        })

        Toast.fire({
            icon: 'error',
            title: message
        })
    }
</script>
<script>
    $(document).ready(function () {
        loadTable()
        function loadTable() {
            $.ajax({
                url: '/api/thu3',
                method: 'GET',
                contentType: 'application/json',
                success: function (response) {
                    console.log(response)
                    // $('#kn-table').DataTable({
                    //     ordering: true,
                    //     destroy: true,
                    //     searching: false,
                    //     lengthChange: false,
                    //     buttons: ['excel'],
                    //     className: 'dt-body-right',
                    //     "info": true,
                    //     "lengthMenu": [10, 25, 50, 75, 100],
                    //     language: {
                    //         sLengthMenu: "_MENU_"
                    //     },
                    //     pageLength: 10,
                    //     data: res,
                    //     columns: renderColumns,
                    //     order: [[11, 'desc']],
                    //     columnDefs: [
                    //         {
                    //             "orderData": [11],
                    //             "targets": 8
                    //         }
                    //     ],
                    //     orderFixed: {
                    //         "post": [[1, 'desc']]
                    //     }
                    // })

                    //
                },
                error: function (xhr, status, error) {
                    showError("Lỗi ")
                    console.log('Có lỗi xảy ra: ' + error);
                }
            });
        }
    });
</script>
</body>
</html>
