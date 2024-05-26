<%@ page import="entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/5/2024
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://kit.fontawesome.com/1869620dcb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/payment.css">
    <title>Title</title>
    <script src="https://kit.fontawesome.com/1869620dcb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="assets/css/payment.css">
    <title>Title</title>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var inputs = document.querySelectorAll('.userInput');

            inputs.forEach(function (input) {
                input.addEventListener('focus', function () {
                    this.previousElementSibling.style.display = 'none';
                });

                input.addEventListener('blur', function () {
                    if (this.value.trim() === '') {
                        this.previousElementSibling.style.display = 'block';
                    }
                });

                // Check initial state on page load
                if (input.value.trim() !== '') {
                    input.previousElementSibling.style.display = 'none';
                }
            });
        });
    </script>
</head>
<body>
<c:set var="user" value="${sessionScope.auth}"/>
<c:set var="listP" value="${sessionScope.listP}"/>
<c:set var="mapP" value="${sessionScope.mapP}"/>
<c:set var="priceSum" value="${sessionScope.priceSum}"/>
<c:set var="numberOfProduct" value="${sessionScope.numberOfProduct}"/>
<jsp:useBean id="address" class="dao.DAOAddress"/>
<jsp:useBean id="userId" class="dao.DAOUser"/>
<div class="mainContent">
    <div class="mainInfo">
        <div class="mainInfo__content">
            <div class="mainInfo__logo">
                <a href="" class="logo wrapper"
                   title="Be Classy - Giày Da Nam, Giày Tây Nam Sang Tr?ng"> <img
                        class="center-block"
                        src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/logo.png?1697690581561"
                        alt="Be Classy - Giày Da Nam, Giày Tây Nam Sang Tr?ng">
                </a>
            </div>
            <div class="mainInfo__body">
                <div class="mainInfo__user">
                    <div class="mainInfo__Header ">
                        <h2 class="mainInfo__Header--tittle">
                            Thông tin nhận hàng
                        </h2>
                        <c:if test="${user==null}">
                            <a href="" class="mainInfo__Header--loginButton">
                                <i class="fa-solid fa-user"></i>
                                Đăng nhập
                            </a>
                        </c:if>
                    </div>
                    <div class="mainInfo__user__body">
                        <div class="mainInfo__body--label">
                            <label for="email" class="userLabel">
                                Email
                            </label>
                            <c:if test="${user!=null}">
                                <input id="email" name="email" type="email" class="userInput" value="${user.getEmail()}"
                                       disabled>
                            </c:if>
                            <c:if test="${user==null}">
                                <input id="email" name="email" type="email" class="userInput">
                            </c:if>
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="fullName" class="userLabel">
                                Họ và tên
                            </label>
                            <c:if test="${user!=null}">
                                <input id="fullName" name="fullName" type="text" class="userInput"
                                       value="${user.getFullName()}" disabled>
                            </c:if>
                            <c:if test="${user==null}">
                                <input id="fullName" name="fullName" type="text" class="userInput">
                            </c:if>

                        </div>
                        <div class="mainInfo__body--label">
                            <label for="phoneNumber" class="userLabel">
                                Số điện thoại
                            </label>
                            <c:if test="${user!=null}">
                                <input id="phoneNumber" name="phoneNumber" type="text" class="userInput"
                                       value="${user.getPhoneNumber()}" disabled>
                            </c:if>
                            <c:if test="${user==null}">
                                <input id="phoneNumber" name="phoneNumber" type="text" class="userInput">
                            </c:if>
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="address" class="userLabel">
                                Địa chỉ
                            </label>
                            <input id="address" name="address" type="text" class="userInput" value="${(address.getUserAddress(userId.getUserId(user.getEmail()))).getAddress()}">
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="city" class="userLabel">
                                Tỉnh/ thành phố
                            </label>
                            <input id="city" name="city" type="text" class="userInput"value="${(address.getUserAddress(userId.getUserId(user.getEmail()))).getCity()}">
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="district" class="userLabel">
                                Quận/ huyện
                            </label>
                            <input id="district" name="district" type="text" class="userInput"value="${(address.getUserAddress(userId.getUserId(user.getEmail()))).getDistrict()}">
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="Commune" class="userLabel">
                                Phường xã
                            </label>
                            <input id="Commune" name="Commune" type="text" class="userInput"value="${(address.getUserAddress(userId.getUserId(user.getEmail()))).getCommune()}">
                        </div>
                        <div class="mainInfo__body--label">
                            <label for="note" class="userLabel">
                                Ghi chú
                            </label>
                            <input id="note" name="note" type="text" class="userInput">
                        </div>
                    </div>
                </div>
                <div class="mainInfo__product">
                    <div class="mainInfo__Header">
                        <h2 class="mainInfo__Header--tittle">
                            Vận chuyển
                        </h2>
                    </div>
                    <div class="mainInfo__product__body">
                        <div class="mainInfo__body--label">
                            <div class="radio__wrapper">
                                <div class="radio__input">
                                    <input type="radio" class="input__radio" name="deliMethod" id="deliMethod" checked
                                           disabled>
                                </div>
                                <label class="userLabel" for="deliMethod">
                                    Giao hàng tận nơi
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="mainInfo__product__Header">
                        <h2 class="mainInfo__Header--tittle">
                            Thanh toán
                        </h2>
                    </div>
                    <div class="mainInfo__product__body">
                        <div class="mainInfo__body--label">
                            <div class="radio__wrapper">
                                <div class="radio__input">
                                    <input type="radio" class="input__radio" name="paymentMethod" id="paymentMethod"
                                           checked disabled>
                                </div>
                                <label class="userLabel" for="paymentMethod">
                                    Thanh toán khi giao hàng(COD)
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="mainSidebar">
        <div class="mainSidebar__header">
            <h2 class="sidebar__title">
                Đơn hàng(1 sản phẩm)
            </h2>
        </div>
        <div class="sidebar__content">
            <div class="sidebar__order-summary">
                <c:forEach var="i" items="${sessionScope.listPr}">
                    <div class="order-summary__section order-summary__section--product">
                        <table class="product-table" id="product-table">
                            <tbody>
                            <tr class="product">
                                <td class="product__image">
                                    <div class="product-thumbnail">
                                        <div class="product-thumbnail__wrapper" data-tg-static="">
                                            <img src="${i.getImgOfShoe()}"
                                                 alt="" class="product-thumbnail__image">
                                        </div>
                                        <span class="product-thumbnail__quantity">${mapP.get(i.nameOfShoe)}</span>
                                    </div>
                                </td>
                                <th class="product__description">
                                <span class="product__description__name">
                                    ${i.nameOfShoe}
                                </span>

                                </th>
                                <td class="product__price">
                                    ${i.priceOfShoe}
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </c:forEach>
                <div class="order-summary__section">
                    <div class="edit_checkout animate-floating-labels">
                        <div class="fieldset">
                            <div class="field ">
                                <div class="field__input-btn-wrapper">
                                    <div class="field__input-wrapper">
                                        <label for="reductionCode" class="field__label">Nhập mã giảm giá</label>
                                        <input name="reductionCode" id="reductionCode" type="text" class="field__input"
                                        >
                                    </div>
                                    <button class="field__input-btn btn spinner btn--disabled" type="button"
                                    >
                                        <span class="spinner-label">Áp dụng</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="order-summary__section">
                    <table class="total-line-table">
                        <tbody class="total-line-table__tbody">
                        <tr class="total-line total-line--subtotal">
                            <th class="total-line__name">
                                Tạm tính
                            </th>
                            <td class="total-line__price">${priceSum}₫</td>
                        </tr>
                        <tr class="total-line total-line--shipping-fee">
                            <th class="total-line__name">
                                Phí vận chuyển
                            </th>
                            <td class="total-line__price">
                                <span class="origin-price" data-bind="getTextShippingPriceOriginal()"></span>
                                <span data-bind="getTextShippingPriceFinal()"></span>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot class="total-line-table__footer">
                        <tr class="total-line payment-due">
                            <th class="total-line__name">
                                <span class="payment-due__label-total">
                                    Tổng cộng</span>
                            </th>
                            <td class="total-line__price">
                                <span class="payment-due__price" data-bind="getTextTotalPrice()">${priceSum}₫</span>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="order-summary__section back">
                    <button type="submit" class="btn btn-checkout spinner">
                        <span class="spinner-label">ĐẶT HÀNG</span>
                    </button>
                    <a href="/cart" class="previous-link">
                        <i class="previous-link__arrow">❮</i>
                        <span class="previous-link__content">Quay về giỏ hàng</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

