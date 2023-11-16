<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 10/22/2023
  Time: 3:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>

</head>
<body>
<main id="content" role="main" class="main">
    <div class="position-fixed top-0 right-0 left-0 bg-img-hero" style="height: 32rem; background-image: url(/template/login/svg/components/abstract-bg-4.svg);">
        <!-- SVG Bottom Shape -->
        <figure class="position-absolute right-0 bottom-0 left-0">
            <svg preserveaspectratio="none" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewbox="0 0 1921 273">
                <polygon fill="#fff" points="0,273 1921,273 1921,0 "></polygon>
            </svg>
        </figure>
        <!-- End SVG Bottom Shape -->
    </div>

    <!-- Content -->
    <div class="container py-5 py-sm-7">
        <a class="d-flex justify-content-center mb-5" href="#">
            <img class="z-index-2" src="/template/login/svg/logos/logo.svg" alt="Image Description" style="width: 8rem;">
        </a>

        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-5">
                <!-- Card -->
                <div class="card card-lg mb-5">
                    <div class="card-body">
                        <!-- Form -->
                            <div class="text-center">
                                <div class="mb-5">
                                    <h1 class="display-4">Forgot password?</h1>
                                    <p>Enter the email address you used when you joined and we'll send you instructions to reset your password.</p>
                                </div>
                            </div>

                            <!-- Form Group -->
                            <div class="js-form-message form-group">
                                <label class="input-label" for="email">Your email</label>

                                <input required
                                       type="email"
                                       id="email"
                                       name="email"
                                       placeholder="Enter your email address" class="form-control form-control-lg">
                            </div>
                            <!-- End Form Group -->

                            <button  onclick="quenMatKhau()" class="btn btn-lg btn-block btn-primary">Submit</button>

                            <div class="text-center mt-2">
                                <a class="btn btn-link" href="/login">
                                    <i class="tio-chevron-left"></i> Back to Sign in
                                </a>
                            </div>
                        <!-- End Form -->
                    </div>
                </div>
                <!-- End Card -->

                <!-- Footer -->
                <div class="text-center">
                    <small class="text-cap mb-4">Trusted by the world's best teams</small>

                    <div class="w-85 mx-auto">
                        <div class="row justify-content-between">
                            <div class="col">
                                <img class="img-fluid" src="/template/login/svg/brands/gitlab-gray.svg" alt="Image Description">
                            </div>
                            <div class="col">
                                <img class="img-fluid" src="/template/login/svg/brands/fitbit-gray.svg" alt="Image Description">
                            </div>
                            <div class="col">
                                <img class="img-fluid" src="/template/login/svg/brands/flow-xo-gray.svg" alt="Image Description">
                            </div>
                            <div class="col">
                                <img class="img-fluid" src="/template/login/svg/brands/layar-gray.svg" alt="Image Description">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Footer -->
            </div>
        </div>
    </div>
    <!-- End Content -->
</main>

<script>
    function quenMatKhau() {
        var email = $("#email").val();
        $.ajax({
            type: "POST",
            url: "/api/quenmatkhau",
            data: { email: email },
            success: function(response) {
                showSuccess("Mật khẩu tạm thời đã được gửi đến email của bạn.")
            },
            error: function(xhr) {
                showError("Không tìm thấy nhân viên với địa chỉ email này.");
            }
        });
    }
</script>
</body>
</html>
