<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/22/2023
  Time: 6:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thống kê giao ca</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <h4 style="margin-top: 0;
    margin-bottom: 30px;
    border-bottom: 2px solid #FFD43B;
    padding-bottom: 10px;
    padding-left: 5px;
    color: black;">
         Thống kê giao ca
        </h4>

                <div class="project-nav">
                    <div class="card-action card-tabs  mr-auto">
                        <ul class="nav nav-tabs style-2">
                            <li class="nav-item">
                                <a href="#navpills-1" class="nav-link active" data-toggle="tab" aria-expanded="false">All Projects <span class="badge badge-pill shadow-primary badge-primary">154</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#navpills-2" class="nav-link" data-toggle="tab" aria-expanded="false">On Progress <span class="badge badge-pill badge-info shadow-info">2</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#navpills-3" class="nav-link" data-toggle="tab" aria-expanded="true">Pending <span class="badge badge-pill badge-warning shadow-warning">4</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#navpills-4" class="nav-link" data-toggle="tab" aria-expanded="true">Closed <span class="badge badge-pill badge-danger shadow-danger">1</span></a>
                            </li>
                        </ul>
                    </div>
                    <%--search--%>
                    <div class="InputContainer">
                        <input type="text" id=""  name="text" class="input"  placeholder="Search">

                        <div class="border"></div>

                        <button id="" class="micButton">
                            <svg viewBox="0 0 512 512" class="searchIcon"><path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path></svg>
                        </button>

                    </div>
                </div>
                <div class="tab-content project-list-group" id="myTabContent">
                    <div class="tab-pane fade active show" id="navpills-1">
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#nv-0001</p>
                                    <h5 class="title font-w600 mb-2"><a href="#" class="text-black text-decoration-none">Dinh Anh Tuan</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>20/10/2023 7:00</div>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>20/10/2023 9:00</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền đầu ca</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">1500000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền cuối ca</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">1950000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tiền mặt bàn giao </span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">195000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền chênh lệch</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">0</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-1 my-2 col-lg-6 col-sm-6">
                                    <div class="dropdown">
                                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                            <svg width="24" height="24" viewbox="0 0 24 24" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg">
                                                <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                                <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z"
                                                      stroke="#575757" stroke-width="2" stroke-linecap="round"
                                                      stroke-linejoin="round"></path>
                                            </svg>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="javascript:void(0);">Xóa</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#nv-0002</p>
                                    <h5 class="title font-w600 mb-2"><a href="#" class="text-black text-decoration-none">Dinh Tuan Anh</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>20/10/2023 9:00</div>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>20/10/2023 11:00</div>

                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền đầu ca</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">1950000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền cuối ca</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">2500000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Tổng tiền tại quầy</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">2400000</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="ml-2">
                                            <span>Số tiền chênh lệch</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">100000</h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn badge text-bg-warning status-btn mr-3">Pending</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <nav class="mt-5 ">
                            <ul class="d-flex justify-content-center pagination pagination-gutter pagination-primary no-bg">
                                <li class="page-item page-indicator">
                                    <a class="page-link" href="javascript:void(0)">
                                        <i class="la la-angle-left"></i></a>
                                </li>
                                <li class="page-item "><a class="page-link" href="javascript:void(0)">1</a>
                                </li>
                                <li class="page-item active"><a class="page-link" href="javascript:void(0)">2</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                <li class="page-item"><a class="page-link" href="javascript:void(0)">4</a></li>
                                <li class="page-item page-indicator">
                                    <a class="page-link" href="javascript:void(0)">
                                        <i class="la la-angle-right"></i></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="tab-pane fade" id="navpills-2">
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Build Branding Persona for Etza.id</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic4.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic3.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-info text-info status-btn mr-3">Progress</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Manage SEO for Eclan Company P..</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic8.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Angela Moss</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <span class="img-placeholder bgl-danger text-danger">OJ</span>
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Olivia Jonson</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-info text-info status-btn mr-3">Progress</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="navpills-3">
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Build Branding Persona for Etza.id</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic4.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic3.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-warning text-warning status-btn mr-3">Pending</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Manage SEO for Eclan Company P..</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic8.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Angela Moss</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <span class="img-placeholder bgl-danger text-danger">OJ</span>
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Olivia Jonson</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-warning text-warning status-btn mr-3">Pending</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Reduce Website Page Size Omah</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <span class="img-placeholder bgl-info text-info">EA</span>
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Endge Aes</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <span class="img-placeholder bgl-success text-success">BS</span>
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Bella Sirait</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-warning text-warning status-btn mr-3">Pending</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Build Branding Persona for Etza.id</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic4.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic3.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-warning text-warning status-btn mr-3">Pending</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="navpills-4">
                        <div class="card">
                            <div class="project-info">
                                <div class="col-xl-3 my-2 col-lg-4 col-sm-6">
                                    <p class="text-primary mb-1">#P-000441425</p>
                                    <h5 class="title font-w600 mb-2"><a href="post-details.html" class="text-black">Build Branding Persona for Etza.id</a></h5>
                                    <div class="text-dark"><i class="fa fa-calendar-o mr-3" aria-hidden="true"></i>Created on Sep 8th, 2020</div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic4.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Client</span>
                                            <h5 class="mb-0 pt-1 font-w50 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-4 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="project-media">
                                            <img src="images/users/pic3.jpg" alt="">
                                        </div>
                                        <div class="ml-2">
                                            <span>Person in charge</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Kevin Sigh</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-3 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex align-items-center">
                                        <div class="power-ic">
                                            <i class="fa fa-bolt" aria-hidden="true"></i>
                                        </div>
                                        <div class="ml-2">
                                            <span>Deadline</span>
                                            <h5 class="mb-0 pt-1 font-w500 text-black">Tuesday,Sep 29th 2020</h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 my-2 col-lg-6 col-sm-6">
                                    <div class="d-flex project-status align-items-center">
                                        <span class="btn bgl-danger text-danger status-btn mr-3">Closed</span>
                                        <div class="dropdown">
                                            <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                                                <svg width="24" height="24" viewbox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                    <path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#575757" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </svg>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" href="javascript:void(0);">Edit</a>
                                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
    </div>
</div>
</body>
</html>
