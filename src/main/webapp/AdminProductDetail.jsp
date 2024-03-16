<%-- 
    Document   : AdminAccount
    Created on : Feb 24, 2024, 2:59:35 PM
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Admin.jsp" />
<div >
    <table>
        <thead >
        <dl class="row" style="padding-left: 40%">
            <div style="width: 600px; border: 1px solid #81C408;  border-radius: 30px">
                <div style="padding:30px;">
                    <h1 style="text-align: center; font-weight:bold; color:#81C408">Product Details</h1>
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Product ID:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getProductId()}
                        </dd>

                    </div><hr style="width:100%; border-style: inset;
                              border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Product Name:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getProductName()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Cat ID:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getCatId()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Short Desc:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getShortDesc()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Description:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getDescription()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Price:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getPrice()} $
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Product Image:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            <img style="width:150px" src="./assets/images/${detail.getProductImage()}" alt="alt"/>
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Date Create:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getDateCreate()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Unit In Stock:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.getUnitInStock()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Published:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.isPublished()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style="display: flex; margin-top: 30px"><dt class="col-sm-3" style="font-weight:bold">
                            Best Sale:
                        </dt>
                        <dd class="col-sm-9" style="margin: 0 ">
                            ${detail.isBestSaler()}
                        </dd></div><hr style="width:100%; border-style: inset;
                                   border-width: 1px;">
                    <div style=" text-align: right">
                        <a href="AdminProduct"  style="text-decoration:none; margin-top: 20px;">Back to List</a>
                    </div>
                </div>
            </div>
        </dl>
    </table>
</div>
