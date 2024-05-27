<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/profile.css">
    <link rel="stylesheet"
          href="assets/icon/themify-icons/themify-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap"
            rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang khách hàng | Be Classy</title>
</head>
<body>

<c:import url="header.jsp"/>
<!-- Map web -->
<div class="map">
    <ul class="sub-map">
        <li><a href="index.jsp" title="Trang chủ" class="home">Trang chủ > </a></li>
        <li>
            <p class="cur-position">Trang khách hàng</p>
        </li>
    </ul>
</div>

<section class="signup account-page margin-bottom-20 margin-top-30">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-lg-12 left-container">
                        <div class="page-title">
                            <h1 class="title-head widget-title">Thông tin tài khoản</h1>
                        </div>
                        <c:set var ="auth" value="${sessionScope.auth}"/>
                        <p class="say-hi"> <i >Xin chào, ${auth.fullName}</i></p>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 col-md-push-9 col-lg-3 col-lg-push-9 right-container">
                        <div class="block block-account margin-bottom-20">
                            <div class="block-title"><h2 class="widget-title">Thông tin khách hàng</h2></div>
                            <div class="divider-full-1"></div>
                            <div class="block-content form-signup block-edit-padding">
                                <p><i class="fa fa-map-marker"></i>
                                </p>

                                <div class="margin-top-20"><a href="ChangePass.jsp" class="btn btn-blues btn-full" title="Sổ địa chỉ"><i class="fa fa-book"></i> Đổi mật khẩu</a></div>
                            </div>

                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-9 col-md-pull-3 col-lg-9 col-lg-pull-3">
                        <div class="form-signup">
                            <h2 class="widget-title">Đơn hàng gần nhất</h2>
                        </div>

                        <div class="my-account">
                            <div class="dashboard">
                                <div class="recent-orders collections-container">
                                    <div class="table-order table-responsive">
                                        <table class="table table-cart" id="my-orders-table">
                                            <thead class="thead-default">
                                            <tr>
                                                <th>#</th>
                                                <th>Ngày</th>
                                                <th>Chuyển đến</th>
                                                <th>Địa chỉ</th>
                                                <th>Giá trị</th>
                                                <th>TT Thanh toán</th>
                                                <th>&nbsp;</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            <tr>
                                                <td colspan="7"><p>Không có đơn hàng nào.</p></td></tr>

                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<c:import url="footer.jsp"/>
</body>
</html>