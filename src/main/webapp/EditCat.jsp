<%-- 
    Document   : EditCat
    Created on : Mar 13, 2024, 2:17:21 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Admin.jsp" />
    <!-- Modal Header -->
    <form action="EditCategory" method="get" style="width: 600px; margin-left: 40%; border: 1px solid #81C408;  border-radius: 30px"  >
        <div class="modal-header">
            <h1 style="text-align: center; font-weight:bold; color:#81C408">Edit Category</h1>
        </div>
        <!-- Modal body -->
        <div class="modal-body">
            <!-- Thêm nội dung form tạo tài khoản mới -->
            <div class="form-group">
                <label for="username">CatId</label>
                <input value="${detailcat.getCatId()}" name="Catid" type="text" readonly class="form-control">
            </div>
            <div class="form-group">
                <label for="username">CatName</label>
                <input value="${detailcat.getCatName()}" name="Catname" type="text" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Description</label>
                <input value="${detailcat.getDescription()}" name="Description" type="text" class="form-control">
            </div>
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary" value="EditCategory" >Save</button>
            <a href="Category" class="btn btn-danger"  style="text-decoration:none;">Back to List</a>
        </div>
    </form>
</html>