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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
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

    public void deleteProduct(String id) {
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

    public void createProduct(int ProductId, String productName, int CatId, String ShortDesc, String Description, float Price, String ProductImage, Date DateCreate, int UnitInStock, boolean Published, boolean BestSaler) {
        String query = "INSERT INTO Products (ProductId, productName, CatId, ShortDesc, Description, Price, ProductImage, DateCreate, UnitInStock, Published, BestSaler) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, ProductId);
            ps.setString(2, productName);
            ps.setInt(3, CatId);
            ps.setString(4, ShortDesc);
            ps.setString(5, Description);
            ps.setFloat(6, Price);
            ps.setString(7, ProductImage);
            ps.setDate(8, new java.sql.Date(DateCreate.getTime())); // Chuyển đổi từ java.util.Date sang java.sql.Date
            ps.setInt(9, UnitInStock);
            ps.setBoolean(10, Published);
            ps.setBoolean(11, BestSaler);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void editProduct(String pid, String pname, String pcat, String pshort, String pdesc, String pprice, String pidimage, String pdate, String punit, boolean ppublish, boolean pbest) throws SQLException {
        String query = "UPDATE Products SET productName=?, CatId=?, ShortDesc=?, Description=?, Price=?, ProductImage=?, DateCreate=?, UnitInStock=?, Published=?, BestSaler=? WHERE ProductId=?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pname);
            ps.setString(2, pcat);
            ps.setString(3, pshort);
            ps.setString(4, pdesc);
            ps.setString(5, pprice);
            ps.setString(6, pidimage);
            ps.setString(7, pdate);
            ps.setString(8, punit);
            ps.setBoolean(9, ppublish);
            ps.setBoolean(10, pbest);
            ps.setString(11, pid);
            ps.executeUpdate();
        } catch (Exception e){
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