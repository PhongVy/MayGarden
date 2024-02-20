/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author PC
 */
public class Categories {
    private int CatId;
    private String CatName;
    private String Description;

    @Override
    public String toString() {
        return "Categories{" + "CatId=" + CatId + ", CatName=" + CatName + ", Description=" + Description + '}';
    }

    public int getCatId() {
        return CatId;
    }

    public void setCatId(int CatId) {
        this.CatId = CatId;
    }

    public String getCatName() {
        return CatName;
    }

    public void setCatName(String CatName) {
        this.CatName = CatName;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Categories(int CatId, String CatName, String Description) {
        this.CatId = CatId;
        this.CatName = CatName;
        this.Description = Description;
    }
}
