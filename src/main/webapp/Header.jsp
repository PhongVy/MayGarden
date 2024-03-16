<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <title>MayGarden</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="./assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/animate.css">

    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./assets/css/magnific-popup.css">

    <link rel="stylesheet" href="./assets/css/aos.css">

    <link rel="stylesheet" href="./assets/css/ionicons.min.css">

    <link rel="stylesheet" href="./assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./assets/css/jquery.timepicker.css">


    <link rel="stylesheet" href="./assets/css/flaticon.css">
    <link rel="stylesheet" href="./assets/css/icomoon.css">
    <link rel="stylesheet" href="./assets/css/style.css">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./assets_1/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="./assets_1/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="./assets_1/css/bootstrap.min.css" rel="stylesheet">


    <link href="./assets_1/css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<div class="py-1 bg-primary">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                        <span class="text">0363952512</span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                        <span class="text">Admin@gmail.com</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                        <span class="text">The store sells fresh vegetables.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp" style="font-size: 24px">MayGarden</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">

                <!-- Menu -->
                <li class="nav-item"><a href="Home" class="nav-link" style="font-size: 16px">Home</a></li>

                <li class="nav-item"><a href="Product" class="nav-link" style="font-size: 16px">Product</a></li>
                <li class="nav-item"><a href="About.jsp" class="nav-link" style="font-size: 16px">About us</a></li>
                <li class="nav-item"><a href="Contact.jsp" class="nav-link" style="font-size: 16px">Contact</a></li>

                <!-- Search -->
                <li class="d-flex me-0">
                    <button class="border-0  bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal" style="outline: none; cursor: pointer"><i class="fas fa-search" style=" color: black;"></i></button>
                </li>

                <!-- Cart -->
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item cta-colored"><a href="Login.jsp" class="nav-link" style=" margin-top: 3px"><span class="icon-shopping_cart" style="font-size: 16px;"></span>[0]</a></li>
                </c:if>
                <c:if test="${sessionScope.acc.isAdmin eq false}">
                    <li class="nav-item cta-colored"><a href="Cart" class="nav-link" style=" margin-top: 3px"><span class="icon-shopping_cart" style="font-size: 16px;"></span>[0]</a></li>
                </c:if>
                <!<!-- Accounts -->
                <li class="nav-item dropdown">

                    <a class="nav-link dropdown-toggle" style="margin-top: 3px" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon-account_circle" style="font-size: 16px"></span></a>
                        <c:if test="${sessionScope.acc == null}">
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="Login.jsp">Login</a>
                            <a class="dropdown-item" href="Register.jsp">Register</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin eq true}">
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="Admin.jsp">Manage</a>
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.acc != null && sessionScope.acc.isAdmin eq false}">
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="ProfileAccount">Profile</a>
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </c:if>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Modal Search Start -->
<form action="Search" method="post">
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Search products</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center">
                    <div class="input-group w-75 mx-auto d-flex">
                        <input name="txt" aria-label="Small" type="text" class="form-control p-3" placeholder="Search" aria-describedby="search-icon-1">
                        <button type="submit" id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- Modal Search End -->

<script src="./assets/js/jquery.min.js"></script>
<script src="./assets/js/jquery-migrate-3.0.1.min.js"></script>
<script src="./assets/js/popper.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/js/jquery.easing.1.3.js"></script>
<script src="./assets/js/jquery.waypoints.min.js"></script>
<script src="./assets/js/jquery.stellar.min.js"></script>
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/jquery.magnific-popup.min.js"></script>
<script src="./assets/js/aos.js"></script>
<script src="./assets/js/jquery.animateNumber.min.js"></script>
<script src="./assets/js/bootstrap-datepicker.js"></script>
<script src="./assets/js/scrollax.min.js"></script>
<script src="./assets/js/main.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="./assets_1/lib/easing/easing.min.js"></script>
<script src="./assets_1/lib/waypoints/waypoints.min.js"></script>
<script src="./assets_1/lib/lightbox/js/lightbox.min.js"></script>
<script src="./assets_1/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="./assets_1/js/main.js"></script>