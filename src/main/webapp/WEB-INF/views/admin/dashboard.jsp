<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboards</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <div class="form-head mb-sm-5 mb-3 d-flex flex-wrap align-items-center">
            <h2 class="font-w600 title mb-2 mr-auto ">Dashboard</h2>
            <div class="weather-btn mb-2">
                <span class="mr-3 font-w600 text-black"><i class="las la-calendar mr-2"></i></span>
                <select class="form-control style-1 default-select  mr-3 ">
                    <option id="getDate"></option>
                    <option>Hôm qua</option>
                    <option>Tháng này</option>
                    <option>Tháng trước</option>
                    <option>Tùy chỉnh
                    </option>
                </select>
            </div>
<%--            <a href="javascript:void(0);" class="btn btn-secondary mb-2"><i class="las la-calendar scale5 mr-3"></i>Filter--%>
<%--                Periode</a>--%>
        </div>
        <div class="row">
            <div class="col-xl-3 col-sm-6 m-t35">
                <div class="card card-coin">
                    <div class="card-body text-center">
                        <svg class="mb-3 currency-icon" width="80" height="80" viewbox="0 0 80 80" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <circle cx="40" cy="40" r="40" fill="white"></circle>
                            <path d="M40 0C17.9083 0 0 17.9083 0 40C0 62.0917 17.9083 80 40 80C62.0917 80 80 62.0917 80 40C80 17.9083 62.0917 0 40 0ZM40 72.5C22.0783 72.5 7.5 57.92 7.5 40C7.5 22.08 22.0783 7.5 40 7.5C57.9217 7.5 72.5 22.0783 72.5 40C72.5 57.9217 57.92 72.5 40 72.5Z"
                                  fill="#FFAB2D"></path>
                            <path d="M42.065 41.2983H36.8133V49.1H42.065C43.125 49.1 44.1083 48.67 44.7983 47.9483C45.52 47.2566 45.95 46.275 45.95 45.1833C45.9517 43.0483 44.2 41.2983 42.065 41.2983Z"
                                  fill="#FFAB2D"></path>
                            <path d="M40 10.8333C23.9167 10.8333 10.8333 23.9166 10.8333 40C10.8333 56.0833 23.9167 69.1666 40 69.1666C56.0833 69.1666 69.1667 56.0816 69.1667 40C69.1667 23.9183 56.0817 10.8333 40 10.8333ZM45.935 53.5066H42.495V58.9133H38.8867V53.5066H36.905V58.9133H33.28V53.5066H26.9067V50.1133H30.4233V29.7799H26.9067V26.3866H33.28V21.0883H36.905V26.3866H38.8867V21.0883H42.495V26.3866H45.6283C47.3783 26.3866 48.9917 27.1083 50.1433 28.26C51.295 29.4116 52.0167 31.025 52.0167 32.775C52.0167 36.2 49.3133 38.995 45.935 39.1483C49.8967 39.1483 53.0917 42.3733 53.0917 46.335C53.0917 50.2816 49.8983 53.5066 45.935 53.5066Z"
                                  fill="#FFAB2D"></path>
                            <path d="M44.385 36.5066C45.015 35.8766 45.3983 35.0316 45.3983 34.08C45.3983 32.1916 43.8633 30.655 41.9733 30.655H36.8133V37.52H41.9733C42.91 37.52 43.77 37.12 44.385 36.5066Z"
                                  fill="#FFAB2D"></path>
                        </svg>
                        <h5 class="text-danger-emphasis"><i>Doanh thu bán hàng online</i></h5>

                        <h4 class="text-black mb-2 font-w600">168.331.000 đ</h4>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 m-t35">
                <div class="card card-coin">
                    <div class="card-body text-center">
                        <svg class="mb-3 currency-icon" width="80" height="80" viewbox="0 0 80 80" fill="none"
                             xmlns="http://www.w3.org/2000/svg">
                            <circle cx="40" cy="40" r="40" fill="white"></circle>
                            <path d="M40 0C17.9083 0 0 17.9083 0 40C0 62.0917 17.9083 80 40 80C62.0917 80 80 62.0917 80 40C80 17.9083 62.0917 0 40 0ZM40 72.5C22.0783 72.5 7.5 57.92 7.5 40C7.5 22.08 22.0783 7.5 40 7.5C57.9217 7.5 72.5 22.0783 72.5 40C72.5 57.9217 57.92 72.5 40 72.5Z"
                                  fill="#FFAB2D"></path>
                            <path d="M42.065 41.2983H36.8133V49.1H42.065C43.125 49.1 44.1083 48.67 44.7983 47.9483C45.52 47.2566 45.95 46.275 45.95 45.1833C45.9517 43.0483 44.2 41.2983 42.065 41.2983Z"
                                  fill="#FFAB2D"></path>
                            <path d="M40 10.8333C23.9167 10.8333 10.8333 23.9166 10.8333 40C10.8333 56.0833 23.9167 69.1666 40 69.1666C56.0833 69.1666 69.1667 56.0816 69.1667 40C69.1667 23.9183 56.0817 10.8333 40 10.8333ZM45.935 53.5066H42.495V58.9133H38.8867V53.5066H36.905V58.9133H33.28V53.5066H26.9067V50.1133H30.4233V29.7799H26.9067V26.3866H33.28V21.0883H36.905V26.3866H38.8867V21.0883H42.495V26.3866H45.6283C47.3783 26.3866 48.9917 27.1083 50.1433 28.26C51.295 29.4116 52.0167 31.025 52.0167 32.775C52.0167 36.2 49.3133 38.995 45.935 39.1483C49.8967 39.1483 53.0917 42.3733 53.0917 46.335C53.0917 50.2816 49.8983 53.5066 45.935 53.5066Z"
                                  fill="#FFAB2D"></path>
                            <path d="M44.385 36.5066C45.015 35.8766 45.3983 35.0316 45.3983 34.08C45.3983 32.1916 43.8633 30.655 41.9733 30.655H36.8133V37.52H41.9733C42.91 37.52 43.77 37.12 44.385 36.5066Z"
                                  fill="#FFAB2D"></path>
                        </svg>
                        <h5 class="text-danger-emphasis"><i>Doanh thu bán hàng offline</i></h5>

                        <h4 class="text-black mb-2 font-w600">24.098.000 đ</h4>

                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 m-t35">
                <div class="card card-coin">
                    <div class="card-body text-center">

                        <svg xmlns="http://www.w3.org/2000/svg" class="mb-3 currency-icon" width="80" height="80"
                             fill="none" viewBox="0 0 512 512">
                            <circle cx="40" cy="40" r="40" fill="white"></circle>
                            <path d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM369 209L241 337c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L335 175c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z"
                                  fill="#EB8153"/>
                        </svg>
                        <h5 class="text-danger-emphasis"><i>Số đơn hàng đã xác nhận</i></h5>
                        <h4 class="text-black mb-2 font-w600">300 <span> đơn hàng</span></h4>

                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 m-t35">
                <div class="card card-coin">
                    <div class="card-body text-center">
                        <svg class="mb-3 currency-icon" width="80" height="80" xmlns="http://www.w3.org/2000/svg"
                             fill="none" viewBox="0 0 512 512">
                            <circle cx="40" cy="40" r="40" fill="white"></circle>
                            <path d="M367.2 412.5L99.5 144.8C77.1 176.1 64 214.5 64 256c0 106 86 192 192 192c41.5 0 79.9-13.1 111.2-35.5zm45.3-45.3C434.9 335.9 448 297.5 448 256c0-106-86-192-192-192c-41.5 0-79.9 13.1-111.2 35.5L412.5 367.2zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"
                                  fill="#FF782C"/>
                        </svg>
                        <h5 class="text-danger-emphasis"><i>Số đơn hàng cần xác nhận</i></h5>

                        <h4 class="text-black mb-2 font-w600">125 <span> đơn hàng</span></h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <figure class="highcharts-figure">
                    <div id="container"></div>
                    <p class="highcharts-description">
                        Basic line chart showing trends in a dataset. This chart includes the
                        <code>series-label</code> module, which adds a label to each line for
                        enhanced readability.
                    </p>
                </figure>
            </div>
        </div>
    </div>
</div>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script>
    function getCurrentDate() {
        var currentDate = new Date();
        var day = currentDate.getDate();
        var month = currentDate.getMonth() + 1; // Months are zero-based, so add 1
        var year = currentDate.getFullYear();
        return addZero(day) + '/' + addZero(month) + '/' + year;
    }

    function addZero(number) {
        return number < 10 ? '0' + number : number;
    }

    var selectElement = document.getElementById('dateSelect');
    document.getElementById('getDate').innerText = getCurrentDate();
</script>
</body>
</html>