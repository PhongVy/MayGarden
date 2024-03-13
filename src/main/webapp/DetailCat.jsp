<%-- 
    Document   : DetailCat
    Created on : Mar 13, 2024, 2:06:59 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Admin.jsp" />
    <dl class="row" style="padding-left: 40%">
        <div style="width: 600px; border: 1px solid #81C408;  border-radius: 30px">
            <div style="padding:30px;">
                <h1 style="text-align: center; font-weight:bold; color:#81C408">Category Details</h1>
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        CatId: 
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detailcat.getCatId()}
                    </dd> 
                </div><hr style="width:100%; border-style: inset;
                          border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        CatName:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detailcat.getCatName()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        Description:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detailcat.getDescription()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display:flex; justify-content:space-between; margin-top: 15px">
                    <a href="LoadCategory?CatId=${detailcat.getCatId()}" class="btn btn-success" style="text-decoration:none; margin-top: 20px;">Edit</a>
                    <a href="Category" class="btn btn-danger"  style="text-decoration:none; margin-top: 20px">Back to List</a>
                </div>
            </div>
        </div>
    </dl>
</html>
