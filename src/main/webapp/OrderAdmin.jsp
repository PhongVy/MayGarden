<%-- 
    Document   : OrderAdmin
    Created on : Mar 10, 2024, 2:45:48 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 0">
    <h1>List of orders</h1>
    
    <button style="margin-bottom: 20px; font-weight:bold; padding: 10px 10px; background: #81c408; color:white; outline:none; border-radius: 30px; text-decoration:none">
        <a>Browse Order</a>
    </button>
    
    <button type="submit" data-toggle="modal" data-target="#myModal" style="margin-bottom: 20px; font-weight:bold; padding: 10px 10px; background: #81c408; color:white; outline:none; border-radius: 30px; text-decoration:none" class="">
        <a>Browse Order</a>
    </button>
     The Modal 
    <div class="modal" id="myModal">
        <div class="modal-dialog">
            <div class="modal-content">

                 Modal Header 
                <div class="modal-header">
                    <h4 class="modal-title">Modal Heading</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                 Modal body 
                <div class="modal-body">
                    <form>
                        <div class="text-danger"></div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label">User</label>
                            <input class="form-control" style="margin: 0 20px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 28px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 27px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 63px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 37px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 37px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 55px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="padding: 5px">
                            <label class="control-label"></label>
                            <input class="form-control" style="margin: 0 48px; width: 310px" />
                            <span class="text-danger"></span>
                        </div>
                        <div class="form-group" style="display: flex; justify-content: space-between">
                            <input type="submit" value="Create" class="btn btn-primary" style="padding: 12px 12px; background:#81C408; color:#fff" />
                            <a style="padding: 15px 15px; background:#81C408; text-decoration: none; border: 2px solid #000; color:#fff">Back to List</a>
                        </div>
                    </form>
                </div>

                 Modal footer 
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>

            </div>
        </div>
    </div>
    <table style="width: 1200px; border: 1px solid #333">
        <thead style="border: 1px solid #333; background:#81c408; color:#fff; height:50px">
            <tr>
                <th>
                    UserName 
                </th>
                <th>
                    Order Date
                </th>
                <th>
                    Note
                </th>
                <th></th>
            </tr>
        </thead>
        <tbody style="text-align:center; border: 1px solid #333">

            <tr>
                <c:forEach var="o" items="${listO}">
                    <td>${o.getOrderDate()}</td>
                    <td>${o.getNote()}</td> 
                </c:forEach>
                <td style="border: 1px solid #333">
                    <a style="padding: 3px; background: #0099FF; text-decoration: none">Edit</a> |
                    <a style="padding: 3px; background: #33FF33; text-decoration: none">Details</a> |
                    <a style="padding: 3px; background: red; text-decoration: none">Delete</a>
                </td>

            </tr>

        </tbody>
    </table>
</div>
