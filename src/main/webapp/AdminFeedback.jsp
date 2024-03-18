<%-- 
    Document   : AdminProduct
    Created on : Mar 13, 2024, 12:01:45 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div style="margin: 10px 0px; position: absolute; right: 10px">
    <h1>List of Feedback</h1>

    <div class="container">
        <!-- The Modal -->
        <div class="modal" id="myModal" >
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
                                        <label class="control-label">Email</label>
                                        <input name="prodId" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Name</label>
                                        <input name="prodName" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
                                    </div>
                                    <div class="form-group" style="padding: 5px">
                                        <label class="control-label">Description</label>
                                        <input name="catId" type="text" class="form-control" style="margin: 0 0px; width: 330px" />
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
                    Email 
                </th>
                <th style="border: 1px solid #333">
                    Name
                </th>
                <th style="border: 1px solid #333">
                    Description
                </th>
            </tr>
        </thead>
        <tbody style="text-align: center ;border: 1px solid #333;">
             <c:forEach items="${listFb}" var="fb">
                <tr>

                    <td style="padding: 10px; border: 1px solid #333">${fb.getEmail()}</td>
                    <td style="border: 1px solid #333">${fb.getName()}</td>
                    <td style="border: 1px solid #333">${fb.getDescription()}</td>
 
             

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