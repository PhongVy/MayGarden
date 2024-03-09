/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Categories;
import com.models.Feedback;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author yentk
 */
public class FeedbackDAOY {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void fb(String email, String username, String message) {
        String query = "INSERT INTO Feedback VALUES (?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, username);
            ps.setString(3, message);
            ps.executeUpdate();
          

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
//    public static void main(String[] args) {
//        CategoriesDAO dao = new CategoriesDAO();
//        List<Categories> list = dao.getAllCategories();
//        for (Categories o : list) {
//            System.out.println(o);
//        }
//    }

}
