<%-- 
    Document   : FeedBack
    Created on : Mar 14, 2024, 1:34:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>


.label {
    margin-bottom: 5px;
    display: block;
}

.select {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.textarea {
    width: 100%;
    height: 150px;
    padding: 8px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.button:hover {
    background-color: #45a049;
}
</style>
    </head>
    
   <body class="goto-here">
       
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
    <form action="feedback" method="post">
        <label class="label" for="type">Type:</label>
        <select name="type" id="type" class="select">
            <option value="Food">Products feedback</option>
            <option value="Employee">Ship feedback</option>
            <option value="Other">Other</option>
        </select><br>
        
        <label class="label" for="content">Comment:</label>
        <textarea id="content" name="content" class="textarea" placeholder=""></textarea><br>
        
        <input type="submit" class="button" value="Send feedback">
    </form>
</div>
    
    <jsp:include page="Footer.jsp" />
    </body>
</html>
