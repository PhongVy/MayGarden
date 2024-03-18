/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class AdminProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Products";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1), 
                        rs.getString(2), 
                        rs.getInt(3), 
                        rs.getString(4), 
                        rs.getString(5), 
                        rs.getFloat(6), 
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public void deleteProduct(String id){
        String query = "Delete from Products where ProductId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void createProduct(String id, String Name, String CatId, String ShortDesc, String Description, String Price, String Image, String DateCreate, String Unit, String publish, String Best){
        String query = "insert into Products values"
                + "(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, Name);
            ps.setString(3, CatId);
            ps.setString(4, ShortDesc);
            ps.setString(5, Description);
            ps.setString(6, Price);
            ps.setString(7, Image);
            ps.setString(8, DateCreate);
            ps.setString(9, Unit);
            ps.setString(10, publish);
            ps.setString(11, Best);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void updateProduct( String Name, String CatId, String ShortDesc, String Description, String Price, String Image, String DateCreate, String Unit, String publish, String Best, String ProductId){
        String query = "Update Products set  productName=?, CatId=?, ShortDesc=?, [Description]=?, Price=?, ProductImage=?, DateCreate=?, UnitInStock=?, Published=?, BestSaler=? where ProductId=?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Name);
            ps.setString(2, CatId);
            ps.setString(3, ShortDesc);
            ps.setString(4, Description);
            ps.setString(5, Price);
            ps.setString(6, Image);
            ps.setString(7, DateCreate);
            ps.setString(8, Unit);
            ps.setString(9, publish);
            ps.setString(10, Best);
             ps.setString(11, ProductId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Product getProductById(String id) {
        String query = "select * from Products where ProductId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                rs.getBoolean(11));
            }
        } catch (Exception e) {
        }
        return null;
    }
}
