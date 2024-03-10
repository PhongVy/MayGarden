<%-- 
    Document   : Login
    Created on : Feb 20, 2024, 9:57:28 PM
    Author     : Nguyễn Hồng Phong Vy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />

<form method="post" name="f1" action="Login">
<div style="padding-left: 30%; margin-top: 70px; margin-bottom: 70px">
    <div class="" style="width: 600px; border: 1px solid #81C408;  border-radius: 30px">
        
        <div style="padding: 20px" class="col-12">
            <div style=" border-radius: 30px 30px 0 0;  text-align: center; padding:0.01em 16px">
            <h2 style="font-family: 'Font Awesome 5 Free'">LOGIN</h2>
        </div>
            <p class="text-danger" style="font-family: 'Font Awesome 5 Free'">${mess}</p>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Email</p>
                <input name="username" type="text" value="" style="flex: 1; outline: 0.5px solid #82ae46" required autofocus="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Password</p>
                <input name="password" type="password" value="" style="flex: 1; outline: 0.5px solid #82ae46" required>
            </div>
            
            <div style="text-align: center; margin-top: 10px">
                <button type="submit" value="Login" class="btn" style="background: #82ae46; color: white; font-family:'Font Awesome 5 Free'; border: 1px solid #82ae46; border-radius: 10px; padding: 10px 20px;width: 560px; font-size: 18px">Login</button>
            </div>
<!--            <div style="text-align: center; padding-top: 20px">
                <a href='Forgot.jsp'>Forgot password?</a>
            </div>-->
            <div style="text-align: center;">
                <p style="padding-top: 10px">
                    Do you have an account? <a style="text-decoration: underline" href="Register.jsp">Register</a>
                </p>
            </div>
        </div>
    </div>
</div>
</form>
<jsp:include page="Footer.jsp" />
