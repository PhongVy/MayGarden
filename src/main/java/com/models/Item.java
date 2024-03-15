/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author Admin
 */
public class Item {
    private Product product;
    private int productID;
    private int productQuantity;
    private float ProductPrice;
   
    

    
    
    
    public Item() {
    }

    public Item(Product product, int productID, int productQuantity, float ProductPrice) {
        this.product = product;
        this.productID = productID;
        this.productQuantity = productQuantity;
        this.ProductPrice = ProductPrice;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public float getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(float ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    

    
    
}
