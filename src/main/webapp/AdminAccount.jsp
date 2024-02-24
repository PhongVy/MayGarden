<%-- 
    Document   : AdminAccount
    Created on : Feb 24, 2024, 2:59:35 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 0">
    <h1>List of accounts</h1>

    <p>
        <a asp-action="Create" style="font-weight:bold; padding: 10px 10px; background: #81c408; color:white; outline:none; border-radius: 30px; text-decoration:none" class="">Create New</a>
    </p>
    <table style="width: 1200px; border: 1px solid #333">
        <thead style="border: 1px solid #333; background:#81c408; color:#fff; height:50px">
            <tr>
                <th>
                    UserId 
                </th>
                <th>
                    UserName
                </th>
                <th>
                    Password
                </th>
                <th>
                    FullName
                </th>
                <th>
                    Address
                </th>
                <th>
                    Phone
                </th>
                <th>
                    Email
                </th>
                <th>
                    IsAdmin
                </th>
                <th></th>
            </tr>
        </thead>
        <tbody style="text-align:center; border: 1px solid #333">
            <c:forEach items="${listA}" var="o">
                <tr>
                    <td>${o.UserId}</td>
                    <td>${o.UserName}</td>
                    <td>${o.Pasword}</td> 
                    <td>${o.FullName}</td>

                    <td>${o.Address}</td> 
                    <td>${o.Phone}</td> 

                    <td>${o.Email}</td>
                    <td style="border: 1px solid #333">
                        <a asp-action="Edit" asp-route-id="@item.UserId" style="padding: 3px; background: #0099FF; text-decoration: none">Edit</a> |
                        <a asp-action="Details" asp-route-id="@item.UserId" style="padding: 3px; background: #33FF33; text-decoration: none">Details</a> |
                        <a asp-action="Delete" asp-route-id="@item.UserId" style="padding: 3px; background: red; text-decoration: none">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
