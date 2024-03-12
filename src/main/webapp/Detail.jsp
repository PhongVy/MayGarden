<%-- 
    Document   : detail
    Created on : Mar 12, 2024, 5:13:11 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="Admin.jsp" />
    <dl class="row" style="padding-left: 40%">
        <div style="width: 600px; border: 1px solid #81C408;  border-radius: 30px">
            <div style="padding:30px;">
                <h1 style="text-align: center; font-weight:bold; color:#81C408">Account Details</h1>
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        UserId: 
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getUserId()}
                    </dd> 

                </div><hr style="width:100%; border-style: inset;
                          border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        UserName:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getUserName()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        Password:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getPassword()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        FullName:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getFullName()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        Address:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getAddress()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display: flex; margin-top: 30px"><dt class="col-sm-2" style="font-weight:bold">
                        Email:
                    </dt>
                    <dd class="col-sm-10" style="margin: 0 60px">
                        ${detail.getEmail()}
                    </dd></div><hr style="width:100%; border-style: inset;
                               border-width: 1px;">
                <div style="display:flex; justify-content:space-between; margin-top: 15px">
                    <a href="Load?uid=${detail.getUserId()}" class="btn btn-success" style="text-decoration:none; margin-top: 20px;">Edit</a>
                    <a href="Account" class="btn btn-danger"  style="text-decoration:none; margin-top: 20px">Back to List</a>
                </div>
            </div>

        </div>

    </dl>
</html>
