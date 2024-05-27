<%@ page import="java.util.Objects" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Admin</title>

    <!-- FONT AWRSOME -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
    />

    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
    />

    <!-- embed fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>

    <link
            href="https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap"
            rel="stylesheet"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
    />

    <link rel="stylesheet" href="assets/css/adminProduct.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>

<c:import url="header.jsp"/>
<div class=" admin_container">
    <div class="main-content">
        <div id="manage-product" class="content-wrapper">
            <header class="header-admin">
                <div class="header-title">Quản lý sản phẩm</div>
            </header>
            <div class="content-header">
                <button class="delete js-delete">
                    <i class="fa-solid fa-minus"></i>
                    Xóa
                </button>
                <button class="add js-add">
                    <i class="fa-solid fa-plus"></i>
                    Thêm
                </button>
                <form method="post" class="content-search" action="searchProductAdmin">
                    <c:set var="search" value="${requestScope.search}"/>
                    <input
                            type="text"
                            name="id"
                            placeholder="Tìm kiếm ..."
                            class="input-search"
                            value="${search}"
                    />
                    <i class="icon fa-solid fa-magnifying-glass"></i>
                </form>
            </div>
            <div class="content">
                <table>
                    <thead>
                    <tr>
                        <th>Link ảnh giày</th>
                        <th>Loại giày</th>
                        <th>Tên giày</th>
                        <th>Giá giày</th>
                        <th>Mã giày</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="o" items="${requestScope.productList}">
                        <tr>
                            <td><img src="${o.getImgOfShoe()}" style="width: 50px;"></td>
                            <td>${o.getTypeOfShoe()}</td>
                            <td>${o.getNameOfShoe()}</td>
                            <td>${o.getPriceOfShoe()}</td>
                            <td>${o.getIdOfShoe()}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="add-modal js-add-modal ">
    <div class="add-container">
        <div class="add-close js-add-close">
            <i class="fa-solid fa-xmark"></i>
        </div>

        <header class="add-header">
            Thêm sản phẩm
        </header>
        <form method="post" action="adminAddProduct" class="add-body" enctype="multipart/form-data">
            <label for="imgLink">Ảnh giày<span class="required">*</span></label>
            <input  type="file" class="form-control"
                    value="" name="imgLink" id="imgLink" required="">

            <label for="typeShoe">Loại giày<span class="required">*</span></label>
            <select name="typeShoe" class="form-control" id="typeShoe" style="width: 150px">
                <option value="LOAFER">LOAFER</option>
                <option value="OXFORD">OXFORD</option>
                <option value="DERBY">DERBY</option>
                <option value="BOOTS">BOOTS</option>
                <option value="SNEAKER">SNEAKER</option>
                <option value="SANDAL">SANDAL</option>
            </select>
            <%--            <input placeholder="Nhập loại giày" type="text" class="form-control"--%>
            <%--                   value="" name="typeShoe" id="typeShoe" required="">--%>


            <label for="nameShoe">Tên giày<span class="required">*</span></label>
            <input placeholder="Nhập tên giày" type="text"
                   class="form-control" value="" name="nameShoe"
                   id="nameShoe" required="">

            <label for="priceShoe">Giá giày<span class="required">*</span></label>
            <input placeholder="Nhập giá giày" type="text"
                   class="form-control" value="" name="priceShoe"
                   id="priceShoe" required="">

            <%--            <label for="idShoe">Mã giày<span class="required">*</span></label>--%>
            <%--            <input placeholder="Mã giày duoc nhap tu dong" type="text"--%>
            <%--                   class="form-control" value="" name="idShoe" id="idShoe">--%>

            <div class="btn">
                <button type="submit" value="Thêm sản phẩm" class="add-button js-add-button">Thêm sản phẩm
                </button>
            </div>
        </form>
    </div>
</div>

<c:set var="success" value="${requestScope.success}"/>
<c:if test="${success =='OK'}">
    <div class="noti-add js-noti-add">
        <div class="noti-add-container">
            <a href="successConfirm" class="noti-add-close js-noti-add-close">
                <i class="fa-solid fa-xmark"></i>
            </a>
            <header class="noti-add-header">
                Thông báo
            </header>
            <div class="noti-body">
                <p>
                    Đã thêm sản phẩm thành công!
                </p>
            </div>
            <div class="noti-btn">
                <a href="successConfirm">
                    <button type="submit" value="ok" class="noti-add-button">
                        OK
                    </button>
                </a>
            </div>
        </div>
    </div>
</c:if>
<%--nếu lỗi--%>
<c:if test="${success =='NO'}">
    <div class="noti-add js-noti-add">
        <div class="noti-add-container">
            <a href="successConfirm" class="noti-add-close js-noti-add-close">
                <i class="fa-solid fa-xmark"></i>
            </a>
            <header class="noti-add-header">
                Thông báo
            </header>
            <div class="noti-body">
                <p>
                    Tệp tải lên không phải là hình ảnh!
                </p>
            </div>
            <div class="noti-btn">
                <a href="successConfirm">
                    <button type="submit" value="ok" class="noti-add-button">
                        OK
                    </button>
                </a>
            </div>
        </div>
    </div>
</c:if>
<div class="delete-modal  js-delete-modal">
    <div class="delete-container">
        <div class="delete-close js-delete-close js-delete-button-cancel">
            <i class="fa-solid fa-xmark"></i>
        </div>
        <header class="delete-header">
            Xóa Sản phẩm
        </header>
        <form method="post" action="adminDeleteProduct" class="delete-body">
            <label for="idShoeDelete">Mã sản phẩm<span class="required">*</span></label>
            <input placeholder="Nhập mã sản phẩm" type="text" class="form-control"
                   value="" name="idShoe" id="idShoeDelete" required="">
            <div class="delete-button">

                <button type="submit" value="Hủy" class="delete-btn js-delete-button-cancel">Hủy
                </button>
                <button type="submit" value="Xóa" class=" delete-btn delete-button-delete">Xóa
                </button>
            </div>
        </form>

    </div>
</div>
<c:set var="deleteSuccess" value="${requestScope.deleteSuccess}"/>
<c:if test="${deleteSuccess != null}">
    <div class="noti-add js-noti-add">
        <div class="noti-add-container">
            <a href="deleteSuccess" class="noti-add-close js-noti-add-close">
                <i class="fa-solid fa-xmark"></i>
            </a>
            <header class="noti-add-header">
                Thông báo
            </header>
            <div class="noti-body">
                <p>
                    Đã xoa sản phẩm thành công!
                </p>
            </div>
            <div class="noti-btn">
                <a href="deleteSuccess">
                    <button type="submit" value="ok" class="noti-add-button">
                        OK
                    </button>
                </a>
            </div>
        </div>
    </div>
</c:if>
<script>
    // them san pham.....................---------------------------
    const addBtn = document.querySelector('.js-add')

    const addModal = document.querySelector('.js-add-modal')
    const cancelAddModal = document.querySelector('.js-add-close')

    function showAddModal() {
        addModal.classList.add('open')
    }

    function hideAddModal() {
        addModal.classList.remove('open')
    }

    addBtn.addEventListener('click', showAddModal)
    cancelAddModal.addEventListener('click', hideAddModal)

    // xóa sản phẩm........................-----------------------------------
    const deleteBtn = document.querySelector('.js-delete')
    const cancelDeleteModals = document.querySelectorAll('.js-delete-button-cancel')

    const deleteModal = document.querySelector('.js-delete-modal')

    function showDeleteModal() {
        deleteModal.classList.add('open')
    }

    function hideDeleteModal() {
        deleteModal.classList.remove('open')
    }

    deleteBtn.addEventListener('click', showDeleteModal)
    for (const cancelDeleteModal of cancelDeleteModals)
    {
        cancelDeleteModal.addEventListener('click', hideDeleteModal)
    }



</script>
</body>
</html>