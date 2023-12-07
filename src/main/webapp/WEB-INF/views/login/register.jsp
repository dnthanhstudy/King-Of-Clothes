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
    <title>Register</title>

</head>
<body>

<main id="content" role="main" class="main">
    <div class="position-fixed top-0 right-0 left-0 bg-img-hero" style="height: 32rem; background-image: url(/template/login/svg/components/abstract-bg-4.svg);">

        <figure class="position-absolute right-0 bottom-0 left-0">
            <svg preserveaspectratio="none" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" viewbox="0 0 1921 273">
                <polygon fill="#fff" points="0,273 1921,273 1921,0 "></polygon>
            </svg>
        </figure>

    </div>

    <div class="container py-5 py-sm-7">
        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-5">
                <div class="card card-lg mb-5">
                    <div class="card-body">
                        <div class="text-center">
                            <div class="mb-5">
                                <h1 class="display-4">Create your account</h1>
                                <p>Already have an account? <a href="/login">Sign in here</a></p>
                            </div>

                            <span class="divider text-muted mb-4">OR</span>
                        </div>
                        <div>
                            <form id="registerForm">
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <label class="input-label">Username</label>
                                        <div class="js-form-message form-group">
                                            <input type="text" class="form-control form-control-lg" name="ten" id="ten" placeholder="Username">
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <label class="input-label">Phone</label>
                                        <div class="js-form-message form-group">
                                            <input type="text" class="form-control form-control-lg" name="soDienThoai" id="soDienThoai" placeholder="Phone">
                                        </div>
                                    </div>
                                </div>

                                <div class="js-form-message form-group">
                                    <label class="input-label">Your email</label>
                                    <input type="email" class="form-control form-control-lg" name="email" id="email" placeholder="email@gmail.com">
                                </div>

                                <div class="js-form-message form-group">
                                    <label class="input-label">Password</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" class="js-toggle-password form-control form-control-lg" name="matKhau" id="matKhau" placeholder="*************">
                                    </div>
                                </div>

                                <div class="js-form-message form-group">
                                    <div class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input" id="termsCheckbox" name="termsCheckbox" required=""
                                               data-msg="Please accept our Terms and Conditions.">
                                        <label class="custom-control-label text-muted" for="termsCheckbox"> I accept the <a href="#">Terms and Conditions</a></label>
                                    </div>
                                </div>
                                <button onclick="registerUser()" class="btn btn-lg btn-block btn-primary mb-2">Create an account</button>
                            </form>
                        </div>
                    </div>
                </div>

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
            </div>
        </div>
    </div>
</main>

<script>
    function isValidPhoneNumber(soDienThoai) {
        return /^[0-9]{10}$/.test(soDienThoai);
    }

    function isValidEmail(email) {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

    function validateForm() {
        let soDienThoai = $("#soDienThoai").val();
        let email = $("#email").val();
        let matKhau = $("#matKhau").val();

        if ($("#ten").val() === "") {
            showError("User name không được để trống");
            return false;
        }
        if (soDienThoai === "") {
            showError("Số điện thoại không được để trống");
            return false;
        } else if (!isValidPhoneNumber(soDienThoai)) {
            showError("Số điện thoại không hợp lệ");
            return false;
        }
        if (email === "") {
            showError("Địa chỉ email không được để trống");
            return false;
        } else if (!isValidEmail(email)) {
            showError("Địa chỉ email không hợp lệ");
            return false;
        }
        if (matKhau === "") {
            showError("Mật khẩu không được để trống");
            return false;
        } else if (matKhau.length < 6) {
            showError("Mật khẩu phải có ít nhất 6 ký tự");
            return false;
        }
        return true;
    }

    function registerUser() {
        var ten = $("#ten").val();
        var email = $("#email").val();
        var soDienThoai = $("#soDienThoai").val();
        var matKhau = $("#matKhau").val();

        if (validateForm()) {
            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "/api/khach-hang/register",
                data: JSON.stringify({
                    "ten": ten,
                    "email": email,
                    "soDienThoai": soDienThoai,
                    "matKhau": matKhau
                }),
                success: function (data) {
                    window.location.href = '/login';
                    console.log("success");
                },
                error: function (error) {
                    console.log("Registration failed: " + error.responseText);
                    showError(error.responseJSON.error);
                }
            });
        }
    }


</script>
</body>
</html>
