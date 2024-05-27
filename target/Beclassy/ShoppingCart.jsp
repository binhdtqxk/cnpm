<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/css/ShoppingCart.css">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
</head>
<body>
<c:import url="header.jsp"/>
<c:set var="listP" value="${sessionScope.listP}"/>
<c:set var="mapP" value="${sessionScope.mapP}"/>
<c:set var="priceSum" value="${sessionScope.priceSum}"/>
<c:set var="numberOfProduct" value="${sessionScope.numberOfProduct}"/>
<div class="map">
    <ul class="sub-map">
        <li><a href="index.jsp" title="Trang chủ" class="home">Trang chủ > </a></li>
        <li>
            <p class="cur-position">Giỏ hàng</p>
        </li>
    </ul>
</div>
<div class="container white collections-container margin-bottom-20 margin-top-30">
    <div class="white-background">
        <div class="row">
            <div class="col-md-12">
                <div class="shopping-cart">
                    <div class="visible-md visible-lg">
                        <div class="shopping-cart-table">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="lbl-shopping-cart lbl-shopping-cart-gio-hang">Giỏ hàng <span>(<span
                                            class="count_item_pr">${numberOfProduct}</span> sản phẩm)</span></h1>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-main cart_desktop_page cart-page">
                                    <form id="shopping-cart" action="/cart" method="post" novalidate=""
                                          class="has-validation-callback">
                                        <div class="cart page_cart cart_des_page hidden-xs-down">
                                            <div class="col-xs-9 cart-col-1">
                                                <div class="cart-tbody">
                                                    <c:forEach var="i" items="${sessionScope.listPr}">
                                                        <div class="row shopping-cart-item productid-102678026"
                                                             style="display: inline-flex; width: 100%;">
                                                            <div class="col-xs-3 img-thumnail-custom"><p class="image"><a
                                                                    href=""
                                                                    title="${i.nameOfShoe}"
                                                                    target="_blank"><img class="img-responsive"
                                                                                         src="${i.imgOfShoe}"
                                                                                         alt="${i.nameOfShoe}"></a>
                                                            </p></div>
                                                            <div class="col-right col-xs-9">
                                                                <div class="box-info-product"><p class="name"><a
                                                                        href=""
                                                                        title="${i.nameOfShoe}"
                                                                        target="_blank">${i.nameOfShoe}</a></p>
                                                                    <p class="seller-by hidden">39 / BROWN</p>
                                                                    <p class="action"><a href="DeleteOnCart?name=${i.nameOfShoe}"
                                                                                         class="btn btn-link btn-item-delete remove-item-cart"
                                                                                         data-id="102678026"
                                                                                         title="Xóa">Xóa</a></p></div>
                                                                <div class="box-price"><p class="price pricechange">
                                                                        ${i.priceOfShoe}₫</p></div>
                                                                <div class="quantity-block">
                                                                    <div class="input-group bootstrap-touchspin">
                                                                        <div class="input-group-btn"><input
                                                                                class="variantID" type="hidden"
                                                                                name="variantId" value="102678026">
                                                                            <button
                                                                                    class="increase_pop items-count btn-plus btn btn-default bootstrap-touchspin-up"
                                                                                    type="button">+
                                                                            </button>
                                                                            <input type="text"

                                                                                   maxlength="12" min="1" disabled=""
                                                                                   class="form-control quantity-r2 quantity js-quantity-product input-text number-sidebar input_pop input_pop qtyItem102678026"
                                                                                   id="qtyItem102678026" name="Lines"
                                                                                   size="4" value="${mapP.get(i.nameOfShoe)}">
                                                                            <button
                                                                                    class="reduced_pop items-count btn-minus btn btn-default bootstrap-touchspin-down"
                                                                                    type="button">–
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                            <div class="col-xs-3 cart-col-2 cart-collaterals cart_submit"
                                                 style="display: inline-block">
                                                <div id="right-affix">
                                                    <div class="each-row">
                                                        <div class="box-style fee"><p class="list-info-price"><span>Tạm tính: </span><strong
                                                                class="totals_price price _text-right text_color_right1">${priceSum}₫</strong>
                                                        </p></div>
                                                        <div class="box-style fee">
                                                            <div class="total2 clearfix"><span class="text-label">Thành tiền: </span>
                                                                <div class="amount"><p><strong class="totals_price">${priceSum}₫</strong>
                                                                </p></div>
                                                            </div>
                                                        </div>
                                                        <button class="button btn btn-large btn-block btn-danger btn-checkout evo-button"
                                                                title="Thanh toán ngay" type="button"
                                                                style="background-color: black"
                                                        >Thanh toán
                                                            ngay
                                                        </button>
                                                        <button class="button btn-proceed-checkout btn btn-large btn-block btn-danger btn-checkouts"
                                                                title="Tiếp tục mua hàng" type="button"
                                                        ><a href="index.jsp" >Tiếp
                                                            tục mua hàng</a>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
</body>
</html>
