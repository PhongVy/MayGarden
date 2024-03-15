<%-- 
    Document   : Cart
    Created on : Feb 20, 2024, 4:52:38 PM
    Author     : PC
--%>

<%@page import="com.models.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.models.Cart"%>
<%@page import="com.daos.ProductDAOV"%>
<%@page import="com.models.Accounts"%>
<%@page import="com.daos.CartDAOT"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body class="goto-here">
    <jsp:include page="Header.jsp" />

    <div class="hero-wrap hero-bread" style="background-image: url('./assets/images/bg_1.jpg');">
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Cart</span></p>
                    <h1 class="mb-0 bread">My Cart</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <!-- Cart items go here -->
        <c:forEach var="i" items="${mycartlist}">
            <div class="col-12">
                <div class="card mb-3">
                    <form action="Cart" method="post" class="update-form">
                        <div class="row g-0">
                            <div class="col-md-3">
                                <img src="/MayGarden/<c:out value="${i.product.productImage}" />" alt="product" class="m-3 rounded-3" style="max-width: 160px; max-height: 160px;">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body row" style="font-size: 0.8em;"> 
                                    <div class="col-lg-3">
                                        <h5 class="card-title" style="font-size: 2em;"><c:out value="${i.product.productName}" /></h5> <!-- Giữ kích thước tiêu đề tương đối lớn hơn một chút -->
                                        <p class="card-text  fs-6 mt-3"><span class="bg-danger text-white p-1 rounded-3">Giá gốc:</span> <fmt:formatNumber pattern="###,###" value="${i.product.productPrice}"/> vnđ</p>
                                    </div>

                                    <div class="col-lg-3 fs-5">
                                        <label for="quantity">Quantity:</label>
                                        <div class="input-group" style="width: 70px ">
                                            <input type="number" class="form-control text-center rounded-3" id="quantity" min="1" name="quantity" value="${i.quantity}">
                                        </div>
                                    </div>

                                    <div class="col-lg-3 fs-5">
                                        <label>Total:</label>
                                        <br/>
                                        <fmt:formatNumber pattern="###,###" value="${i.quantity * i.product.productPrice}"/> vnđ
                                        <input type="hidden" name="productID" value="${i.productId}">
                                        <input type="hidden" name="cartID" value="${i.cartId}">
                                        <input type="hidden" name="userID" value="${i.userId}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <button class="btn btn-secondary ms-3 mt-5 mb-2" name="deletebtn" value="delete" onclick="return confirm('Do you want to delete it?')">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                                <button class="btn btn-secondary ms-3 mb-5 mt-2" name="editCartbtn" value="edit">  <i class="fas fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:forEach>
        <c:if test="${empty mycartlist}">
            <div class="container" align="center">
                <h2>Giỏ hàng trống</h2>
                <p class="fs-4">Truy cập <a href="/MayGarden/index.jsp">Trang chủ</a> để mua hàng.</p>
            </div>
        </c:if>
    </div>

    <div class="row">
        <!-- Cart items go here -->
        <div class="col-12">
            <div class="card mb-3">
                <div class="row g-0">
                </div>
            </div>
        </div>
    </div>
    <c:if test="${not empty mycartlist}">
        <div class="row">
            <div class="col-12 text-end">
                <h4>Total: <fmt:formatNumber pattern="###,###" value="${totalall}"/> vnđ </h4>
            </div>
        </div>
        <div class="row">
            <form action="CheckOutController" method="post">
                <!-- Các trường và nút "Checkout" nằm trong form này -->
                <!-- ... (mã HTML của trang cart.jsp) ... -->
                <div class="row">
                    <input type="hidden" name="userID" value="${sessionScope.userIn4.id}">
                    <input type="hidden" name="total" value="${totalall}">
                    <div class="col-12 text-end mb-5">
                        <button class="btn btn-primary" name="buy" value="buy">Checkout</button>
                    </div>
                </div>
                <!-- ... (mã HTML của trang cart.jsp) ... -->
            </form>
        </div>
    </c:if>

    <section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
        <div class="container py-4">
            <div class="row d-flex justify-content-center py-5">
                <div class="col-md-6">
                    <h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
                    <span>Get e-mail updates about our latest shops and special offers</span>
                </div>
                <div class="col-md-6 d-flex align-items-center">
                    <form action="#" class="subscribe-form">
                        <div class="form-group d-flex">
                            <input type="text" class="form-control" placeholder="Enter email address">
                            <input type="submit" value="Subscribe" class="submit px-3">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="Footer.jsp" />

    <script src="path_to_jquery_library"></script>
    <script>
                                    $(document).ready(function () {
                                        var quantitiy = 0;
                                        $('.quantity-right-plus').click(function (e) {
                                            // Stop acting like a button
                                            e.preventDefault();
                                            // Get the field name
                                            var quantity = parseInt($('#quantity').val());
                                            // If is not undefined
                                            $('#quantity').val(quantity + 1);
                                        });
                                        $('.quantity-left-minus').click(function (e) {
                                            // Stop acting like a button
                                            e.preventDefault();
                                            // Get the field name
                                            var quantity = parseInt($('#quantity').val());
                                            // If is not undefined
                                            // Increment
                                            if (quantity > 0) {
                                                $('#quantity').val(quantity - 1);
                                            }
                                        });
                                    });
    </script>

</body>