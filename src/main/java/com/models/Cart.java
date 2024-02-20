/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Cart {
    private int CartId;
    private int UserId;
    private int ProductId;
    private String ProductName;
    private String PorductImage;
    private int Quantity;
    private float TotalPrice;
    private float ProductPrice;

    @Override
    public String toString() {
        return "Cart{" + "CartId=" + CartId + ", UserId=" + UserId + ", ProductId=" + ProductId + ", ProductName=" + ProductName + ", PorductImage=" + PorductImage + ", Quantity=" + Quantity + ", TotalPrice=" + TotalPrice + ", ProductPrice=" + ProductPrice + '}';
    }

    public int getCartId() {
        return CartId;
    }

    public void setCartId(int CartId) {
        this.CartId = CartId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public String getPorductImage() {
        return PorductImage;
    }

    public void setPorductImage(String PorductImage) {
        this.PorductImage = PorductImage;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public float getTotalPrice() {
        return TotalPrice;
    }

    public void setTotalPrice(float TotalPrice) {
        this.TotalPrice = TotalPrice;
    }

    public float getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(float ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public Cart(int CartId, int UserId, int ProductId, String ProductName, String PorductImage, int Quantity, float TotalPrice, float ProductPrice) {
        this.CartId = CartId;
        this.UserId = UserId;
        this.ProductId = ProductId;
        this.ProductName = ProductName;
        this.PorductImage = PorductImage;
        this.Quantity = Quantity;
        this.TotalPrice = TotalPrice;
        this.ProductPrice = ProductPrice;
    }
}
