/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.service.MD5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author PC
 */
public class LoginDAOV {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public Accounts checkLogin(String user, String pass){
        try{
            String query = "select * from Accounts where UserName= ? and Password= ?";
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){
                Accounts a = new Accounts(rs.getInt(1), 
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getString(5),
                                    rs.getInt(6),
                                    rs.getString(7),
                                    rs.getBoolean(8));
                return a;
            }
            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return null;
    }
}
