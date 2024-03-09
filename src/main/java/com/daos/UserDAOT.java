/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.models.UserT;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.Date;
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
                u = new UserT(rs.getInt("userID"), rs.getString("userEmail"), rs.getString("userPassword"), rs.getString("userName"),
                        rs.getDate("userDayOfBirth"), rs.getString("userPhone"), rs.getString("userAddress"));
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
                user = new UserT(rs.getInt("userID"), rs.getString("userEmail"), rs.getString("userPassword"), rs.getString("userName"),
                        rs.getDate("userDayOfBirth"), rs.getString("userPhone"), rs.getString("userAddress"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public boolean Login(UserT user) throws SQLException {
        ResultSet rs = null;
        String sql = "Select * from [User] where userEmail = ? and userPassword=?";
        String password = user.getUserPassword();
        String hashPassword = hashPassword(password, "MD5");
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUserEmail());
            ps.setString(2, hashPassword);
            rs = ps.executeQuery();
        } catch (Exception e) {

        }

        return rs.next();
    }

    public int AddNew(UserT us) throws SQLException {
        String sql = "insert into [User](userEmail,userPassword, userName, userDayOfBirth, userPhone, userAddress) values (?,?,?,?,?,?);";
        String password = us.getUserPassword();
        String hashPassword = hashPassword(password, "MD5");
        int ketqua = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, us.getUserEmail());
            ps.setString(2, hashPassword.toUpperCase());
            ps.setString(3, us.getUserName());
            ps.setDate(4, us.getUserDOB());
            ps.setString(5, us.getUserPhone());
            ps.setString(6, us.getUserAddress());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ketqua;
    }

    public int Update(UserT u) {
        String sql = "update [User] set userName=?, userDayOfBirth=?, userPhone=?, userAddress=? where userID=?";
        int ketqua = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, u.getUserName());
            ps.setDate(2, u.getUserDOB());
            ps.setString(3, u.getUserPhone());
            ps.setString(4, u.getUserAddress());
            ps.setInt(5, u.getUserID());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }
    
    public void addUser(String email, String name, String phone, String address, Date date,String password) {
        try {
            ps = conn.prepareStatement("INSERT INTO [dbo].[User]\n" +
                    "           ([userEmail]\n" +
                    "           ,[userPassword]\n" +
                    "           ,[userName]\n" +
                    "           ,[userDayOfBirth]\n" +
                    "           ,[userPhone]\n" +
                    "           ,[userAddress])\n" +
                    "     VALUES\n" +
                    "           (?,?,?,?,?,?)");
            ps.setString(1,email);
            ps.setString(1,password);
            ps.setString(3,name);
            ps.setDate(4,date);
            ps.setString(5,phone);
            ps.setString(6,address);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public int UpdatePassword(UserT u) {
        String password = u.getUserPassword();
        String hashPassword = hashPassword(password, "MD5");
        String sql = "update [User] set userPassword=? where userID=?";
        int ketqua = 0;
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, hashPassword.toUpperCase());
            ps.setInt(2, u.getUserID());
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
                UserT user = new UserT(rs.getInt("userID"), rs.getString("userEmail"), rs.getString("userPassword"), rs.getString("userName"),
                        rs.getDate("userDayOfBirth"), rs.getString("userPhone"), rs.getString("userAddress"));
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
                user = new UserT(rs.getInt("userID"), rs.getString("userEmail"), rs.getString("userPassword"), rs.getString("userName"),
                        rs.getDate("userDayOfBirth"), rs.getString("userPhone"), rs.getString("userAddress"));
                return user;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
  public void updateUser(int id, String email, String name, String phone, String address, Date date) {
        try {
            ps = conn.prepareStatement("UPDATE [dbo].[User]\n" +
                    "   SET [userEmail] = ?\n" +
                    "      ,[userName] = ?\n" +
                    "      ,[userDayOfBirth] = ?\n" +
                    "      ,[userPhone] = ?\n" +
                    "      ,[userAddress] = ?\n" +
                    " WHERE userID = ?");
            ps.setString(1,email);
            ps.setString(2,name);
            ps.setDate(3,date);
            ps.setString(4,phone);
            ps.setString(5,address);
            ps.setInt(6,id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     public void deleteUser(int id){
        try {
            ps = conn.prepareStatement("DELETE FROM [dbo].[User]\n" +
                    "      WHERE userID = ?");
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
             public void updatePassword(String email,String password){
        try {
            ps = conn.prepareStatement("update [User] set userPassword = ? where userEmail = ? ");
            ps.setString(1,password);
            ps.setString(2,email);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
