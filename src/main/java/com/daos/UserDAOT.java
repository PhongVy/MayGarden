/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.models.UserT;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dell
 */
public class UserDAOT {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public UserDAOT() throws ClassNotFoundException, SQLException {
        conn = com.connection.DBConnection.getConnection();
    }

    public String hashPassword(String password, String algorithm) {
        try {
            MessageDigest digest = MessageDigest.getInstance(algorithm);
            byte[] hashedBytes = digest.digest(password.getBytes());

            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : hashedBytes) {
                stringBuilder.append(String.format("%02x", b));
            }

            return stringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    public UserT GetUserId(String id) {
        UserT u = new UserT();
        try {
            ps = conn.prepareStatement("select * from [User] where userID=?");
            ps.setString(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                 u = new UserT(rs.getInt("userID"), rs.getString("userName"), rs.getString("Password"), rs.getString("FullName"),
                        rs.getString("Address"), rs.getInt("Phone"), rs.getString("Email"), rs.getBoolean("IsAdmin"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return u;
    }

    public UserT GetUser(String email) {
        UserT user = new UserT();
        try {
            ps = conn.prepareStatement("select * from [User] where userEmail=?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                user = new UserT(rs.getInt("userID"), rs.getString("userName"), rs.getString("Password"), rs.getString("FullName"),
                        rs.getString("Address"), rs.getInt("Phone"), rs.getString("Email"), rs.getBoolean("IsAdmin"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    

    

    public int Update(UserT u) {
        String sql = "update [User] set userName=?, FullName=?, Phone=?, Email=? where userID=?";
        int ketqua = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUserName());
            ps.setString(2, u.getFullName());
            ps.setInt(3, u.getPhone());
            ps.setString(4, u.getAddress());
            ps.setString(5, u.getEmail());
            ps.setInt(6, u.getUserId());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }
    
   
    public int UpdatePassword(UserT u) {
        String password = u.getPassword();
        String hashPassword = hashPassword(password, "MD5");
        String sql = "update [User] set userPassword=? where userID=?";
        int ketqua = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, hashPassword.toUpperCase());
            ps.setInt(2, u.getUserId());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }
     public List<UserT> getAllUsers() {
        List<UserT> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement("select * from [User]");
            rs = ps.executeQuery();
            while (rs.next()) {
                UserT user = new UserT(rs.getInt("userID"), rs.getString("userName"), rs.getString("Password"), rs.getString("FullName"),
                        rs.getString("Address"), rs.getInt("Phone"), rs.getString("Email"), rs.getBoolean("IsAdmin"));
                list.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
             public UserT GetU(String email) {
        
        try {
            ps = conn.prepareStatement("select * from [User] where userEmail=?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                UserT user = new UserT();
                user = new UserT(rs.getInt("userID"), rs.getString("userName"), rs.getString("Password"), rs.getString("FullName"),
                        rs.getString("Address"), rs.getInt("Phone"), rs.getString("Email"), rs.getBoolean("IsAdmin"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
  public void updateUser(int id, String email, String name, String FullName, int phone, String address) {
        try {
            ps = conn.prepareStatement("UPDATE [dbo].[User]\n" +
                    "   SET [userEmail] = ?\n" +
                    "      ,[userName] = ?\n" +
                    "      ,[FullName] = ?\n" +
                    "      ,[Phone] = ?\n" +
                    "      ,[Address] = ?\n" +
                    " WHERE userID = ?");
            ps.setString(1,email);
            ps.setString(2,name);
            ps.setString(3,FullName);
            ps.setInt(4,phone);
            ps.setString(5,address);
            ps.setInt(6,id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
             public void updatePassword(String email,String password){
        try {
            ps = conn.prepareStatement("update [User] set Password = ? where Email = ? ");
            ps.setString(1,password);
            ps.setString(2,email);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
