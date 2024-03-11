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
                        rs.getBoolean(10)));
            }
        } catch (Exception e) {
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
