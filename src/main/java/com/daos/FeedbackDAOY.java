/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Feedback;
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
    public Feedback fb(String email, String username, String message){
        String query = "select * from Feedback\n"
                + "where Email = ?\n"
                + "and Name = ?\n"
                + "and Description = ?";
        try{
        conn = new DBConnection().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, username);
        ps.setString(3, message);
        rs = ps.executeQuery();
//        while(rs){}
        
        }catch(Exception e){
        
        }
        return null;
    }
}
