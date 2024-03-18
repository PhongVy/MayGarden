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

        <h1 style="text-align: center; font-weight:bold; color:#81C408; padding-top: 10px">Edit Product</h1>

        <!-- Modal body -->
        <div class="modal-body">
            <!-- Thêm nội dung form tạo tài khoản mới -->
            <div class="form-group">
                <label>Product Id</label>
                <input value="${detailproduct.getProductId()}" name="ProductId" type="text" readonly class="form-control">
            </div>
            <div class="form-group">
                <label>Product Name</label>
                <input value="${detailproduct.getProductName()}" name="ProductName" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Category</label>
                <input value="${detailproduct.getCatId()}" name="CatId" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Short Description</label>
                <input value="${detailproduct.getShortDesc()}" name="ShortDesc" type="text" class="form-control" >
            </div>
            <div class="form-group">
                <label>Description</label>
                <input value="${detailproduct.getDescription()}" name="Description" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Price</label>
                <input value="${detailproduct.getPrice()}" name="Price" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Product Image</label>
                <input value="${detailproduct.getProductImage()}" name="ProductImage" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Date Create</label>
                <input value="${detailproduct.getDateCreate()}" name="DateCreate" type="date" class="form-control">
            </div>
            <div class="form-group">
                <label>Unit Stock</label>
                <input value="${detailproduct.getUnitInStock()}" name="UnitInStock" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Published</label>
                <input value="${detailproduct.isPublished()}" name="Published" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label>Best Seller</label>
                <input value="${detailproduct.isBestSaler()}" name="BestSeller" type="text" class="form-control">
            </div>
            </div>
        <!-- Modal footer -->
        <div class="modal-footer" style="display: flex; justify-content: space-between; align-items: center">
            <button type="submit" class="btn btn-primary" value="EditProduct" style="margin-right: 30px">Save</button>
            <a href="AdminProduct" class="btn btn-danger"  style="text-decoration:none;">Back to List</a>
        </div>
    </form>
</html>