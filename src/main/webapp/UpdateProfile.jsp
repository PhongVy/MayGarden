<%-- 
    Document   : UpdateProfile
    Created on : Mar 14, 2024, 8:46:07 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Header.jsp" />
    <!-- Modal Header -->
    <form action="UpdateProfile" method="get" style="width: 600px; margin-left: 30%; border: 1px solid #81C408;  border-radius: 30px; margin-top: 50px; margin-bottom: 150px"  >
        <div class="modal-header">
            <h1 style="padding-left: 140px; font-weight:bold; color:#81C408">Update Profile</h1>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
            <!-- Thêm nội dung form tạo tài khoản mới -->
            <div class="form-group">
                <label for="username">UserID</label>
                <input value="${Accounts.getUserId()}" name="Userid" type="text" readonly class="form-control">
            </div>
            <div class="form-group">
                <label for="username">UserName</label>
                <input value="${Accounts.getUserName()}" name="Username" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input value="${Accounts.getPassword()}" name="Password" type="password" class="form-control">
            </div>
            <div class="form-group">
                <label for="fullname">Fullname</label>
                <input value="${Accounts.getFullName()}" name="Fullname" type="text" class="form-control" >
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input value="${Accounts.getAddress()}" name="Address" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input value="${Accounts.getPhone()}" name="Phone" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input value="${Accounts.getEmail()}" name="Email" type="text" class="form-control">
            </div>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary" value="UpdateProfile" >Save</button>
            <a href="ProfileAccount">Back to profile page</a>
        </div>
    </form>
            <jsp:include page="Footer.jsp" />
</html>