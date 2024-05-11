<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<header class="header">
    <c:set value="${sessionScope.numberOfProduct}" var="i"/>
    <div class="container">
        <!-- Start top-header -->
        <div class="row top-header">

            <div class="left-header col-1">

                <div class="text">
                    <span>HOTLINE:</span> <span>0942 827 271</span>
                </div>

            </div>

            <div class="center-header col-1">
                <a href="index.jsp" class="logo wrapper"
                   title="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng"> <img
                        class="center-block"
                        src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/logo.png?1697690581561"
                        alt="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng">
                </a>
            </div>

            <div class="right-header col-1">

                <ul class="user-helper">

                    <li class="userHelper-nav-item userHelper-nav-account"><a href="" title="Tài khoản">TÀI
                        KHOẢN</a>
                        <c:set var ="auth" value="${sessionScope.auth}"/>
                        <c:choose>
                            <c:when test="${empty auth}">
                                <!-- Hiển thị form đăng nhập và đăng ký nếu chưa đăng nhập -->
                                <ul class="sub-nav-account">
                                    <li><a href="login.jsp" title="Đăng nhập">ĐĂNG NHẬP</a></li>
                                    <li><a href="register.jsp" title="Đăng ký">ĐĂNG KÝ</a></li>
                                </ul>
                            </c:when>
                            <c:otherwise>
                                <!-- Hiển thị thông tin người dùng nếu đã đăng nhập -->
                                <ul class="sub-nav-account">
                                    <li>
                                        <c:choose>
                                            <c:when test="${auth.getRole() == 1}">
                                                <a href="adminProductList">Xin chào, ${auth.lastName}</a>
                                            </c:when>
                                            <c:when test="${auth.getRole() == 0}">
                                                <a href="profile.jsp">Xin chào, ${auth.lastName}</a>
                                            </c:when>
                                        </c:choose>
                                    </li>
                                    <li>
                                        <a href="signOut" class="sign_out">Đăng xuất</a>
                                    </li>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                    </li>

                    <li class="userHelper-nav-item userHelper-nav-cart mini-cart">

                        <a href="ShoppingCart.jsp">GIỎ HÀNG <i class="ti-shopping-cart"></i>
                            <c:choose>
                                <c:when test="${not empty i}">
                                <span
                                        class="count-item-pr">${i}</span>
                                </c:when>
                                <c:otherwise>
                                    <span
                                            class="count-item-pr">0</span>
                                </c:otherwise>
                            </c:choose>
                        </a>

                    </li>

                    <li class="userHelper-nav-item userHelper-nav-search"><a
                            href=""> <i class="ti-search"></i>
                    </a></li>

                </ul>

            </div>


        </div>
    </div>
    <!-- End top header -->
    <div class="container bottom-header">
        <div class="row">
            <div class="header-bottom-nav">
                <ul id="nav" class="nav">
                    <li class="nav-item has-child"><a href="" class="nav-link"
                                                      title="DRESS SHOES">DRESS SHOES <i class="ti-angle-down"></i>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="OXFORD">OXFORD</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="LOAFER">LOAFER</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link " title="DERBY">DERBY</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="BOOTS">BOOTS</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="SNEAKER">SNEAKER</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="SANDAL">SANDAL</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-child"><a href="" class="nav-link"
                                                      title="ACCESSORIES">ACCESSORIES <i class="ti-angle-down"></i>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="BELTS">BELTS</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="BAGS - WALLET">BAGS - WALLET</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link " title="DRESS SOCKS">DRESS SOCKS</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="CARE PRODUCTS">CARE PRODUCTS</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="GIFT CARD">GIFT CARD</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-child"><a href="" class="nav-link"
                                                      title="COLLECTION">COLLECTION <i class="ti-angle-down"></i>
                    </a>
                        <ul class="dropdown-menu">
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="PREMIUM LINE">PREMIUM LINE</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="WEDDING SHOES">WEDDING SHOES</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link " title="THE NEW GEN">THE NEW GEN</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="TIMELESS">TIMELESS</a>
                            </li>
                            <li class="nav-item-lv2">
                                <a href="" class="nav-link" title="GROSSS COLLECTION">GROSSS COLLECTION</a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item"><a href="" class="nav-link"
                                            title="STORES">STORES</a></li>

                    <li class="nav-item"><a href="" class="nav-link"
                                            title="STORES">SERVICES</a></li>

                </ul>
            </div>
        </div>
    </div>
</header>
