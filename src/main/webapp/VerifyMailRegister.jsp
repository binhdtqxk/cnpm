<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false"%>
<html>

<head>
    <link rel="stylesheet" type="text/css" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap" rel="stylesheet">

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhập mã xác minh</title>
</head>

<body>
<c:import url="header.jsp"/>
<c:set value="${requestScope.error}" var="i"/>
<!-- Map web -->
<div class="map">
    <ul class="sub-map">
        <li><a href="index.jsp" title="Trang chủ" class="home">Trang chủ > </a></li>
        <li>
            <p class="cur-position">Nhập mã xác minh</p>
        </li>
    </ul>
</div>

<!-- Login -->
<div id="login">
    <div class="text-center margin-bottom-30">
        <h1 class="title-head">Nhập mã xác minh</h1>
        <h5 class="subtitle">Nhập mã xác minh email để xác thực tài khoản.</h5>
    </div>
    <c:if test="${not empty i}">
        <div>
            <h5 class="subtitle">${i}</h5>
        </div>
    </c:if>
    <form method="post" action="VerifyCodeReg" id="customer_login" accept-charset="UTF-8"
          class="has-validation-callback"><input name="FormType" type="hidden" value="customer_login"><input
            name="utf8" type="hidden" value="true">

        <div class="form-signup clearfix">

            <label for="email-login">Mã xác minh<span class="required">*</span></label>
            <input autocomplete="off" placeholder="Nhập mã xác minh" type="text" id="email-login"
                   class="form-control" value="" name="code" required=""    >

            <div class="pull-xs-left text-center" style="margin-top: 15px;">
                <button class="btn btn-style btn-blues" type="submit" value="Xác nhận">Xác nhận</button>
            </div>
            <div class="clearfix"></div>

            <div class="text-login text-center">
                <p>
                    Quay lại <a href="login.jsp" title="Đăng ký">tại đây.</a>
                </p>
            </div>
        </div>
    </form>
</div>
<c:import url="footer.jsp"/>


</body>

</html>
