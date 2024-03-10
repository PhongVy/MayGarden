<%-- 
    Document   : Register
    Created on : Feb 24, 2024, 1:23:36 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />
<form method="post" action="Register">
<div style="padding-left: 30%; margin-top: 70px; margin-bottom: 70px">
    <div class="" style="width: 600px; border: 1px solid #82ae46;  border-radius: 30px">
        
        <div style="padding: 20px" class="col-12">
            <div style=" border-radius: 30px 30px 0 0; text-align: center; padding:0.01em 16px">
            <h2 style="font-family: 'Font Awesome 5 Free'">REGISTER</h2>
        </div>
            <p class="text-danger" style="font-family: 'Font Awesome 5 Free'">${mess}</p>
            <p class="text-danger" style="font-family: 'Font Awesome 5 Free'">${messP}</p>
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">UserName</p>
                <input name="user" type="text" style="flex: 1; outline: 0.5px solid #82ae46" required="" autofocus="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Password</p>
                <input name="pass" type="password" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Confirm Password</p>
                <input name="repass" type="password" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Email</p>
                <input name="email" type="text" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Full Name</p>
                <input name="fullname" type="text" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Phone</p>
                <input name="phone" type="text" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="display: flex; align-items: center; justify-content: space-between">
                <p style="font-family: 'Font Awesome 5 Free'; min-width: 150px">Address</p>
                <input name="address" type="text" style="flex: 1; outline: 0.5px solid #82ae46" required="">
            </div>
            
            <div style="text-align: center; margin-top: 10px">
                <button type="submit" value="Register" class="btn" style="background: #82ae46; width: 560px; color: white; font-family:'Font Awesome 5 Free'; border: 1px solid #82ae46; border-radius: 30px; padding: 10px 20px; font-size: 16px">Register</button>

            </div>
            <div style="text-align: center;">
                <p style="padding-top: 20px">
                    Do you have an account? <a style="text-decoration: underline" href="Login.jsp">Login</a>
                </p>
            </div>
        </div>
    </div>
</div>
</form>
<jsp:include page="Footer.jsp" />