/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Feedback;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author yentk
 */



public class FeedbackDAOY extends DBConnection{

    

     public void addFeedback(String Type, String Content, Date FeedBackDate, String UserName) {
        String sql = "INSERT INTO `feedback`(`UserId`, `Content`, `Type`, `FeedBackDate`) VALUES (?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, UserName);
            ps.setString(2, Content);
            ps.setString(3, Type);
            ps.setDate(4, FeedBackDate);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public ArrayList<Feedback> getAllFeedbacks() {
        ArrayList<Feedback> feedback = new ArrayList<>();
        String sql = "SELECT FeedbackId,c.UserName,Content,Type,FeedBackDate FROM Feedback f join User u on f.UserId";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int FeedbackId = rs.getInt(1);
                String UserName = rs.getString(2);
                String Content = rs.getString(3);
                String Type = rs.getString(4);
                Date FeedBackDate = rs.getDate(5);
                feedback.add(new Feedback(FeedbackId, UserName, Content, Type, FeedBackDate));
            }
            return feedback;
        } catch (Exception e) {
            return null;
        }
    }
}
