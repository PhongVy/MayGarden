<%-- 
    Document   : index
    Created on : Feb 20, 2024, 3:49:44 PM
    Author     : PC
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

    <body class="goto-here">

        <jsp:include page="Header.jsp" />
        <section id="home-section" class="hero">
            <div class="home-slider owl-carousel">
                <div class="slider-item" style="background-image: url(./assets/images/bg_1.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                            <div class="col-md-12 ftco-animate text-center">
                                <h1 class="mb-2">Fruit and vegetable stores</h1>
                                <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image: url(./assets/images/bg_2.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                            <div class="col-sm-12 ftco-animate text-center">
                                <h1 class="mb-2">100% Fresh &amp; Organic Foods</h1>
                                <h2 class="subheading mb-4">We deliver organic vegetables &amp; fruits</h2>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row no-gutters ftco-services">
                    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services mb-md-0 mb-4">
                            <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
                                <span class="flaticon-shipped"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Free Shipping</h3>
                                <span>Within 10km</span>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services mb-md-0 mb-4">
                            <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
                                <span class="flaticon-diet"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Always Fresh</h3>
                                <span>Product well package</span>
                            </div>
                        </div>    
                    </div>
                    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services mb-md-0 mb-4">
                            <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
                                <span class="flaticon-award"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Superior Quality</h3>
                                <span>Quality Products</span>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services mb-md-0 mb-4">
                            <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
                                <span class="flaticon-customer-service"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Support</h3>
                                <span>24/7 Support</span>
                            </div>
                        </div>      
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-category ftco-no-pt">
            <div class="container">
                <div class="row">
                    <div class="">
                        <div class="">
                            <div class="order-md-last align-items-stretch d-flex" style="margin-bottom: 25px">
                                <div class="category-wrap-2 ftco-animate img align-self-stretch d-flex">
                                    <div class="text text-center" style="margin-top: 100px;">
                                        <h1>Vegetables</h1>
                                        <h3>Product Categories</h3>
                                    </div>
                                </div>
                            </div>
                            <div id="owl-demo" class="owl-carousel owl-theme" style="">
                                <c:forEach var="Categories" items="${listC}">
                                    <div class="category-wrap ftco-animate img mb-4 d-flex align-items-end item" style="background-image: url(./assets/images/category-1.jpg);">
                                        <div class="text px-3 py-1">
                                            <h2 class="mb-0"><a href="Category?CatId=${Categories.getCatId()}">${Categories.getCatName()}</a></h2>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-3 pb-3">
                    <div class="col-md-12 heading-section text-center ftco-animate">
                        <span class="subheading">Featured Products</span>
                        <h2 class="mb-4">Best Seller</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
                    </div>
                </div>   		
            </div>
            <div class="container">
                <div class="row">
                    <c:forEach var="o" items="${listP}">
                        <div class="col-md-6 col-lg-3 ftco-animate">
                            <div class="product">
                                <a href="#" class="img-prod"><img class="img-fluid" src="./assets/images/${o.getProductImage()}" alt="Colorlib Template">
                                    <div class="overlay"></div>
                                </a>
                                <div class="text py-3 pb-4 px-3 text-center">
                                    <h3><a href="#">${o.getProductName()}</a></h3>
                                    <div class="d-flex">
                                        <div class="pricing">
                                            <p class="price">${o.getPrice()} $</p>
                                        </div>
                                    </div>
                                    <div class="bottom-area d-flex px-3">
                                        <div class="m-auto d-flex">
                                            <a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
                                                <span><i class="ion-ios-cart"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <section class="ftco-section img" style="background-image: url(./assets/images/bg_3.jpg); margin-bottom: 150px ">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-md-6 heading-section ftco-animate deal-of-the-day ftco-animate">
                        <span class="subheading">Best Price For You</span>
                        <h2 class="mb-4">Quality is always <br>the best</h2>
                        <p>MayGarden is not just a shopping destination but also a valuable source of information on healthy eating and organic living. With a mission to create a community passionate about clean and organic food, 
                            MayGarden aims to contribute to enhancing the quality of life for everyone by providing high-quality products and useful nutritional information.</p>

                        <p><a href="Product" class="btn btn-primary">Shop now</a></p>
                    </div>   		
                </div>
        </section>



        <hr>


        <jsp:include page="Footer.jsp" />
        <script>
            $(document).ready(function () {

                $("#owl-demo").owlCarousel({

                    autoPlay: true, //Set AutoPlay to 3 seconds
                    goToFirst: true,

                    items: 2,
                    itemsDesktop: [1199, 3],
                    itemsDesktopSmall: [979, 3]

                });

            });
        </script>

    </body>
</html>
