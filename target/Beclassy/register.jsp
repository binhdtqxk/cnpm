<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="assets/css/register.css">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập tài khoản</title>
</head>

<body>
<c:import url="header.jsp"/>
<c:set var="i" value="${requestScope.error}"/>
<!-- Map web -->
<div class="map">
    <ul class="sub-map">
        <li><a href="index.jsp" title="Trang chủ" class="home">Trang chủ > </a></li>
        <li>
            <p class="cur-position">Đăng ký tài khoản</p>
        </li>
    </ul>
</div>

<!-- Register -->
<div class="container margin-bottom-20 margin-top-30">
    <div class="row">
        <div class="page-login account-box-shadow">
            <div id="login">
                <h1 class="title-head ">Đăng ký tài khoản</h1>
                <form method="post" action="register" id="customer_register" accept-charset="UTF-8">
                    <div class="form-signup">
                        <c:if test="${not empty i}">
                            <div class="errors">
                                <ul>
                                    <li>${i}</li>
                                </ul>
                            </div>
                        </c:if>
                    </div>
                    <div class="form-signup clearfix">
                        <div class="row">
                            <div class="col-md-12">

                                <label for="lastName">Họ<span class="required">*</span></label>
                                <input placeholder="Nhập Họ" type="text" class="form-control form-control-lg error"
                                       value="" name="lastName" id="lastName" required="">


                            </div>
                            <div class="col-md-12">

                                <label for="firstName">Tên<span class="required">*</span></label>
                                <input placeholder="Nhập Tên" type="text" class="form-control form-control-lg error"
                                       value="" name="firstName" id="firstName" required="">


                            </div>
                            <div class="col-md-12">

                                <label for="phone">Số điện thoại<span class="required">*</span></label>
                                <input placeholder="Nhập Số điện thoại" type="tel"
                                       class="number-sidebar form-control form-control-lg error" value="" name="phone"
                                       id="phone" required="">


                            </div>
                            <div class="col-md-12">

                                <label for="email">Email<span class="required">*</span></label>
                                <input placeholder="Nhập Địa chỉ Email" type="email"
                                       class="form-control form-control-lg error" data-validation="email"
                                       pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$"
                                       data-validation-error-msg="Email sai định dạng" value="" name="email" id="email"
                                       required="">

                            </div>
                            <div class="col-md-12">

                                <label for="password">Mật khẩu<span class="required">*</span></label>
                                <input placeholder="Nhập Mật khẩu" type="password"
                                       class="form-control form-control-lg error" value="" name="password"
                                       id="password" required="" data-validation-error-msg="Không được để trống"
                                       data-validation="required">


                            </div>
                            <div class="col-md-12 text-center" style="margin-top:15px;">
                                <button type="submit" value="Đăng ký" class="btn btn-style btn-blues">Tạo tài
                                    khoản
                                </button>
                                <a href="./login.jsp" title="Đăng nhập"
                                   class="btn btn-register btn-register-login">Đăng nhập</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<c:import url="footer.jsp"/>
</body>

</html>