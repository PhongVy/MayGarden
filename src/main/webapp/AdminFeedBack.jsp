<%-- 
    Document   : AdminFeedBack
    Created on : Mar 14, 2024, 1:42:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
.container {
    width: 80%;
    margin: auto;
    padding: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}
</style>
    </head>
    <body>
         <jsp:include page="HeaderV.jsp" />

    <div class="hero-wrap hero-bread" style="background-image: url('./assets/images/bg_1.jpg');">
        <div class="container">
            <div class="row no-gutters slider-text align-items-center justify-content-center">
                <div class="col-md-9 ftco-animate text-center">
                    <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Cart</span></p>
                    <h1 class="mb-0 bread">My Cart</h1>
                </div>
            </div>
        </div>
    </div>
         
         <div class="container">
            <table border="1px">
                <thead>
                    <tr>
                        <th>FeedbackId</th>
                        <th>UserName</th>
                        <th>Content</th>     
                        <th>Type</th>
                        <th>FeedBackDate</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="feedback" items="${requestScope.feedback}" >
                        <tr>
                            <td><c:out value="${feedback.getFeedbackId()}"></c:out></td>
                            <td><c:out value="${feedback.getUserName()}"></c:out></td>
                            <td><c:out value="${feedback.getContent()}"></c:out></td>
                            <td><c:out value="${feedback.getType()}"></c:out></td>
                            <td><c:out value="${feedback.getFeedBackDate()}"></c:out></td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <jsp:include page="Footer.jsp" />
    </body>
</html>
