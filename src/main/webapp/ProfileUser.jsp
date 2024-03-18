<%-- 
    Document   : ProfileUser
    Created on : Mar 14, 2024, 7:42:14 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />
<link rel="stylesheet" href="./assets/fonts/fontawesome-free-6.4.0-web/css/all.min.css">
    <div style="">
        <div style=" width: 850px; border: 1px solid #81C408; margin: auto; margin-bottom: 150px">
            <div style="padding: 25px;">
                <h1 style="text-align: center;font-family: 'Font Awesome 5 Free';">USER PROFILE</h1>
                <div style="display: flex; align-items: center">
                    <div class="col-6" style="display: flex; flex-direction: column; align-items: center; justify-content: space-between">
                        <div style="width:280px;height:280px; background: #ffffff; border-radius: 50%; border: 1px solid #dcdcdc; position: relative">
                            <i style="color: #81C408; position: absolute; left: 75px; top: 50px" class="fas fa-user fa-10x"></i>
                        </div>
                        <h3 style="margin-top: 25px;font-family: 'Font Awesome 5 Free';">${userDetail.getFullName()}</h3>
                    </div>
                    <div class="col-6">
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">User ID: ${userDetail.getUserId()}</p>
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">User Name: ${userDetail.getUserName()}</p>
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">Full Name: ${userDetail.getFullName()}</p>
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">Email: ${userDetail.getEmail()}</p>
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">Address: ${userDetail.getAddress()}</p>
                        <p style="font-family: 'Font Awesome 5 Free'; font-size: 20px">Phone: ${userDetail.getPhone()}</p>
                        <a class="btn btn-primary" style="color: #fff">Order History</a>
                        <a class="btn btn-primary" href="LoadProfile?userId=${userDetail.getUserId()}">Update Profile</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="Footer.jsp" />