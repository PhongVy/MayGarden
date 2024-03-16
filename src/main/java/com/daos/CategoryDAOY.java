/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Categories;
import com.models.Product;
import static com.service.MD5.getMd5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author yentk
 */
public class CategoryDAOY {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

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

    public void InsertCat(int catid, String catname, String description) {
        String query = "Insert into Categories "
                + "values(?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, catid);
            ps.setString(2, catname);
            ps.setString(3, description);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Categories getCatByID(String CatId) {
        String query = "select * from Categories where CatId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, CatId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;

    }
    
    public void EditCat(String catid, String catname, String description) {
        String query = "Update Categories set CatName=?, Description=? where CatId=?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, catname);
            ps.setString(2, description);
            ps.setString(3, catid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void DeleteCat(String CatId) {
        String query = "delete from Categories where [CatId] = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, CatId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

//    public static void main(String[] args) {
//        ProductDAOV dao = new ProductDAOV();
//        List<Categories> list = dao.getListCat();
//        
//        for (Categories o : list) {
//            System.out.println(o);
//        }
//    }
  
    public List<Product> getCatById(String CatId) {
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
        }
        return list;
    }
    
    public List<Categories> searchCategory(String txtSearch) {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories where CatName like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
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


    public static void main(String[] args) {
        CategoryDAOY dao = new CategoryDAOY();
        List<Product> list = dao.getCatById("1"); // Thay "yourCatId" bằng một cat ID hợp lệ trong cơ sở dữ liệu của bạn

        for (Product o : list) {
            System.out.println(o);
        }
    }

}
