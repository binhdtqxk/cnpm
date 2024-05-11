<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet"
          href="assets/icon/themify-icons/themify-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap"
            rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BeClassy</title>
</head>
<body>
<jsp:useBean id="listP" class="dao.DAOProduct" scope="session">

</jsp:useBean>
<c:import url="header.jsp"/>

<div class="section-1">
    <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/slider_1.jpg?1701093253480" alt="anh"
         class="burning-deal">
</div>
<div class="section-2">
    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="section_product section_product_best_sell clearfix">

                    <div class="section-head clearfix text-center">

                        <h2 class="title_blog">

                            <a href="" title="NEW ARRIVALS">

                                <strong>NEW ARRIVALS</strong>

                            </a>

                        </h2>

                    </div>

                    <div class="product-blocks clearfix">

                        <div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

                            <div class="owl-stage" style="width: 100%;">

                                <c:forEach var="i" items="${listP.firstFourPr}">
                                    <div class="owl-item active" style="width: 25%; padding-right: 10px;">

                                        <div class="product-card">
                                            <div class="product-card__inner">
                                                <form action=""></form>
                                                <a class="product-urls" href="clickOnPr?id=${i.idOfShoe}" title="SIR CLASSIC OXFORD - OF34">

                                                    <div class="product-card__image">

                                                        <img src="${i.imgOfShoe}"
                                                             data-lazyload="${i.imgOfShoe}"
                                                             class="product-card-image-front img-responsive center-block"
                                                             alt="${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}">

                                                    </div>

                                                </a>

                                                <h4 class="product-single__series">${i.typeOfShoe}</h4>

                                                <h3 class="product-card__title">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</h3>

                                                <div class="product-price">

                                                    <strong>${i.priceOfShoe}₫</strong>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>


                            <a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS"
                               class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
<div class="section-3">
    <div class="container section_blogs section_blogs_2">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <h2 class="text-center"><a href="/chinh-sach-1" title="Be Classy"><strong>Be Classy</strong></a></h2>
                <div class="clearfix row">

                    <div class="col-md-3 col-sm-6 col-xs-12 news-items">
                        <a href="/madeinvietnam" title="SẢN XUẤT TẠI VIỆT NAM" class="clearfix">
                            <div class="evo-article-image">

                                <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930"
                                     data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930"
                                     alt="SẢN XUẤT TẠI VIỆT NAM" class="img-responsive center-block">

                            </div>
                            <h3 class="line-clamp">SẢN XUẤT TẠI VIỆT NAM</h3>
                            <p class="">

                                Từ những nghệ nhân đóng giày dày dạn kinh nghiệm với&nbsp;mong muốn mang đến cho&nbsp;Quý
                                Ông đôi giày mang Thương Hiệu Việt&nbsp;chất lượng tốt nhất.

                            </p>
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 news-items">
                        <a href="/phom-giay-danh-rieng-cho-quy-ong-viet" title="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT"
                           class="clearfix">
                            <div class="evo-article-image">

                                <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937"
                                     data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937"
                                     alt="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT" class="img-responsive center-block">

                            </div>
                            <h3 class="line-clamp">LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT</h3>
                            <p class="">

                                Với châm ngôn “Giày Tây dành cho Ta” - Be Classy thiết kế Phom (Last)&nbsp;giày phù hợp
                                với phom chân chuẩn của Quý Ông Việt.

                            </p>
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 news-items">
                        <a href="/da-bo-that" title="VẬT TƯ NHẬP KHẨU" class="clearfix">
                            <div class="evo-article-image">

                                <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127"
                                     data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127"
                                     alt="VẬT TƯ NHẬP KHẨU" class="img-responsive center-block">

                            </div>
                            <h3 class="line-clamp">VẬT TƯ NHẬP KHẨU</h3>
                            <p class="">

                                Giày được làm từ những mảng da bò Ý,&nbsp;chọn lọc kỹ càng để đảm bảo thành phẩm là một
                                đôi giày chất lượng và lên màu giày chuẩn nhất.

                            </p>
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 news-items">
                        <a href="/baohanh3nam" title="BẢO HÀNH 3 NĂM" class="clearfix">
                            <div class="evo-article-image">

                                <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633"
                                     data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633"
                                     alt="BẢO HÀNH 3 NĂM" class="img-responsive center-block">

                            </div>
                            <h3 class="line-clamp">BẢO HÀNH 3 NĂM</h3>
                            <p class="">

                                Chính sách Bảo Hành - Bảo Dưỡng miễn phí trong&nbsp;3 Năm, nhằm hỗ trợ quý&nbsp;khách
                                hàng tốt nhất trong quá trình sử dụng giày.

                            </p>
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<div class="section-4">
    <div class="section_banner">
        <div class="container" >
            <div class="row">

                <div class="col-sm-4 col-xs-12 evo-margin">
                    <div class="evo-banner">
                        <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_1.jpg?1701093253480"
                             data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_1.jpg?1701093253480"
                             alt="DRESS SHOES" class="img-responsive center-block">
                        <div class="evo-banner-content">
                            <h3>DRESS SHOES</h3>
                            <a href="/oxfords" title="Xem thêm">Xem thêm</a>
                        </div>
                    </div>
                </div>


                <div class="col-sm-4 col-xs-12 evo-margin">
                    <div class="evo-banner">
                        <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_2.jpg?1701093253480"
                             data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_2.jpg?1701093253480"
                             alt="BELT" class="img-responsive center-block">
                        <div class="evo-banner-content">
                            <h3>BELT</h3>
                            <a href="/belt-1" title="Xem thêm">Xem thêm</a>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 col-xs-12 evo-margin">
                    <div class="evo-banner">
                        <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_3.jpg?1701093253480"
                             data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_3.jpg?1701093253480"
                             alt="WALLET" class="img-responsive center-block">
                        <div class="evo-banner-content">
                            <h3>WALLET</h3>
                            <a href="/wallet" title="Xem thêm">Xem thêm</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="section-5">
    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="section_product section_product_best_sell clearfix">

                    <div class="section-head clearfix text-center">

                        <h2 class="title_blog">

                            <a href="" title="OXFORD">

                                <strong>OXFORD</strong>

                            </a>

                        </h2>

                    </div>

                    <div class="product-blocks clearfix">

                        <div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

                            <div class="owl-stage" style="width: 100%;">

                                <c:forEach var="i" items="${listP.firstFourOxford}">
                                    <div class="owl-item active" style="width: 25%; padding-right: 10px;">

                                        <div class="product-card">
                                                <div class="product-card__inner">
                                                    <a class="product-urls" href="clickOnPr?id=${i.idOfShoe}" title="SIR CLASSIC OXFORD - OF34">

                                                        <div class="product-card__image">

                                                            <img src="${i.imgOfShoe}"
                                                                 data-lazyload="${i.imgOfShoe}"
                                                                 class="product-card-image-front img-responsive center-block"
                                                                 alt="${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}">

                                                        </div>

                                                    </a>

                                                    <h4 class="product-single__series">${i.typeOfShoe}</h4>

                                                    <h3 class="product-card__title">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</h3>

                                                    <div class="product-price">

                                                        <strong>${i.priceOfShoe}₫</strong>

                                                    </div>
                                                </div>

                                        </div>

                                    </div>
                                </c:forEach>


                            </div>

                            <a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS"
                               class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</div>
<div class="section-6">
    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="section_product section_product_best_sell clearfix">

                    <div class="section-head clearfix text-center">

                        <h2 class="title_blog">

                            <a href="" title="LOAFER">

                                <strong>LOAFER</strong>

                            </a>

                        </h2>

                    </div>

                    <div class="product-blocks clearfix">

                        <div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

                            <div class="owl-stage" style="width: 100%;">

                                <c:forEach var="i" items="${listP.firstFourLoafer}">
                                    <div class="owl-item active" style="width: 25%; padding-right: 10px;">

                                        <div class="product-card">
                                            <div class="product-card__inner">
                                                <a class="product-urls" href="clickOnPr?id=${i.idOfShoe}" title="SIR CLASSIC OXFORD - OF34">

                                                    <div class="product-card__image">

                                                        <img src="${i.imgOfShoe}"
                                                             data-lazyload="${i.imgOfShoe}"
                                                             class="product-card-image-front img-responsive center-block"
                                                             alt="${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}">

                                                    </div>

                                                </a>

                                                <h4 class="product-single__series">${i.typeOfShoe}</h4>

                                                <h3 class="product-card__title">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</h3>

                                                <div class="product-price">

                                                    <strong>${i.priceOfShoe}₫</strong>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>
                            <a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS"
                               class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</div>
<div class="section-7">
    <div class="container">

        <div class="row">

            <div class="col-md-12">

                <div class="section_product section_product_best_sell clearfix">

                    <div class="section-head clearfix text-center">

                        <h2 class="title_blog">

                            <a href="" title="DERBY">

                                <strong>DERBY</strong>

                            </a>

                        </h2>

                    </div>

                    <div class="product-blocks clearfix">

                        <div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

                            <div class="owl-stage" style="width: 100%;">

                                <c:forEach var="i" items="${listP.firstFourDerby}">
                                    <div class="owl-item active" style="width: 25%; padding-right: 10px;">

                                        <div class="product-card">
                                            <div class="product-card__inner">
                                                <a class="product-urls" href="clickOnPr?id=${i.idOfShoe}" title="SIR CLASSIC OXFORD - OF34">

                                                    <div class="product-card__image">

                                                        <img src="${i.imgOfShoe}"
                                                             data-lazyload="${i.imgOfShoe}"
                                                             class="product-card-image-front img-responsive center-block"
                                                             alt="${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}">

                                                    </div>

                                                </a>

                                                <h4 class="product-single__series">${i.typeOfShoe}</h4>

                                                <h3 class="product-card__title">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</h3>

                                                <div class="product-price">

                                                    <strong>${i.priceOfShoe}₫</strong>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>

                            <a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS"
                               class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>
</div>
    <c:import url="footer.jsp"/>

</div>
</body>
</html>