/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.models.Product;
import static com.service.MD5.getMd5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author PC
 */
public class ProfileDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Accounts getUserById(int id) {
        String query = "select * from Accounts where UserId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Accounts(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getBoolean(8));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void updateProfile( String UserName, String Password, String FullName, String Address, String Phone, String Email){

        String query = "Update Accounts set  UserName=?, Password=?, FullName=?, Address=?, Phone=?, Email=? where UserId=?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, UserName);
            ps.setString(2, Password);
            ps.setString(3, FullName);
            ps.setString(4, Address);
            ps.setString(5, Phone);
            ps.setString(6, Email);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
