<%-- 
    Document   : Cart
    Created on : Feb 20, 2024, 4:52:38 PM
    Author     : PC
--%>

<%@page import="java.sql.Connection"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.daos.ProductDAOV"%>
<%@page import="java.util.List"%>
<%@page import="com.models.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body class="goto-here">
    <jsp:include page="Header.jsp" />

    <div class="hero-wrap hero-bread" style="background-image: url('./assets/images/bg_1.jpg');">
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="Home">Home</a></span> <span>Cart</span></p>
                    <h1 class="mb-0 bread">My Cart</h1>
                </div>
            </div>
        </div>
    </div>

    <section class="ftco-section ftco-cart">
        <div class="container">
            <div class="row">
                <div class="col-md-12 ftco-animate">
                    <div class="cart-list">
                        <table class="table">
                            <thead class="thead-primary">
                                <tr class="text-center">
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                    <th>Product name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="product" items="${cartProducts}">
                                    <tr class="text-center">
                                        <td class="product-remove"><a href="DeleteCart?id=${product.getProductId()}"><span class="ion-ios-close"></span></a></td>
                                        <td class="image-prod"><img class="img" src="assets/images/${product.getProductImage()}" alt=""></td>
                                        <td class="product-name"><h3>${product.getProductName()}</h3></td>
                                        <td class="price">$${product.getPrice()}</td>
                                        <td class="quantity">
                                            <div class="input-group mb-3">
                                                <a style="width: 50px; padding-top: 16px; background: #ccc; color: #000" onclick="totalClick(-1)" href="QuantityUpdate?action=dec&id=${product.getProductId()}" class="btn">-</a>
                                                <span id='totalClicks' name="quantity" class="quantity form-control" style="padding-top: 16px"><p>${product.getQuantity()}</p></span>
                                                <a style="width: 50px; padding-top: 16px; background: #ccc; color: #000" onclick="totalClick(1)" href="QuantityUpdate?action=inc&id=${product.getProductId()}" class="btn">+</a>
                                            </div>

                                        </td>
                                        <td class="total">$${product.getTotalPrice()}</td>
                                    </tr><!-- END TR-->
                                </c:forEach>


                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row justify-content-end">
                <div class="col-lg-4 mt-5 cart-wrap ftco-animate">
                    <div class="cart-total mb-3">
                        <h3>Cart Totals</h3>
                        <p class="d-flex total-price">
                            <span>Total</span>
                            <span>$${(total>0)?total:0}</span>
                        </p>
                    </div>
                    <p><a href="checkout.html" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                </div>
            </div>
        </div>
    </section>

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


                // Increment

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
function totalClick(Click) {
            const totalClicks = document.getElementById('totalClicks');
            let currentValue = parseInt(totalClicks.innerText);

            // Kiểm tra nếu currentValue không phải là một số hợp lệ
            if (isNaN(currentValue)) {
                currentValue = 0; // Gán giá trị mặc định là 0 nếu không phải là một số hợp lệ
            }

            const sumvalue = currentValue + Click;
            console.log(sumvalue);
            totalClicks.innerText = sumvalue >= 0 ? sumvalue : 0; // Kiểm tra nếu sumvalue âm, gán bằng 0

        }
        
    </script>

</body>
