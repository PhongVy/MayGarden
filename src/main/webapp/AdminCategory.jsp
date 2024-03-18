<%-- 
    Document   : AdminAccount
    Created on : Feb 24, 2024, 2:59:35 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 5px">
    <h1>List of categories</h1>



    <div style="display: flex; align-items: center; justify-content: space-between">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd" style="font-weight:bold; padding: 10px 10px; margin-bottom: 10px; background: #0099FF; color:white; outline:none; border-radius: 10px;">
            <a style="text-decoration: none"> Create </a>
        </button>
        <form method="post" action="SearchCategory">
            <div style="display: flex; align-items: center">
                <input name="txt" type="text" placeholder="Search" style="padding: 5px">
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-search"></i>
                </button>

            </div>
        </form>
    </div>
    <!-- The Modal -->
    <div class="modal" id="myModalAdd">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <form action="AddCategory" method="get">
                    <div class="modal-header">
                        <h4 class="modal-title">Create New Category</h4>
                        <button type="button" class="close" data-dismiss="modal" >&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <!-- Thêm nội dung form tạo category mới -->
                        <div class="form-group">
                            <label for="catname">CatName:</label>
                            <input required name="CatName" type="text" class="form-control">
                        </div>  
                        <div class="form-group">
                            <label for="description">Description:</label>
                            <input required name="Description" type="text" class="form-control">
                        </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" value="AddCategory" >Create</button>
                        <button type="button" class="btn btn-danger" value="Cancel" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <table style="width: 1200px; text-align:center; border: 1px solid #333">
        <thead style="border: 1px solid #333; background:#82ae46; color:#fff; height:50px">
            <tr>
                <th style="border-right: 1px solid #333;">
                    CatId 
                </th>
                <th style="border-right: 1px solid #333;">
                    CatName
                </th>
                <th style="border-right: 1px solid #333;">
                    Description
                </th>
                <th>
                    Active
                </th>
            </tr>
        </thead>

        <tbody style="text-align:center; border: 1px solid #333">
            <c:forEach items="${listC}" var="Categories">
                <tr>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Categories.getCatId()}</td>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Categories.getCatName()}</td>
                    <td style="border-right: 1px solid #333; border-bottom: 1px solid #333;">${Categories.getDescription()}</td>
                    <td style="border-bottom: 1px solid #333;" >
                        <a  href="LoadCategory?CatId=${Categories.getCatId()}" class="btn btn-success" style="padding: 3px 16px;  text-decoration: none">Edit</a> |
                        <a href="DetailCategory?CatId=${Categories.getCatId()}" class="btn btn-warning" style="padding: 3px; text-decoration: none">Details</a> |
                        <a href="#" onclick="showMess(${Categories.getCatId()})" class="btn btn-danger" style="padding: 3px; text-decoration: none">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function showMess(id) {
        var option = confirm('Are you sure to delete');
        if (option === true) {
            window.location.href = 'DeleteCategory?CatId=' + id;
        }
    }
</script>