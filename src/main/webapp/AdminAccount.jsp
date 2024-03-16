<%-- 
    Document   : AdminAccount
    Created on : Feb 24, 2024, 2:59:35 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 5px">
    <h1>List of accounts</h1>

    <div style="display: flex; align-items: center; justify-content: space-between">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd" style="font-weight:bold; padding: 10px 10px; margin-bottom: 10px; background: #0099FF; color:white; outline:none; border-radius: 10px;">
            <a style="text-decoration: none"> Create </a>
        </button>
        <form method="post" action="SearchAccount">
            <div style="display: flex; align-items: center">
                <input name="txt" type="text" placeholder="Search" style="padding: 5px">
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-search"></i>
                </button>

            </div>
        </form>
    </div>
    <!-- Add Modal -->
    <div class="modal" id="myModalAdd">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <form action="Add" method="get">
                    <div class="modal-header">
                        <h4 class="modal-title">Create New Account</h4>
                        <button type="button" class="close" data-dismiss="modal" >&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <!-- Thêm nội dung form tạo tài khoản mới -->
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input required name="Username" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input required name="Password" type="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="fullname">Fullname:</label>
                            <input required name="Fullname" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input required name="Address" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input required name="Phone" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input required name="Email" type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="isadmin">isAdmin:</label>
                            <input required name="isAdmin" type="text" class="form-control">
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" value="Add" >Create</button>
                        <button type="button" class="btn btn-danger" value="Cancel" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <table style="width: 1200px; border: 1px solid #333">
        <thead style="text-align:center; border: 1px solid #333; background:#82ae46; color:#fff; height:50px">
            <tr>
                <th style="border-right: 1px solid #333;">
                    UserId 
                </th>
                <th style="border-right: 1px solid #333;">
                    UserName
                </th>
                <th style="border-right: 1px solid #333;">
                    FullName
                </th>
                <th>
                    Active
                </th>
            </tr>
        </thead>
        <tbody style="text-align:center; border: 1px solid #333">


            <c:forEach items="${listA}" var="Accounts">
                <tr>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Accounts.getUserId()}</td>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Accounts.getUserName()}</td>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Accounts.getFullName()}</td>
                    <td style="border-bottom: 1px solid #333;" >
                        <a  href="Load?uid=${Accounts.getUserId()}" class="btn btn-success" style="padding: 3px 16px;  text-decoration: none">Edit</a> |
                        <a href="Detail?uid=${Accounts.getUserId()}" class="btn btn-warning" style="padding: 3px; text-decoration: none">Details</a> |
                        <a href="Delete?UserId=${Accounts.getUserId()}" class="btn btn-danger" style="padding: 3px; text-decoration: none">Delete</a>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>
</div>
