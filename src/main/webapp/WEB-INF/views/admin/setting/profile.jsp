<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/18/2023
  Time: 4:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Hi, welcome back!</h4>
                    <p class="mb-0">HIHI</p>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)" style="text-decoration: none">Setting</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)" style="text-decoration: none">Profile</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="profile card card-body px-3 pt-3 pb-0">
                    <div class="profile-head">
                        <div class="photo-content">
                            <div class="cover-photo"></div>
                        </div>
                        <div class="profile-info">
                            <div class="profile-photo">
                                <img src="/template/admin/images/profile/profile.png" class="img-fluid rounded-circle" alt="">
                            </div>
                            <div class="profile-details">
                                <div class="profile-name px-3 pt-2">
                                    <h4 class="text-primary mb-0">Họ và tên</h4>
                                    <p>Chức vụ</p>
                                </div>
                                <div class="dropdown ml-auto">
                                    <a href="#" class="btn btn-primary light sharp" data-toggle="dropdown" aria-expanded="true"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="18px" height="18px" viewbox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg></a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <li class="dropdown-item"><i class="fa fa-user-circle text-primary mr-2"></i> View profile</li>
                                        <li class="dropdown-item"><i class="fa fa-users text-primary mr-2"></i> Add to close friends</li>
                                        <li class="dropdown-item"><i class="fa fa-plus text-primary mr-2"></i> Add to group</li>
                                        <li class="dropdown-item"><i class="fa fa-ban text-primary mr-2"></i> Block</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="profile-blog">
                                    <h5 class="text-cyan d-inline">Today Highlights</h5>
                                    <img src="images/profile/1.jpg" alt="" class="img-fluid mt-4 mb-4 w-100">
                                    <h4><a href="#" class="text-black" style="text-decoration: none">Darwin Creative Agency Theme</a></h4>
                                    <p class="mb-0">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="profile-interest">
                                    <h5 class="text-cyan d-inline">Image</h5>
                                    <div class="row mt-4 sp4" id="lightgallery">
                                        <a href="/template/admin/images/profile/2.jpg" data-exthumbimage="/template/admin/images/profile/2.jpg" data-src="/template/admin/images/profile/2.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/2.jpg" alt="" class="img-fluid">
                                        </a>
                                        <a href="/template/admin/images/profile/3.jpg" data-exthumbimage="/template/admin/images/profile/3.jpg" data-src="/template/admin/images/profile/3.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/3.jpg" alt="" class="img-fluid">
                                        </a>
                                        <a href="/template/admin/images/profile/4.jpg" data-exthumbimage="/template/admin/images/profile/4.jpg" data-src="/template/admin/images/profile/4.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/4.jpg" alt="" class="img-fluid">
                                        </a>
                                        <a href="/template/admin/images/profile/3.jpg" data-exthumbimage="/template/admin/images/profile/3.jpg" data-src="/template/admin/images/profile/3.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/3.jpg" alt="" class="img-fluid">
                                        </a>
                                        <a href="/template/admin/images/profile/4.jpg" data-exthumbimage="/template/admin/images/profile/4.jpg" data-src="/template/admin/images/profile/4.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/4.jpg" alt="" class="img-fluid">
                                        </a>
                                        <a href="/template/admin/images/profile/2.jpg" data-exthumbimage="/template/admin/images/profile/2.jpg" data-src="/template/admin/images/profile/2.jpg" class="mb-1 col-lg-4 col-xl-4 col-sm-4 col-6">
                                            <img src="/template/admin/images/profile/2.jpg" alt="" class="img-fluid">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-8">
                <div class="card">
                    <div class="card-body">
                        <div class="profile-tab">
                            <div class="custom-tab-1">
                                <ul class="nav nav-tabs">

                                    <li class="nav-item"><a href="#about-me" data-toggle="tab" class="nav-link active">About Me</a>
                                    </li>
                                    <li class="nav-item"><a href="#profile-settings" data-toggle="tab" class="nav-link">Setting</a>
                                    </li>
                                </ul>
                                <div class="tab-content">
                                    <div id="about-me" class="tab-pane fade active show">
                                        <div class="profile-about-me">
                                            <div class="pt-4 border-bottom-1 pb-3">
                                                <h4 class="text-cyan">About Me</h4>
                                                <p class="mb-2">A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence was created for the bliss of souls like mine.I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>
                                                <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.</p>
                                            </div>
                                        </div>
                                        <div class="profile-skills mb-5">
                                            <h4 class="text-cyan mb-2">Skills</h4>
                                            <a href="javascript:void(0);" class="btn btn-primary light btn-xs mb-1">Bán hàng</a>
                                            <a href="javascript:void(0);" class="btn btn-primary light btn-xs mb-1">Thu ngân</a>
                                        </div>
                                        <div class="profile-personal-info">
                                            <h4 class="text-cyan mb-4">Personal Information</h4>



                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Username <span class="pull-right">:</span></h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span>abc</span>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Name <span class="pull-right">:</span>
                                                    </h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span>Mitchell C.Shay</span>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Email <span class="pull-right">:</span>
                                                    </h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="a9ccd1c8c4d9c5cce9ccd1c8c4d9c5ccc587cac6c4">[email&#160;protected]</a></span>
                                                </div>
                                            </div>

                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Date of birth <span class="pull-right">:</span>
                                                    </h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span>01-01-2001</span>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Phone number <span class="pull-right">:</span></h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span>0987654321</span>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col-sm-3 col-5">
                                                    <h5 class="f-w-500">Address <span class="pull-right">:</span></h5>
                                                </div>
                                                <div class="col-sm-9 col-7"><span>Hà Nội</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="profile-settings" class="tab-pane fade">
                                        <div class="pt-3">
                                            <div class="settings-form">
                                                <h4 class="text-cyan">Account Setting</h4>
                                                <form>
                                                    <div class="form-group">
                                                        <label>Image </label>
                                                        <input type="file"  class="form-control" >
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label>Username</label>
                                                            <input type="text" placeholder="Username" class="form-control">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label>Name</label>
                                                            <input type="text" placeholder="Name" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                            <label>Email</label>
                                                            <input type="email" placeholder="Email" class="form-control">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                            <label>Phone number</label>
                                                            <input type="text" placeholder="Phone number" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Date of birth </label>
                                                        <input type="date"  class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Address</label>
                                                        <input type="text" placeholder="Address" class="form-control">
                                                    </div>
                                                    <div class="row mb-3">
                                                        <div class="col-12 col-sm-12">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="checkbox" id="changePasswordCheckbox">
                                                                <label class="form-check-label" for="changePasswordCheckbox">
                                                                    Change Password
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="passwordFields" style="display: none;">
                                                        <div class="form-group">
                                                            <label>Password</label>
                                                            <input type="password" id="password" name="password" placeholder="Password" class="form-control">
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Confirm Password</label>
                                                            <input type="password"  id="confirmPassword" name="confirmPassword" placeholder="Confirm Password" class="form-control">
                                                        </div>
                                                    </div>

                                                    <button class="btn" type="submit" style="background-color: #A6edab; color: #00852d">Submit</button>
                                                </form>
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
    </div>
</div>

<script >
    //checkbox change password
    const changePasswordCheckbox = document.getElementById("changePasswordCheckbox");
    const passwordFields = document.getElementById("passwordFields");

    changePasswordCheckbox.addEventListener("change", function () {
        if (changePasswordCheckbox.checked) {
            passwordFields.style.display = "block";
        } else {
            passwordFields.style.display = "none";
        }
    });

</script>
</body>
</html>
