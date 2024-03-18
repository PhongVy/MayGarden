<%-- 
    Document   : OrderAdmin
    Created on : Mar 10, 2024, 2:45:48 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 5px">
    <h1>List of orders</h1>
    
     <table style="width: 1200px; border: 1px solid #333">

        <thead style="text-align: center ;border: 1px solid #333; background:#81c408; color:#fff; height:50px">
            <tr style="padding: 10px">
                <th style="border: 1px solid #333">
                    User Name 
                </th>
                <th style="border: 1px solid #333">
                    Order Date
                </th>
                <th style="border: 1px solid #333">
                    Price
                </th>
                <th style="border: 1px solid #333"></th>
            </tr>
        </thead>
        <tbody style="text-align: center ;border: 1px solid #333;">
            <c:forEach var="Product" items="${listO }">
                <tr>

                    <td style="padding: 10px; border: 1px solid #333">${Product.getUserId()}</td>
                    <td style="border: 1px solid #333">${Product.getOrderDate()}</td>

                    <td style="border: 1px solid #333">${Product.getTotalPrice()}</td> 
                    <td style="border: 1px solid #333">
                        <a href="#" class="btn btn-warning" style="padding: 3px; text-decoration: none">Details</a> 
                    </td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
