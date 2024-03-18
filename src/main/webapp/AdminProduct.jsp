<%-- 
    Document   : AdminProduct
    Created on : Mar 13, 2024, 12:01:45 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 10px">
    <h1>List of products</h1>

    <div style="display: flex; align-items: center; justify-content: space-between">
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalAdd" style="font-weight:bold; padding: 10px 10px; margin-bottom: 10px; background: #0099FF; color:white; outline:none; border-radius: 10px;">
            <a style="text-decoration: none"> Create </a>
        </button>
        <form method="post" action="SearchProduct">
            <div style="display: flex; align-items: center">
                <input name="txt" type="text" placeholder="Search" style="padding: 5px">
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-search"></i>
                </button>

            </div>
        </form>
    </div>
    <div class="container">
        <!-- The Modal -->
        <div class="modal" id="myModalAdd" >
            <div class="modal-dialog" >
                <div class="modal-content">

                    <!-- Modal Header -->
                    <form action="CreateProduct" method="post">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- Modal body -->
                        <div class="" style="padding-left: 10%; margin: 5px 0">
                            <div class="" style="width: 400px; border: 1px solid #81C408;  border-radius: 30px">
                                <div style="padding:30px; width: 400px">
                                    <h1 style="text-align: center; font-weight:bold; color:#81C408">Create New Product</h1>
                                    <div class="text-danger"></div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Product Id</label>
                                        <input name="prodId" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Product Name</label>
                                        <input name="prodName" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Category</label>
                                        <input name="catId" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Short Desc </label>
                                        <input name="shortDesc" type="text" class="form-control" style="margin: 0 0px; width: 330px"/>
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Description</label>
                                        <input name="description" type="text" class="form-control" style="margin: 0 0px; width: 330px"/>
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Price</label>
                                        <input name="price" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Product Image</label>
                                        <input name="prodImage" type="text" class="form-control"  style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Date Create</label>
                                        <input type="date" name="dateCreate" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Unit In Stock</label>
                                        <input name="unitStock" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Published</label>
                                        <input name="published" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Best Seller</label>
                                        <input name="betSeller" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <!-- Modal footer -->
                                    <div class="modal-footer">                                  
                                        <button type="submit" class="btn btn-primary" value="CreateProduct">Create</button>

                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>


    <table style="width: 1200px; border: 1px solid #333">

        <thead style="text-align: center ;border: 1px solid #333; background:#81c408; color:#fff; height:50px">
            <tr style="padding: 10px">
                <th style="border: 1px solid #333">
                    ID 
                </th>
                <th style="border: 1px solid #333">
                    Product Image
                </th>
                <th style="border: 1px solid #333">
                    Product Name
                </th>
                <th style="border: 1px solid #333">
                    Price
                </th>
                <th style="border: 1px solid #333"></th>
            </tr>
        </thead>
        <tbody style="text-align: center ;border: 1px solid #333;">
            <c:forEach var="Product" items="${listA}">
                <tr>

                    <td style="padding: 10px; border: 1px solid #333">${Product.getProductId()}</td>
                    <td style="border: 1px solid #333"><img style="height: 100px; padding: 5px" src="./assets/images/${Product.getProductImage()}" alt="alt"/></td>
                    <td style="border: 1px solid #333">${Product.getProductName()}</td>

                    <td style="border: 1px solid #333">${Product.getPrice()}</td> 
                    <td style="border: 1px solid #333">
                        <a href="LoadProduct?pid=${Product.getProductId()}" class="btn btn-success" style="padding: 3px; text-decoration: none">Update</a> |
                        <a href="DetailProduct?pid=${Product.getProductId()}" class="btn btn-warning" style="padding: 3px; text-decoration: none">Details</a> |
                        <a href="#" onclick="showMess(${Product.getProductId()})" class="btn btn-danger" style="padding: 3px; text-decoration: none">Delete</a>
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
            window.location.href = 'DeleteProduct?pid=' + id;
        }
    }
</script>