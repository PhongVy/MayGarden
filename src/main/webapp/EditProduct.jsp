<%-- 
    Document   : EditProduct
    Created on : Mar 13, 2024, 10:28:51 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Admin.jsp" />
    <!-- Modal Header -->
    <form action="EditProduct" method="get" style="width: 600px; margin-left: 40%; border: 1px solid #81C408;  border-radius: 30px; margin-bottom: 25px">
        <div class="modal-header">
            <h1 style="text-align: center; font-weight:bold; color:#81C408">Edit Account</h1>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
            <!-- Thêm nội dung form tạo tài khoản mới -->
            <div class="form-group">
                <label>Product Id</label>
                <input value="${prod.getProductId()}" name="prodid" type="text" readonly class="form-control">
            </div>
            <div class="form-group">
                <label>Product Name</label>
                <input value="${detail.getProductName()}" name="prodname" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Category</label>
                <input value="${detail.getCatId()}" name="catid" type="password" class="form-control">
            </div>
            <div class="form-group">
                <label>Short Description</label>
                <input value="${detail.getShortDesc()}" name="shortdesc" type="text" class="form-control" >
            </div>
            <div class="form-group">
                <label>Description</label>
                <input value="${detail.getDescription()}" name="desc" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Price</label>
                <input value="${detail.getPrice()}" name="price" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Product Image</label>
                <input value="${detail.getProductImage()}" name="prodimage" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Date Create</label>
                <input value="${detail.getDateCreate()}" name="datecreate" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Unit Stock</label>
                <input value="${detail.getUnitInStock()}" name="unit" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Published</label>
                <input value="${detail.isPublished()}" name="published" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Best Seller</label>
                <input value="${detail.isBestSaler()}" name="best" type="text" class="form-control">
            </div>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer" style="display: flex; justify-content: space-between; align-items: center">
            <button type="submit" class="btn btn-primary" value="EditProduct" style="margin-right: 30px">Save</button>
            <a href="AdminProduct"  style="text-decoration:none; margin-top: 20px">Back to List</a>
        </div>
    </form>
</html>
