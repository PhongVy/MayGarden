/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.util.Date;

/**
 *
 * @author PC
 */
public class Product {
    private int ProductId;
    private String productName;
    private int CatId;
    private String ShortDesc;
    private String Description;
    private float Price;
    private String ProductImage;
    private Date DateCreate;
    private int UnitInStock;
    private boolean Published;

    @Override
    public String toString() {
        return "Product{" + "ProductId=" + ProductId + ", productName=" + productName + ", CatId=" + CatId + ", ShortDesc=" + ShortDesc + ", Description=" + Description + ", Price=" + Price + ", ProductImage=" + ProductImage + ", DateCreate=" + DateCreate + ", UnitInStock=" + UnitInStock + ", Published=" + Published + '}';
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getCatId() {
        return CatId;
    }

    public void setCatId(int CatId) {
        this.CatId = CatId;
    }

    public String getShortDesc() {
        return ShortDesc;
    }

    public void setShortDesc(String ShortDesc) {
        this.ShortDesc = ShortDesc;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public String getProductImage() {
        return ProductImage;
    }

    public void setProductImage(String ProductImage) {
        this.ProductImage = ProductImage;
    }

    public Date getDateCreate() {
        return DateCreate;
    }

    public void setDateCreate(Date DateCreate) {
        this.DateCreate = DateCreate;
    }

    public int getUnitInStock() {
        return UnitInStock;
    }

    public void setUnitInStock(int UnitInStock) {
        this.UnitInStock = UnitInStock;
    }

    public boolean isPublished() {
        return Published;
    }

    public void setPublished(boolean Published) {
        this.Published = Published;
    }

    public Product(int ProductId, String productName, int CatId, String ShortDesc, String Description, float Price, String ProductImage, Date DateCreate, int UnitInStock, boolean Published) {
        this.ProductId = ProductId;
        this.productName = productName;
        this.CatId = CatId;
        this.ShortDesc = ShortDesc;
        this.Description = Description;
        this.Price = Price;
        this.ProductImage = ProductImage;
        this.DateCreate = DateCreate;
        this.UnitInStock = UnitInStock;
        this.Published = Published;
    }
}
