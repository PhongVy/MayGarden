<%-- 
    Document   : Edit
    Created on : Mar 12, 2024, 8:42:22 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Admin.jsp" />
    <!-- Modal Header -->
    <form action="Edit" method="get" style="width: 600px; margin-left: 40%; border: 1px solid #81C408;  border-radius: 30px"  >
        <div class="modal-header">
            <h1 style="text-align: center; font-weight:bold; color:#81C408">Edit Account</h1>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
            <!-- Thêm nội dung form tạo tài khoản mới -->
            <div class="form-group">
                <label for="username">UserId</label>
                <input value="${detail.getUserId()}" name="Userid" type="text" readonly class="form-control">
            </div>
            <div class="form-group">
                <label for="username">UserName</label>
                <input value="${detail.getUserName()}" name="Username" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input value="${detail.getPassword()}" name="Password" type="password" class="form-control">
            </div>
            <div class="form-group">
                <label for="fullname">Fullname</label>
                <input value="${detail.getFullName()}" name="Fullname" type="text" class="form-control" >
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input value="${detail.getAddress()}" name="Address" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input value="${detail.getPhone()}" name="Phone" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input value="${detail.getEmail()}" name="Email" type="text" class="form-control">
            </div>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary" value="Edit" >Save</button>
            <button type="button" class="btn btn-danger" value="Cancel" data-dismiss="modal"><a href="Edit" style="color: white">Close</a></button>
        </div>
    </form>
</html>
