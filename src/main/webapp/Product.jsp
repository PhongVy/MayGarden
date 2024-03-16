<%-- 
    Document   : Product
    Created on : Feb 20, 2024, 4:21:30 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800...lay=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./asset/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="./asset/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="./asset/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./asset/css/style.css" rel="stylesheet">
    <body class="goto-here">
        <jsp:include page="Header.jsp" />
        <div class="hero-wrap hero-bread" style="background-image: url('./assets/images/bg_1.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="Home">Home</a></span> <span>Products</span></p>
                        <h1 class="mb-0 bread">Products</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid fruite py-5">
            <div class="container py-5">
                <h1 class="mb-4">MAYGARDEN</h1>
                <div class="row g-4">
                    <div class="col-lg-12">
                        <div class="row g-4">

                            <div class="col-6"></div>
                        </div>
                        <div class="row g-4">
                            <div class="col-lg-3">
                                <div class="row g-4">
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <h4>Categories</h4>
                                            <ul class="list-unstyled fruite-categorie">

                                                <c:forEach items="${listC}" var="cat">
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="CategoryY?ccid=${cat.getCatId()}"><i class="fas fa-apple-alt me-2"></i>${cat.getCatName()}</a>

                                                        </div>
                                                    </li>
                                                </c:forEach>

                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="row g-4 justify-content-center">

                                    <c:forEach items="${listP}" var="pro">
                                        <div class="col-md-6 col-lg-6 col-xl-4">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <a href="DetailY?pid=${pro.getProductId()}" class="nav-link"><img src="assets/images/${pro.getProductImage()}" class="img-fluid w-100 rounded-top" alt=""></a>
                                                </div>
                                                <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Fruit</div>
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <a href="DetailY?pid=${pro.getProductId()}"><h4>${pro.getProductName()}</h4></a>
                                                    <p>${pro.getDescription()}</p>
                                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                                        <p class="text-dark fs-5 fw-bold mb-0">${pro.getPrice()} $/kg</p>

                                                        <a href="AddToCart?id=${pro.getProductId()}" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>


                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>

                                    <div class="col-12">
                                        <div class="pagination d-flex justify-content-center mt-5">
                                            <a href="#" class="rounded">&laquo;</a>
                                            <a href="#" class="active rounded">1</a>
                                            <a href="#" class="rounded">2</a>
                                            <a href="#" class="rounded">3</a>
                                            <a href="#" class="rounded">4</a>
                                            <a href="#" class="rounded">5</a>
                                            <a href="#" class="rounded">6</a>
                                            <a href="#" class="rounded">&raquo;</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <jsp:include page="Footer.jsp" />

    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./asset/lib/easing/easing.min.js"></script>
    <script src="./asset/lib/waypoints/waypoints.min.js"></script>
    <script src="./asset/lib/lightbox/js/lightbox.min.js"></script>
    <script src="./asset/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</html>
