<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="assets/css/product.css">
    <link rel="stylesheet" href="assets/icon/themify-icons/themify-icons.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">
    <title>Title</title>
</head>
<body>
<c:import url="header.jsp"/>
<c:set var="i" value="${requestScope.pr}"></c:set>
<div class="bread-crumb margin-bottom-10">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <li class="home"><a itemprop="url" href="/" title="Trang chủ"><span
                            itemprop="title">Trang chủ</span></a><span><i class="ti-angle-right"></i></span></li>


                    <li><a itemprop="url" href="/new-arrivals" title="NEW ARRIVALS"><span
                            itemprop="title">NEW ARRIVALS</span></a><span><i class="ti-angle-right"></i></span></li>

                    <li><strong><span itemprop="title">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</span></strong>
                    <li>

                </ul>
            </div>
        </div>
    </div>
</div>
<div class="product margin-top-30" itemscope="" itemtype="http://schema.org/Product">
    <meta itemprop="image"
          content="https://bizweb.dktcdn.net/thumb/grande/100/292/624/products/dscf4007.jpg?v=1703236083113">
    <meta itemprop="description"
          content="SIR BUTTERFLY&nbsp;LOAFER - LF16Sự linh hoạt cùng khả năng ứng biến khi kết hợp cùng nhiều&nbsp;trang phục, Sir Butterfly&nbsp;Loafer chinh phục các Quý ông với thiết kế mở cùng điểm nhấn dây chuông vô cùng&nbsp;độc đáo.Tôn vính sự&nbsp;thoải mái và tối giản, Sir Butterfly&nbsp;Loafer sở hữu gam ...">
    <meta itemprop="name" content="SIR BUTTERFLY LOAFER - LF16">
    <div class="container">
        <div class="row details-product padding-bottom-10">
            <div class="col-xs-12 col-sm-6 col-lg-6 col-md-6">
                <div class="relative product-image-block">

                    <div class="slider-big-video clearfix margin-bottom-10">
                        <div class="slider slider-for slick-initialized slick-slider">

                            <div aria-live="polite" class="slick-list draggable" style="height: 565px;">
                                <div class="slick-track" style="opacity: 1; width: 3955px;" role="listbox"><a
                                        href="${i.imgOfShoe}"
                                        title="Click để xem" class="slick-slide" data-slick-index="0" aria-hidden="true"
                                        style="width: 565px; position: relative; left: 0px; top: 0px; z-index: 998; opacity: 1; transition: opacity 500ms ease 0s;"
                                        tabindex="-1" role="option" aria-describedby="slick-slide10"
                                        rel="lightbox-demo">
                                    <img src="${i.imgOfShoe}"
                                         alt="SIR BUTTERFLY LOAFER - LF16" class="img-responsive center-block">
                                </a></div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-lg-6 col-md-6 details-pro">
                <div class="product-top clearfix">
                    <h1 class="title-head">${i.nameOfShoe} ${i.typeOfShoe} - ${i.idOfShoe}</h1>

                    <div class="sku-product hidden">
                        SKU: <span class="variant-sku" itemprop="sku" content="PVN5441">PVN5441</span>
                        <span class="hidden" itemprop="brand" itemscope="" itemtype="https://schema.org/brand">Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng</span>
                    </div>

                </div>
                <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                    <div class="price-box clearfix">
						
						<span class="special-price">
							<span class="price product-price">${i.priceOfShoe}₫</span>
							<meta itemprop="price" content="${i.priceOfShoe}">
							<meta itemprop="priceCurrency" content="VND">
						</span> <!-- Giá Khuyến mại -->

                        <div class="inventory_quantity hidden">
                            <span class="stock-brand-title">Tình trạng:</span></div>
                    </div>
                    <div class="form-product margin-top-15">
                        <form id="add-to-cart-form" action="addProduct?id=${i.idOfShoe}" method="post"
                              class="clearfix form-inline has-validation-callback">

                            <div class="select-swatch">


                                <div id="variant-swatch-0" class="swatch clearfix" data-option="option1"
                                     data-option-index="0">
                                    <div class="header">Kích thước:</div>
                                    <div class="select-swap">
                                        <div data-value="38" class="n-sd swatch-element 38 ">
                                            <input data-value="38" class="variant-0" id="swatch-0-38" type="radio"
                                                   name="option1" value="38" checked="">

                                            <label for="swatch-0-38">
                                                38
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="38">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="38">
                                            </label>

                                        </div>

                                        <div data-value="39" class="n-sd swatch-element 39 ">
                                            <input data-value="39" class="variant-0" id="swatch-0-39" type="radio"
                                                   name="option1" value="39">

                                            <label for="swatch-0-39">
                                                39
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="39">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="39">
                                            </label>

                                        </div>

                                        <div data-value="40" class="n-sd swatch-element 40 ">
                                            <input data-value="40" class="variant-0" id="swatch-0-40" type="radio"
                                                   name="option1" value="40">

                                            <label for="swatch-0-40">
                                                40
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="40">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="40">
                                            </label>

                                        </div>


                                        <div data-value="41" class="n-sd swatch-element 41 ">
                                            <input data-value="41" class="variant-0" id="swatch-0-41" type="radio"
                                                   name="option1" value="41">

                                            <label for="swatch-0-41">
                                                41
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="41">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="41">
                                            </label>

                                        </div>

                                        <div data-value="42" class="n-sd swatch-element 42 ">
                                            <input data-value="42" class="variant-0" id="swatch-0-42" type="radio"
                                                   name="option1" value="42">

                                            <label for="swatch-0-42">
                                                42
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="42">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="42">
                                            </label>

                                        </div>


                                        <div data-value="43" class="n-sd swatch-element 43 ">
                                            <input data-value="43" class="variant-0" id="swatch-0-43" type="radio"
                                                   name="option1" value="43">

                                            <label for="swatch-0-43">
                                                43
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="43">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="43">
                                            </label>

                                        </div>

                                        <div data-value="44" class="n-sd swatch-element 44 ">
                                            <input data-value="44" class="variant-0" id="swatch-0-44" type="radio"
                                                   name="option1" value="44">

                                            <label for="swatch-0-44">
                                                44
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="44">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="44">
                                            </label>

                                        </div>

                                        <div data-value="45" class="n-sd swatch-element 45 ">
                                            <input data-value="45" class="variant-0" id="swatch-0-45" type="radio"
                                                   name="option1" value="45">

                                            <label for="swatch-0-45">
                                                45
                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="45">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="45">
                                            </label>

                                        </div>


                                    </div>
                                </div>

                                <div id="variant-swatch-1" class="swatch clearfix" data-option="option2"
                                     data-option-index="1">
                                    <div class="header">Màu sắc:</div>
                                    <div class="select-swap">
                                        <div data-value="black" class="n-sd swatch-element color black ">
                                            <input data-value="black" class="variant-1" id="swatch-1-black" type="radio"
                                                   name="option2" value="BLACK" checked="">


                                            <label class="black has-thumb" for="swatch-1-black">

                                                <img src="//bizweb.dktcdn.net/thumb/icon/100/292/624/products/z4998445351935-9ab8eb0c4012cfaa818bce4663eac22d.jpg?v=1703236087927"
                                                     alt="BLACK" class="ant-swatch">
                                                <span>BLACK</span>

                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="BLACK">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="BLACK">
                                            </label>

                                        </div>
                                        <div data-value="brown" class="n-sd swatch-element color brown ">
                                            <input data-value="brown" class="variant-1" id="swatch-1-brown" type="radio"
                                                   name="option2" value="BROWN">


                                            <label class="brown has-thumb" for="swatch-1-brown">

                                                <img src="//bizweb.dktcdn.net/thumb/icon/100/292/624/products/z4998444166764-7a29bfdc64bfd92f5add361e9cefa0a6.jpg?v=1703236089347"
                                                     alt="BROWN" class="ant-swatch">
                                                <span>BROWN</span>

                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="BROWN">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="BROWN">
                                            </label>

                                        </div>
                                        <div data-value="l-brown" class="n-sd swatch-element color l-brown ">
                                            <input data-value="l-brown" class="variant-1" id="swatch-1-l-brown"
                                                   type="radio" name="option2" value="L-BROWN">


                                            <label class="l-brown has-thumb" for="swatch-1-l-brown">

                                                <img src="//bizweb.dktcdn.net/thumb/icon/100/292/624/products/dscf4007.jpg?v=1703236083113"
                                                     alt="L-BROWN" class="ant-swatch">
                                                <span>L-BROWN</span>

                                                <img class="crossed-out"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/soldout.png?1703512112695"
                                                     alt="L-BROWN">
                                                <img class="img-check"
                                                     src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/select-pro.png?1703512112695"
                                                     alt="L-BROWN">
                                            </label>

                                        </div>
                                    </div>
                                </div>


                            </div>

                            <div class="box-variant clearfix  hidden ">

                                <div class="selector-wrapper" style="text-align: left; margin-bottom: 15px;"><label
                                        for="product-selectors-option-0">Kích thước</label><select
                                        class="single-option-selector" data-option="option1"
                                        id="product-selectors-option-0">
                                    <option value="38">38</option>
                                    <option value="39">39</option>
                                    <option value="40">40</option>
                                    <option value="41">41</option>
                                    <option value="42">42</option>
                                    <option value="43">43</option>
                                    <option value="44">44</option>
                                    <option value="45">45</option>
                                </select></div>
                                <div class="selector-wrapper" style="text-align: left; margin-bottom: 15px;"><label
                                        for="product-selectors-option-1">Màu sắc</label><select
                                        class="single-option-selector" data-option="option2"
                                        id="product-selectors-option-1">
                                    <option value="BLACK">BLACK</option>
                                    <option value="BROWN">BROWN</option>
                                    <option value="L-BROWN">L-BROWN</option>
                                </select></div>
                                <select id="product-selectors" class="form-control form-control-lg" name="variantId"
                                        style="display:none">

                                    <option selected="selected" value="104618757">38 / BLACK - 1.400.000₫</option>

                                    <option value="104618758">38 / BROWN - 1.400.000₫</option>

                                    <option value="104618760">38 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618761">39 / BLACK - 1.400.000₫</option>

                                    <option value="104618762">39 / BROWN - 1.400.000₫</option>

                                    <option value="104618764">39 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618766">40 / BROWN - 1.400.000₫</option>

                                    <option value="104618767">40 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618768">41 / BLACK - 1.400.000₫</option>

                                    <option value="104618769">41 / BROWN - 1.400.000₫</option>

                                    <option value="104618770">41 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618773">42 / BLACK - 1.400.000₫</option>

                                    <option value="104618775">42 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618776">43 / BLACK - 1.400.000₫</option>

                                    <option value="104618777">43 / BROWN - 1.400.000₫</option>

                                    <option value="104618779">43 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618780">44 / BLACK - 1.400.000₫</option>

                                    <option value="104618781">44 / BROWN - 1.400.000₫</option>

                                    <option value="104618782">44 / L-BROWN - 1.400.000₫</option>

                                    <option value="104618783">45 / BLACK - 1.400.000₫</option>

                                    <option value="104618784">45 / BROWN - 1.400.000₫</option>

                                    <option value="104618786">45 / L-BROWN - 1.400.000₫</option>

                                    <option value="104871712">40 / BLACK - 1.400.000₫</option>

                                    <option value="104871713">42 / BROWN - 1.400.000₫</option>

                                </select>

                            </div>
                            <div class="clearfix form-group">
                                <div class="qty-ant clearfix custom-btn-number">
                                    <label>Số lượng:</label>
                                    <div class="custom custom-btn-numbers form-control">
                                        <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty) &amp; qty > 1 ) result.value--;return false;"
                                                class="btn-minus btn-cts" type="button">–
                                        </button>
                                        <input type="text" class="qty input-text" id="qty" name="quantity" size="4"
                                               value="1" maxlength="3">
                                        <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"
                                                class="btn-plus btn-cts" type="button">+
                                        </button>
                                    </div>
                                </div>
                                <div class="btn-mua">

                                    <button type="submit" data-role="addtocart"
                                            class="btn btn-lg btn-gray btn-cart btn_buy add_to_cart"><span
                                            class="txt-main">Mua ngay với giá <b
                                            class="product-price">${i.priceOfShoe}₫</b></span><span class="text-add">Đặt mua giao hàng tận nơi</span>
                                    </button>

                                </div>
                            </div>

                            <div class="abps-productdetail ab-hide" ab-data-productid="33760352"></div>
                        </form>
                        <div class="md-discount-box-inform" id="md-discount-box-inform"></div>
                    </div>
                    <div class="inventory-store">
                        <span class="numberStore">Có 1 cửa hàng còn sản phẩm này</span>
                        <div id="stock-box">
                            <div class="stock"><i class="fa fa-map-marker"></i><span
                                    class="dist">Chi nhánh Hà Nội: </span><span class="street">261 Phố Huế, Quận Hai Bà Trưng, Hà Nội</span>
                            </div>
                        </div>
                    </div>
                    <div class="hotline_product hidden">
                        Gọi đặt mua: <a href="tel:0898515689" title="0898515689">0898 515 689</a> <span>.</span>
                    </div>

                    <div class="module_service_details clearfix">


                        <div class="item_service clearfix">
                            <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_1.svg?1703512112695"
                                 data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_1.svg?1703512112695"
                                 alt="Kiểm tra hàng và thanh toán khi nhận hàng">
                            <h4><a href="/thanhtoan" class="evo-fix-img"
                                   title="Kiểm tra hàng và thanh toán khi <strong>nhận hàng</strong>">Kiểm tra hàng và
                                thanh toán khi <strong>nhận hàng</strong></a></h4>
                        </div>
                        <div class="item_service clearfix">
                            <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_2.svg?1703512112695"
                                 data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_2.svg?1703512112695"
                                 alt="Giao hàng  toàn quốc ">
                            <h4><a href="/hinh-thuc-van-chuyen" class="evo-fix-img"
                                   title="Giao hàng  <strong>toàn quốc</strong> ">Giao hàng <strong>toàn quốc</strong>
                            </a></h4>
                        </div>
                        <div class="item_service clearfix">
                            <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_3.svg?1703512112695"
                                 data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_3.svg?1703512112695"
                                 alt="Sản phẩm Giày Tây: Bảo hành 3 năm ">
                            <h4><a href="/baohanh" class="evo-fix-img"
                                   title="Sản phẩm Giày Tây: Bảo hành <strong>3 năm</strong> ">Sản phẩm Giày Tây: Bảo
                                hành <strong>3 năm</strong> </a></h4>
                        </div>
                        <div class="item_service clearfix">
                            <img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_4.svg?1703512112695"
                                 data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/policy_images_4.svg?1703512112695"
                                 alt="Đổi hàng trong vòng 33 ngày">
                            <h4><a href="/doihang" class="evo-fix-img"
                                   title="<strong>Đổi hàng</strong> trong vòng 33 ngày"><strong>Đổi hàng</strong> trong
                                vòng 33 ngày</a></h4>
                        </div>


                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-lg-12 col-md-12 margin-top-20">
                <div class="product-tab e-tabs padding-bottom-10 evo-tab-product-mobile">
                    <ul class="tabs tabs-title clearfix hidden-xs">
                        <li class="tab-link current" data-tab="tab-1">Mô TẢ SẢN PHẨM</li>

                        <li class="tab-link" data-tab="tab-2">After-Sales Service</li>


                        <li class="tab-link" data-tab="tab-4">HƯỚNG DẪN CHỌN SIZE</li>
                    </ul>

                    <div id="tab-1" class="tab-content active current">
                        <a class="evo-product-tabs-header hidden-lg hidden-md hidden-sm" href="javascript:void(0);">
                            <span>Mô TẢ SẢN PHẨM</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="5.658" height="9.903"
                                 viewBox="0 0 5.658 9.903">
                                <path d="M5429 1331.94l4.451 4.451-4.451 4.452" stroke="#1c1c1c" stroke-linecap="round"
                                      fill="none" transform="translate(-5428.5 -1331.44)"></path>
                            </svg>
                        </a>
                        <div class="rte"><h1 style="text-align: center;"><strong>${i.nameOfShoe} ${i.typeOfShoe}</strong></h1>
                            <p style="text-align: center;">Sự linh hoạt cùng khả năng ứng biến khi kết hợp cùng nhiều&nbsp;trang
                                phục, <strong>${i.nameOfShoe} ${i.typeOfShoe}</strong> chinh phục các Quý ông với thiết kế mở
                                cùng điểm nhấn dây chuông vô cùng&nbsp;độc đáo.</p>
                            <p style="text-align: center;">Tôn vính sự&nbsp;thoải mái và tối giản, <strong>${i.nameOfShoe} ${i.typeOfShoe}</strong>
                                sở hữu gam màu trung tính giúp&nbsp;dễ dàng phối đồ. Đây&nbsp;sẽ là lựa chọn hàng đầu
                                dành cho bạn khi có nhu cầu xuống phố hoặc đi làm.</p>

                        </div>
                    </div>
                    <div id="tab-2" class="tab-content">
                        <a class="evo-product-tabs-header hidden-lg hidden-md hidden-sm" href="javascript:void(0);">
                            <span>After-Sales Service</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="5.658" height="9.903"
                                 viewBox="0 0 5.658 9.903">
                                <path d="M5429 1331.94l4.451 4.451-4.451 4.452" stroke="#1c1c1c" stroke-linecap="round"
                                      fill="none" transform="translate(-5428.5 -1331.44)"></path>
                            </svg>
                        </a>
                        <div class="rte">
                            <p><img data-thumb="original" original-height="5377" original-width="1440"
                                    src="//bizweb.dktcdn.net/100/292/624/files/desktop-9-d4a50b3a-1d63-44c7-967c-babe88841d06.jpg?v=1684296767506">
                            </p>
                        </div>
                    </div>
                    <div id="tab-4" class="tab-content">
                        <a class="evo-product-tabs-header hidden-lg hidden-md hidden-sm" href="javascript:void(0);">
                            <span>HƯỚNG DẪN CHỌN SIZE</span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="5.658" height="9.903"
                                 viewBox="0 0 5.658 9.903">
                                <path d="M5429 1331.94l4.451 4.451-4.451 4.452" stroke="#1c1c1c" stroke-linecap="round"
                                      fill="none" transform="translate(-5428.5 -1331.44)"></path>
                            </svg>
                        </a>
                        <div class="rte">
                            <h1 dir="ltr"><strong><span style="font-size:16px;">Bàn chân của các Quý Ông Việt có bề ngang to hơn so với các nước châu Âu, vì thế Size giày Tây cũng có sự khác biệt. Đồng thời, sự vừa vặn của một đôi giày chính là điểm then chốt làm tăng độ tự tin của bản thân.</span></strong>
                            </h1>
                            <p dir="ltr">Để các Quý Ông chọn được đôi giày Tây vừa vặn và ưng ý nhất. Be Classy gửi đến
                                các Quý Ông cách đo chân và chọn Size chuẩn cho mình!</p>
                            <p dir="ltr">Chuẩn bị:</p>
                            <p dir="ltr">- 1 tờ giấy A4 hoặc A3 (tùy theo size chân của mình)</p>
                            <p dir="ltr">- 1 cây viết</p>
                            <p dir="ltr">- 1 thước đo</p>
                            <h2 dir="ltr"><strong><span style="font-size:16px;">Bước 1: Đặt tờ giấy lên sàn nhà, sau đó đặt chân của bạn lên</span></strong>
                            </h2>
                            <p dir="ltr"><img data-thumb="original" original-height="667" original-width="500"
                                              src="//bizweb.dktcdn.net/100/292/624/files/img-2895-2-de66ba4b-a015-40a0-902d-a604c3e4755e.jpg?v=1611669626736">
                            </p>
                            <h2 dir="ltr"><strong><span style="font-size:16px;">Bước 2: Dùng bút đánh dấu 1 điểm ở đầu ngón chân cái (hoặc ngón chân có chiều dài dài nhất bàn chân) và đánh dấu 1 điểm ở gót chân</span></strong>
                            </h2>
                            <p dir="ltr"><img data-thumb="original" original-height="667" original-width="500"
                                              src="//bizweb.dktcdn.net/100/292/624/files/img-2888-1-410dfd65-d4cb-48b5-ad82-a9e30137cf34.jpg?v=1611669704931">
                            </p>
                            <h2 dir="ltr"><strong><span style="font-size:16px;">Bước 3: Dùng thước đo khoảng cách giữa 2 điểm vừa đánh dấu</span></strong>
                            </h2>
                            <p dir="ltr"><img data-thumb="original" original-height="667" original-width="500"
                                              src="//bizweb.dktcdn.net/100/292/624/files/img-2890-3e3c4ac3-050f-4b13-bdcc-8b97d5a9b7af.jpg?v=1611669725313">
                            </p>
                            <h2 dir="ltr"><strong><span style="font-size:16px;">Bước 4: So sánh với bảng Size Chart của Be Classy</span></strong>
                            </h2>
                            <p dir="ltr"><img data-thumb="original" original-height="665" original-width="500"
                                              src="//bizweb.dktcdn.net/100/292/624/files/size-chart-fb-1.jpg?v=1628690693783">
                            </p>
                            <p dir="ltr">*Thông thường các Size giày Tây của Be Classy sẽ tương ứng với Size giày thể
                                thao của Nike, Adidas...</p>
                            <p dir="ltr">&nbsp;</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row margin-top-20 margin-bottom-10">
            <div class="col-lg-12">
                <div class="related-product" style="height: 500px">
                    <div class="home-title text-center">
                        <h2><a href="/new-arrivals" title="Sản phẩm liên quan">Sản phẩm <strong>liên quan</strong></a>
                        </h2>
                    </div>
                    <div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag" data-dot="false"
                         data-nav="true" data-lg-items="4" data-md-items="4" data-sm-items="3" data-xs-items="2"
                         data-xss-items="2" data-margin="10" data-loop="false" data-autoplay="false">
                        <div class="owl-stage-outer">
                            <div class="owl-stage"
                                 style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1740px;">
                                <div class="owl-item active" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">

                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/of07" title="TONKIN CAPTOE OXFORD - OF07">
                                                <div class="product-card__image">
                                                    <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf8517.jpg?v=1677143270843"
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf8517.jpg?v=1677143270843"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="TONKIN CAPTOE OXFORD - OF07">

                                                </div>
                                            </a>

                                            <h4 class="product-single__series">OXFORD</h4>
                                            <h3 class="product-card__title">TONKIN CAPTOE OXFORD - OF07</h3>
                                            <div class="product-price">

                                                <strong class="strong-sale">1.240.000₫</strong>

                                            <!-- End Fundiin -->
                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-19452570">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="37225746">
                                                <a class="button ajax_addtocart" href="/of07" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                    </div>
                                </div>
                                <div class="owl-item active" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">


                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/of25"
                                               title="SEMI-BROGUES CHISEL TOE OXFORD - OF25">
                                                <div class="product-card__image">
                                                    <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf8768.jpg?v=1683468573270"
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf8768.jpg?v=1683468573270"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="SEMI-BROGUES CHISEL TOE OXFORD - OF25">

                                                </div>
                                            </a>

                                            <h4 class="product-single__series">OXFORD</h4>
                                            <h3 class="product-card__title">SEMI-BROGUES CHISEL TOE OXFORD - OF25</h3>
                                            <div class="product-price">


                                                <strong class="strong-sale">1.400.000₫</strong>


                                            <!-- End Fundiin -->
                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-21353122">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="44287567">
                                                <a class="button ajax_addtocart" href="/of25" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                                </div>
                                <div class="owl-item active" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">

                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/lf05" title="BOLD STEP LOAFER - LF05">
                                                <div class="product-card__image">
                                                    <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf5291.jpg?v=1691055171747"
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf5291.jpg?v=1691055171747"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="BOLD STEP LOAFER - LF05">


                                                </div>
                                            </a>

                                            <h4 class="product-single__series">LOAFER</h4>
                                            <h3 class="product-card__title">BOLD STEP LOAFER - LF05</h3>
                                            <div class="product-price">


                                                <strong class="strong-sale">1.480.000₫</strong>

                                                <span>1.850.000₫</span></div>


                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-31293085">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="90263081">
                                                <a class="button ajax_addtocart" href="/lf05" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="owl-item active" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">


                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/ms04" title="CLASSY DOUBLE MONKSTRAP - MS04">
                                                <div class="product-card__image">
                                                    <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9763.jpg?v=1693983094060"
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9763.jpg?v=1693983094060"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="CLASSY DOUBLE MONKSTRAP - MS04">


                                                </div>
                                            </a>


                                            <h4 class="product-single__series">LOAFER - MONKSTRAP</h4>
                                            <h3 class="product-card__title">CLASSY DOUBLE MONKSTRAP - MS04</h3>
                                            <div class="product-price">


                                                <strong class="strong-sale">1.400.000₫</strong>

                                                <span>1.750.000₫</span></div>


                                            <!-- End Fundiin -->
                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-21330389">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="44217232">
                                                <a class="button ajax_addtocart" href="/ms04" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">


                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/db14" title="THE COUNTRYMAN DERBY - DB14">
                                                <div class="product-card__image">
                                                    <img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf6066-cc05829b-b8eb-4467-b67c-33243963c834.jpg?v=1658989436540"
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf6066-cc05829b-b8eb-4467-b67c-33243963c834.jpg?v=1658989436540"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="THE COUNTRYMAN DERBY - DB14">


                                                </div>
                                            </a>
                                            <div class="swatch clearfix" data-option-index="1">

                                                <div data-value="BLACK" class="swatch-element color black available"
                                                     data-image="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf6066-cc05829b-b8eb-4467-b67c-33243963c834.jpg?v=1658989436540">
                                                    <label style="background-color: #000000; background-image: url(//bizweb.dktcdn.net/thumb/small/100/292/624/products/dscf6066-cc05829b-b8eb-4467-b67c-33243963c834.jpg?v=1658989436540);background-size: 35px 35px;"
                                                           data-toggle="tooltip" title="BLACK"></label>
                                                </div>
                                            </div>

                                            <
                                            <h4 class="product-single__series">DERBY</h4>
                                            <h3 class="product-card__title">THE COUNTRYMAN DERBY - DB14</h3>
                                            <div class="product-price">


                                                <strong class="strong-sale">1.480.000₫</strong>


                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-16326140">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="29008703">
                                                <a class="button ajax_addtocart" href="/db14" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 280px; margin-right: 10px;">
                                    <div class="product-card">


                                        <div class="product-card__inner">
                                            <a class="product-urls" href="/bo14" title="CLASSY CHELSEA BOOTS - BO14">
                                                <div class="product-card__image lazyload">
                                                    <img src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf5195.jpg?v=1688998021720"
                                                         class="product-card-image-front img-responsive center-block"
                                                         alt="CLASSY CHELSEA BOOTS - BO14">

                                                    <img src="data:image/gif;base64,R0lGODlhAQABAAAAACwAAAAAAQABAAA="
                                                         data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf5197.jpg?v=1688998021720"
                                                         class="product-card-image-back img-responsive center-block"
                                                         alt="CLASSY CHELSEA BOOTS - BO14">

                                                </div>
                                            </a>

                                            <h4 class="product-single__series">BOOTS</h4>
                                            <h3 class="product-card__title">CLASSY CHELSEA BOOTS - BO14</h3>
                                            <div class="product-price">


                                                <strong class="strong-sale">1.480.000₫</strong>



                                        </div>
                                        <form action="/cart/add" method="post" enctype="multipart/form-data"
                                              class="hidden-md variants form-nut-grid form-ajaxtocart has-validation-callback"
                                              data-id="product-actions-16669760">
                                            <div class="product-card__actions">


                                                <input class="hidden" type="hidden" name="variantId" value="29990307">
                                                <a class="button ajax_addtocart" href="/bo14" title="Tùy chọn">Tùy
                                                    chọn</a>


                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="owl-nav">
                            <div class="owl-prev disabled"><i class="fa fa-angle-left" aria-hidden="true"></i></div>
                            <div class="owl-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                        </div>
                        <div class="owl-dots disabled"></div>
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
