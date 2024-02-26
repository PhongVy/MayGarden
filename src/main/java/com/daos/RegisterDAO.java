/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author PC
 */
public class RegisterDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void register(String user, String pass, String fullname, String address, int phone, String email){
        String query = "Insert into Acocunts\n"
                + "values(0,?,?,?,?,?,?,0)";
        try{
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, fullname);
            ps.setString(4, address);
            ps.setInt(5, phone);
            ps.setString(6, email);
            ps.executeUpdate();
        } catch(Exception e){
            
        }
    }
    
    public Accounts checkRegister(String user){
        String query = "Select * from Accounts"
                + "where UserName = ?";
        try{
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            
            while(rs.next()){
                return new Accounts(rs.getInt(1), 
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getString(5),
                                    rs.getInt(6),
                                    rs.getString(7),
                                    rs.getBoolean(8));
            }
        } catch(Exception e){
            
        }
        return null;
    }
}
