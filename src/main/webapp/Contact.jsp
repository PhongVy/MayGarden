<%-- 
    Document   : Contact
    Created on : Feb 20, 2024, 4:36:04 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />

<div class="hero-wrap hero-bread" style="background-image: url('./assets/images/bg_1.jpg');">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="breadcrumbs"><span class="mr-2"><a href="Home">Home</a></span> <span>Contact us</span></p>
                <h1 class="mb-0 bread">Contact us</h1>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section contact-section bg-light">
    <div class="container">
        <div class="row d-flex mb-5 contact-info">
            <div class="w-100"></div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Address:</span> 600, extended Nguyen Van Cu street, An Khanh ward, Ninh Kieu district, Can Tho city</p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Phone:</span> <a href="tel://1234567920">+ 836 395 2512</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Email:</span> <a href="mailto:info@yoursite.com">admin@gmail.com</a></p>
                </div>
            </div>
            <div class="col-md-3 d-flex">
                <div class="info bg-white p-4">
                    <p><span>Website</span> <a href="#">MayGarden.com</a></p>
                </div>
            </div>
        </div>
        <div class="row block-9">
            <div class="col-md-6 order-md-last d-flex">

                <form action="FeedbackY" class="bg-white p-5 contact-form"  method="post">
                    <p class="text-danger" >${mess}</p>

                    <input name="name" required type="text" class="form-control form-group" style="margin-top: 20px" placeholder="Your Name">


                    <input name="email" required type="text" class="form-control form-group"  placeholder="Your Email">

                    <textarea name="message" required cols="30" rows="7" class="form-control form-group" placeholder="Message"></textarea>

                    <button type="submit" value="FeedbackY" style="margin-top: 50px; color:white" class="form-group btn btn-primary py-3 px-5"data-toggle="modal" data-target="#myModal">Send Message</button>

                </form>

            </div>


            <div class="col-md-6 d-flex">
                <div class="bg-white" style="width: 100%">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1964.5266610940707!2d105.73114413830054!3d10.01245443888513!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882139720a77%3A0x3916a227d0b95a64!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgQ-G6p24gVGjGoQ!5e0!3m2!1sen!2s!4v1708759601379!5m2!1sen!2s" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="Footer.jsp" />