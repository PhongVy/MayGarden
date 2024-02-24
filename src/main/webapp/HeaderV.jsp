<%-- 
    Document   : HeaderV
    Created on : Feb 24, 2024, 8:23:20 PM
    Author     : PC
--%>

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
</head>

<div class="py-1 bg-primary">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                        <span class="text">+ 1235 2355 98</span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                        <span class="text">youremail@email.com</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                        <span class="text">3-5 Business days delivery &amp; Free Returns</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<c:if test="${sessionScope.acc == null}">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html" style="font-size: 24px">MayGarden</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link" style="font-size: 16px">Home</a></li>

                    <li class="nav-item"><a href="about.html" class="nav-link" style="font-size: 16px">Product</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link" style="font-size: 16px">About us</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link" style="font-size: 16px">Contact</a></li>
                    <li class="d-flex m-3 me-0">
                        <button class="border-0  bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal" style="outline: none; cursor: pointer"><i class="fas fa-search" style="width: 20px; color: black;"></i></button>
                    </li>
                    <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link" style=" margin-top: 3px"><span class="icon-shopping_cart" style="font-size: 16px;"></span>[0]</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="margin-top: 3px" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon-account_circle" style="font-size: 16px"></span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="Login.jsp">Login</a>
                            <a class="dropdown-item" href="Register.jsp">Register</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</c:if>
<c:if test="${sessionScope.acc != null && sessionScope.acc.isAdmin eq false}">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html" style="font-size: 24px">MayGarden</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link" style="font-size: 16px">Home</a></li>

                    <li class="nav-item"><a href="about.html" class="nav-link" style="font-size: 16px">Product</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link" style="font-size: 16px">About us</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link" style="font-size: 16px">Contact</a></li>
                    <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link" style=" margin-top: 3px"><span class="icon-shopping_cart" style="font-size: 16px;"></span>[0]</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="margin-top: 3px" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon-account_circle" style="font-size: 16px"></span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="Profile.jsp">Profile</a>
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</c:if>
<c:if test="${sessionScope.acc.isAdmin eq true}">
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html" style="font-size: 24px">MayGarden</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link" style="font-size: 16px">Home</a></li>

                    <li class="nav-item"><a href="about.html" class="nav-link" style="font-size: 16px">Product</a></li>
                    <li class="nav-item"><a href="blog.html" class="nav-link" style="font-size: 16px">About us</a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link" style="font-size: 16px">Contact</a></li>
                    <li class="nav-item cta cta-colored"><a href="cart.html" class="nav-link" style=" margin-top: 3px"><span class="icon-shopping_cart" style="font-size: 16px;"></span>[0]</a></li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="margin-top: 3px" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon-account_circle" style="font-size: 16px"></span></a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item" href="Admin.jsp">Manage</a>
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</c:if>
<!-- Modal Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-fullscreen">
        <div class="modal-content rounded-0">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Search products</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body d-flex align-items-center">
                <div class="input-group w-75 mx-auto d-flex">
                    <input type="search" class="form-control p-3" placeholder="Search" aria-describedby="search-icon-1">
                    <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                </div>
            </div>
        </div>
    </div>
</div>
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