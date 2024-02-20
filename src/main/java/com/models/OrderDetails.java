/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class OrderDetails {
    private int OrderDetailId;
    private int OrderId;
    private int ProductId;
    private int Quantity;
    private float Total;
    private int UserId;

    @Override
    public String toString() {
        return "OrderDetails{" + "OrderDetailId=" + OrderDetailId + ", OrderId=" + OrderId + ", ProductId=" + ProductId + ", Quantity=" + Quantity + ", Total=" + Total + ", UserId=" + UserId + '}';
    }

    public int getOrderDetailId() {
        return OrderDetailId;
    }

    public void setOrderDetailId(int OrderDetailId) {
        this.OrderDetailId = OrderDetailId;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public float getTotal() {
        return Total;
    }

    public void setTotal(float Total) {
        this.Total = Total;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public OrderDetails(int OrderDetailId, int OrderId, int ProductId, int Quantity, float Total, int UserId) {
        this.OrderDetailId = OrderDetailId;
        this.OrderId = OrderId;
        this.ProductId = ProductId;
        this.Quantity = Quantity;
        this.Total = Total;
        this.UserId = UserId;
    }
}
