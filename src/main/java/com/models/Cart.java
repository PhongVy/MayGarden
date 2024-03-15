/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.util.List;

/**
 *
 * @author PC
 */
public class Cart {
    private int cartId;
    private int userId;
    private int productId;
   
    private int quantity;

    private List<Item> items;

    public Cart() {
    }

    public Cart(int cartId, int userId, int productId, int quantity) {
        this.cartId = cartId;
        this.userId = userId;
        this.productId = productId;
      
        this.quantity = quantity;
    }
    
    

    public Cart(int userId, int productId, int quantity) {
        this.userId = userId;
        this.productId = productId;
        
        this.quantity = quantity;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

  

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductID(int productId) {
        this.productId = productId;
    }

    

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    //Totalprice
    public double getTotalPrice() {
        double t = 0;
        for (Item o : items) {
            t += (o.getProductQuantity() * o.getProductPrice());
        }
        return t;
    }
    
}
