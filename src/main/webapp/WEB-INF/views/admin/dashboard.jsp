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
<!--**********************************
        Content body start
    ***********************************-->
<div class="content-body">
    <div class="container-fluid">
        <div class="form-head mb-sm-5 mb-3 d-flex flex-wrap align-items-center">
            <h2 class="font-w600 title mb-2 mr-auto ">Dashboard</h2>
            <div class="weather-btn mb-2">
                <span class="mr-3 font-w600 text-black"><i class="fa fa-cloud mr-2"></i>21</span>
                <select class="form-control style-1 default-select  mr-3 ">
                    <option>Medan, IDN</option>
                    <option>Jakarta, IDN</option>
                    <option>Surabaya, IDN</option>
                </select>
            </div>
            <a href="javascript:void(0);" class="btn btn-secondary mb-2"><i class="las la-calendar scale5 mr-3"></i>Filter
                Periode</a>
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
                        <h4 class="text-danger-emphasis"><i>Doanh thu bán hàng online hôm nay</i></h4>

                        <h2 class="text-black mb-2 font-w600">$168,331.09</h2>
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
                        <h4 class="text-danger-emphasis"><i>Doanh thu bán hàng offline hôm nay</i></h4>

                        <h2 class="text-black mb-2 font-w600">$24,098</h2>

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
                        <h4 class="text-danger-emphasis"><i>Số sản phẩm cần xác nhận</i></h4>
                        <h2 class="text-black mb-2 font-w600">$667,224</h2>

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
                        <h4 class="text-danger-emphasis"><i>Số sản phẩm cần xác nhận hủy</i></h4>

                        <h2 class="text-black mb-2 font-w600">$667,224</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-9 col-xxl-8">
                <div class="card">
                    <div class="card-header border-0 flex-wrap pb-0">
                        <div class="mb-3">
                            <h4 class="fs-20 text-black">Market Overview</h4>
                            <p class="mb-0 fs-12 text-black">Lorem ipsum dolor sit amet, consectetur</p>
                        </div>
                        <div class="d-flex flex-wrap mb-2">
                            <div class="custom-control check-switch custom-checkbox mr-4 mb-2">
                                <input type="checkbox" class="custom-control-input" id="customCheck9">
                                <label class="custom-control-label" for="customCheck9">
                                    <span class="d-block  font-w500 mt-2">BTC</span>
                                </label>
                            </div>
                            <div class="custom-control check-switch custom-checkbox mr-4 mb-2">
                                <input type="checkbox" class="custom-control-input" id="customCheck91">
                                <label class="custom-control-label" for="customCheck91">
                                    <span class="d-block  font-w500 mt-2">XRP</span>
                                </label>
                            </div>
                            <div class="custom-control check-switch custom-checkbox mr-4 mb-2">
                                <input type="checkbox" class="custom-control-input" id="customCheck92">
                                <label class="custom-control-label" for="customCheck92">
                                    <span class="d-block font-w500 mt-2">ETH</span>
                                </label>
                            </div>
                            <div class="custom-control check-switch custom-checkbox mr-4 mb-2">
                                <input type="checkbox" class="custom-control-input" id="customCheck93">
                                <label class="custom-control-label" for="customCheck93">
                                    <span class="d-block font-w500 mt-2">ZEC</span>
                                </label>
                            </div>
                        </div>
                        <select class="style-1 btn-secondary default-select">
                            <option>Weekly (2021)</option>
                            <option>Daily (2021)</option>
                            <option>Yearly (2021)</option>
                        </select>
                    </div>
                    <div class="card-body pb-2 px-3">
                        <div id="marketChart" class="market-line"></div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-xxl-4">
                <div class="card">
                    <div class="card-header border-0 pb-0">
                        <h4 class="fs-20 text-black">Current Statistic</h4>
                    </div>
                    <div class="card-body pb-0">
                        <div id="currentChart" class="current-chart"></div>
                        <div class="chart-content">
                            <div class="d-flex justify-content-between mb-2 align-items-center">
                                <div>
                                    <svg class="mr-2" width="15" height="15" viewbox="0 0 15 15" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <rect width="15" height="15" rx="7.5" fill="#EB8153"></rect>
                                    </svg>
                                    <span class="fs-14">Income (66%)</span>
                                </div>
                                <div>
                                    <h5 class="mb-0">$167,884.21</h5>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-2 align-items-center">
                                <div>
                                    <svg class="mr-2" width="15" height="15" viewbox="0 0 15 15" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <rect width="15" height="15" rx="7.5" fill="#71B945"></rect>
                                    </svg>

                                    <span class="fs-14">Income (50%)</span>
                                </div>
                                <div>
                                    <h5 class="mb-0">$56,411.33</h5>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-2 align-items-center">
                                <div>
                                    <svg class="mr-2" width="15" height="15" viewbox="0 0 15 15" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <rect width="15" height="15" rx="7.5" fill="#4A8CDA"></rect>
                                    </svg>
                                    <span class="fs-14">Income (11%)</span>
                                </div>
                                <div>
                                    <h5 class="mb-0">$81,981.22</h5>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-2 align-items-center">
                                <div>
                                    <svg class="mr-2" width="15" height="15" viewbox="0 0 15 15" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <rect width="15" height="15" rx="7.5" fill="#6647BF"></rect>
                                    </svg>
                                    <span class="fs-14">Income (23%)</span>
                                </div>
                                <div>
                                    <h5 class="mb-0">$12,432.51</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-6 col-xxl-12">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-header border-0 pb-0">
                                <h4 class="mb-0 fs-20 text-black">Best Seller</h4>
                                <div class="dropdown custom-dropdown mb-0 tbl-orders-style">
                                    <div class="btn sharp tp-btn" data-toggle="dropdown">
                                        <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                            <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                            <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                        </svg>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="javascript:void(0);">Details</a>
                                        <a class="dropdown-item text-danger" href="javascript:void(0);">Cancel</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-3 pb-0">
                                <div class="dropdown custom-dropdown d-block tbl-orders">
                                    <div class="btn  d-flex align-items-center border-0 order-bg rounded "
                                         data-toggle="dropdown">
                                        <svg width="46" height="46" viewbox="0 0 46 46" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path d="M23.4169 0.00384777C10.7089 -0.226161 0.233857 9.88466 0.00384777 22.5831C-0.226161 35.2815 9.88466 45.7661 22.5831 45.9961C35.2815 46.2261 45.7661 36.1153 45.9961 23.4073C46.2261 10.7089 36.1153 0.224273 23.4169 0.00384777ZM22.6598 41.6834C12.3573 41.4918 4.12485 32.9622 4.31652 22.6598C4.49861 12.3573 13.0281 4.12485 23.3306 4.30694C33.6427 4.49861 41.8655 13.0281 41.6834 23.3306C41.5013 33.6331 32.9622 41.8655 22.6598 41.6834Z"
                                                  fill="#374C98"></path>
                                            <path d="M23.3038 6.22751C14.0555 6.06459 6.3981 13.4536 6.23518 22.7019C6.06267 31.9406 13.4517 39.598 22.7 39.7705C31.9483 39.9334 39.6057 32.5444 39.7686 23.3057C39.9315 14.0574 32.5521 6.40002 23.3038 6.22751ZM30.2136 32.7361H14.9564L16.8252 22.3952L14.6593 22.8457V21.0823L17.151 20.5552L18.7707 11.6615H24.8563L23.4763 19.2326L25.6039 18.7822V20.5456L23.1504 21.0535L21.732 28.8738H31.3445L30.2136 32.7361Z"
                                                  fill="#374C98"></path>
                                        </svg>
                                        <div class="text-left ml-3">
                                            <span class="d-block fs-16 text-black">Litecoin</span>
                                        </div>
                                        <i class="fa fa-angle-down scale5 ml-auto"></i>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="javascript:void(0);">Bitcoin</a>
                                        <a class="dropdown-item" href="javascript:void(0);">ETH coin</a>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table text-center bg-info-hover tr-rounded order-tbl">
                                        <thead>
                                        <tr>
                                            <th class="text-left">Name</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-right">Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="text-left">Áo So-mi</td>
                                            <td>150,000</td>
                                            <td class="text-right">50</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Áo phông hot</td>
                                            <td>200,000</td>
                                            <td class="text-right">60</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Quần âu</td>
                                            <td>550,000</td>
                                            <td class="text-right">20</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Áo polo</td>
                                            <td>145,000</td>
                                            <td class="text-right">80</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Quần bò rách</td>
                                            <td>320,000</td>
                                            <td class="text-right">45</td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer border-0 p-0 caret">
                                <a href="coin-details.html" class="btn-link"><i class="fa fa-caret-down"
                                                                                aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-header border-0 pb-0">
                                <h4 class="mb-0 text-black fs-20">New</h4>
                                <div class="dropdown custom-dropdown mb-0 tbl-orders-style">
                                    <div class="btn sharp tp-btn" data-toggle="dropdown">
                                        <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                            <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                            <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                  stroke="white" stroke-width="2" stroke-linecap="round"
                                                  stroke-linejoin="round"></path>
                                        </svg>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="javascript:void(0);">Details</a>
                                        <a class="dropdown-item text-danger" href="javascript:void(0);">Cancel</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-3 pb-0">
                                <div class="dropdown custom-dropdown d-block tbl-orders">
                                    <div class="btn  d-flex align-items-center order-bg border-0 rounded"
                                         data-toggle="dropdown">
                                        <svg width="46" height="46" viewbox="0 0 46 46" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path d="M23.4169 0.00384778C10.7089 -0.226162 0.233857 9.88467 0.00384778 22.5831C-0.226162 35.2816 9.88467 45.7662 22.5831 45.9962C35.2816 46.2262 45.7662 36.1153 45.9962 23.4073C46.2262 10.7089 36.1153 0.224274 23.4169 0.00384778ZM22.6598 41.6835C12.3573 41.4918 4.12485 32.9623 4.31653 22.6598C4.49862 12.3573 13.0281 4.12485 23.3306 4.30694C33.6427 4.49862 41.8656 13.0281 41.6835 23.3306C41.5014 33.6332 32.9623 41.8656 22.6598 41.6835Z"
                                                  fill="#FF782C"></path>
                                            <path d="M23.3019 6.22369C14.0536 6.06076 6.3962 13.4498 6.23327 22.6981C6.17864 25.6077 6.8773 28.3592 8.14427 30.7705H13.4163V14.2616C13.4163 13.2524 14.7877 12.9313 15.2334 13.837L23 29.5649L30.7667 13.838C31.2123 12.9313 32.5837 13.2524 32.5837 14.2616V30.7705H37.8395C39.0182 28.5298 39.7198 25.9997 39.7667 23.3019C39.9297 14.0536 32.5502 6.3962 23.3019 6.22369Z"
                                                  fill="#FF782C"></path>
                                            <path d="M30.667 31.7289V18.3672L23.8587 32.1534C23.5367 32.808 22.4624 32.808 22.1403 32.1534L15.333 18.3672V31.7289C15.333 32.2579 14.9046 32.6872 14.3746 32.6872H9.34223C12.3237 36.8763 17.1712 39.6632 22.6981 39.7667C28.4455 39.8683 33.5747 37.0507 36.6769 32.6872H31.6254C31.0954 32.6872 30.667 32.2579 30.667 31.7289Z"
                                                  fill="#FF782C"></path>
                                        </svg>
                                        <div class="text-left ml-3">
                                            <span class="d-block fs-16 text-black">Monero</span>
                                        </div>
                                        <i class="fa fa-angle-down scale5 ml-auto"></i>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="javascript:void(0);">Dash coin</a>
                                        <a class="dropdown-item" href="javascript:void(0);">ETH coin</a>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table text-center bg-warning-hover tr-rounded order-tbl">
                                        <thead>
                                        <tr>
                                            <th class="text-left">Name</th>
                                            <th class="text-center">Price</th>
                                            <th class="text-right">Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="text-left">Áo thun lạnh</td>
                                            <td>145,000</td>
                                            <td class="text-right">60</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Quần bò khói</td>
                                            <td>255,000</td>
                                            <td class="text-right">35</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Áo nỉ</td>
                                            <td>165,000</td>
                                            <td class="text-right">100</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Quần sooc đen</td>
                                            <td>255,000</td>
                                            <td class="text-right">75</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">Áo đại bàng</td>
                                            <td>165,000</td>
                                            <td class="text-right">75</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card-footer border-0 p-0 caret">
                                <a href="coin-details.html" class="btn-link"><i class="fa fa-caret-down"
                                                                                aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-xxl-12">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card-bx stacked card">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="mt-1" width="100" height="100"
                                         src="/template/admin/images">

                                </div>
                                <div class="col-sm-9">
                                    <div class="card-info">
                                        <h4 class="num-text text-danger mt-2 mb-1 font-w450">TỔNG KHÁCH HÀNG</h4>
                                        <h5 class="mb-1 mt-3 text-body ">100 khách hàng</h5>
                                        <hr>
                                        <div class="d-flex">
                                            <div class="mr-4 text-body">
                                                <h2 class="mb-2 mt-2 text-body fs-16">Tổng số khách hàng được quản
                                                    lý</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card-bx stacked card">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="mt-1" width="100" height="100"
                                         src="/template/admin/images">

                                </div>
                                <div class="col-sm-9">
                                    <div class="card-info">
                                        <h4 class="num-text text-danger mt-2 mb-1 font-w450">TỔNG SẢN PHẨM</h4>
                                        <h5 class="mb-1 mt-3 text-body ">154 sản phẩm</h5>
                                        <hr>
                                        <div class="d-flex">
                                            <div class="mr-4 text-body">
                                                <h2 class="mb-2 mt-2 text-body fs-16">Tổng số sản phẩm được quản
                                                    lý.</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="card-bx stacked card">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="mt-1" width="100" height="100"
                                         src="/template/admin/images">

                                </div>
                                <div class="col-sm-9">
                                    <div class="card-info">
                                        <h4 class="num-text text-danger mb-1 mt-2 font-w450">TỔNG ĐƠN HÀNG</h4>
                                        <h5 class="mb-1 mt-3 text-body ">254 đơn hàng</h5>
                                        <hr>
                                        <div class="d-flex">
                                            <div class="mr-4 text-body">
                                                <h2 class="mb-2 mt-2 text-body fs-16">Tổng số hóa đơn bán hàng trong
                                                    tháng.</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card-bx stacked card">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="mt-1" width="100" height="100"
                                         src="/template/admin/images">
                                </div>
                                <div class="col-sm-9">
                                    <div class="card-info">
                                        <h4 class="num-text text-danger mt-2 mb-1 font-w450">SẮP HẾT HÀNG</h4>
                                        <h5 class="mb-1 mt-3 text-body ">12 sản phẩm</h5>
                                        <hr>
                                        <div class="d-flex">
                                            <div class="mr-4 text-body">
                                                <h2 class="mb-2 mt-2 text-body fs-16">Số sản phẩm cảnh báo hết cần nhập
                                                    thêm</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12 mt-2">
                    <div class="card">
                        <div class="card-header d-sm-flex d-block pb-0 border-0">
                            <div>
                                <h4 class="fs-20 text-black">Quick Transfer</h4>
                                <p class="mb-0 fs-12">Lorem ipsum dolor sit amet, consectetur</p>
                            </div>
                            <div class="dropdown custom-dropdown d-block mt-3 mt-sm-0 mb-0">
                                <div class="btn btn-light d-flex align-items-center svg-btn" role="button"
                                     data-toggle="dropdown" aria-expanded="false">
                                    <svg class="mr-2" width="25" height="25" viewbox="0 0 42 42" fill="none"
                                         xmlns="http://www.w3.org/2000/svg">
                                        <path d="M21 0C9.40213 0 0.00012207 9.40201 0.00012207 20.9999C0.00012207 32.5978 9.40213 41.9998 21 41.9998C32.5979 41.9998 41.9999 32.5978 41.9999 20.9999C41.9867 9.4075 32.5924 0.0132751 21 0ZM28.5 31.5001H16.5002C15.6717 31.5001 15.0001 30.8286 15.0001 30C15.0001 29.929 15.0052 29.8581 15.0152 29.7876L16.1441 21.8843L13.864 22.4547C13.7449 22.4849 13.6227 22.5 13.5 22.5C12.6715 22.4991 12.0009 21.8271 12.0013 20.9985C12.0022 20.311 12.4701 19.7122 13.137 19.5447L16.6018 18.6786L18.015 8.78723C18.1321 7.96692 18.892 7.39746 19.7123 7.51465C20.5327 7.63184 21.1021 8.39172 20.9849 9.21204L19.7444 17.8931L25.1364 16.545C25.9388 16.3403 26.755 16.8251 26.9592 17.6276C27.1638 18.43 26.679 19.2462 25.8766 19.4508C25.872 19.4518 25.8674 19.4531 25.8629 19.454L19.2857 21.0983L18.2287 28.4999H28.5C29.3286 28.4999 30.0001 29.1714 30.0001 30C30.0001 30.8281 29.3286 31.5001 28.5 31.5001Z"
                                              fill="#5974D5"></path>
                                    </svg>
                                    <span class="text-black fs-16">Yearly (2021)</span>
                                    <i class="fa fa-angle-down text-black scale3 ml-2"></i>
                                </div>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="#" class="dropdown-item">Weekly (2021)</a>
                                    <a href="#" class="dropdown-item ">Daily (2021)</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="form-wrapper">
                                <div class="form-group">
                                    <div class="input-group input-group-lg">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Amount BTC</span>
                                        </div>
                                        <input type="text" class="form-control" placeholder="742.2">
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex mb-3 mt-3 justify-content-between align-items-center">
                                <h4 class="text-black fs-20 mb-0">Recent Contacts</h4>
                                <a href="javascript:void(0);" class="btn-link">View more</a>
                            </div>
                            <div class="testimonial-one px-4 owl-right-nav owl-carousel owl-loaded owl-drag">
                                <div class="items">
                                    <div class="text-center">
                                        <img class="mb-3 rounded"
                                             src="<c:url value='/template/admin/images/contacts/Untitled-1.jpg'/>"
                                             alt="">
                                        <h5 class="mb-0"><a class="text-black" href="javascript:void(0);">Samuel</a>
                                        </h5>
                                        <span class="fs-12">@sam224</span>
                                    </div>
                                </div>
                                <div class="items">
                                    <div class="text-center">
                                        <img class="mb-3 rounded"
                                             src="<c:url value='/template/admin/images/contacts/Untitled-2.jpg'/>"
                                             alt="">
                                        <h5 class="mb-0"><a class="text-black" href="javascript:void(0);">Cindy</a>
                                        </h5>
                                        <span class="fs-12">@cindyss</span>
                                    </div>
                                </div>
                                <div class="items">
                                    <div class="text-center">
                                        <img class="mb-3 rounded"
                                             src="<c:url value='/template/admin/images/contacts/Untitled-3.jpg'/>"
                                             alt="">
                                        <h5 class="mb-0"><a class="text-black" href="javascript:void(0);">David</a>
                                        </h5>
                                        <span class="fs-12">@davidxc</span>
                                    </div>
                                </div>
                                <div class="items">
                                    <div class="text-center">
                                        <img class="mb-3 rounded"
                                             src="<c:url value='/template/admin/images/contacts/Untitled-4.jpg'/>"
                                             alt="">
                                        <h5 class="mb-0"><a class="text-black" href="javascript:void(0);">Martha</a>
                                        </h5>
                                        <span class="fs-12">@marthaa</span>
                                    </div>
                                </div>
                                <div class="items">
                                    <div class="text-center">
                                        <img class="mb-3 rounded"
                                             src="<c:url value='/template/admin/images/contacts/Untitled-5.jpg'/>"
                                             alt="">
                                        <h5 class="mb-0"><a class="text-black" href="javascript:void(0);">Olivia</a>
                                        </h5>
                                        <span class="fs-12">@oliv62</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row pt-sm-5 pt-3 align-items-center">
                                <div class="col-sm-6 mb-sm-0 mb-3">
                                    <p class="mb-0 fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                        sed do eiusmod tempor incididunt ut</p>
                                </div>
                                <div class="col-sm-6">
                                    <a href="javascript:void(0);" class="btn btn-secondary d-block btn-lg">TRANSFER
                                        NOW</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--**********************************
    Content body end
***********************************-->
</body>
</html>