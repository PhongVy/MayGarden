/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Categories;
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
public class ProductDAOV {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where BestSaler = 'True'";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
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
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
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
                        rs.getBoolean(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchProduct(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where ProductName like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
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

    public List<Categories> getListCat() {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    public List<Product> getProductByCat(String CatId){
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where CatId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, CatId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
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

    public static void main(String[] args) {
        ProductDAOV dao = new ProductDAOV();
        List<Categories> list = dao.getListCat();
        
        for (Categories o : list) {
            System.out.println(o);
        }
    }
}
