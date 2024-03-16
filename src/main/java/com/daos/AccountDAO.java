/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.models.Categories;
import com.models.Product;
import static com.service.MD5.getMd5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Acer
 */
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Accounts> getAllAccount() {
        List<Accounts> list = new ArrayList<>();
        String query = "Select * from Accounts";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Accounts(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getBoolean(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void InsertAccount(String username, String password, String fullname, String address, int phone, String email, Boolean isadmin) {
        String hashPass = getMd5(password);
        String query = "Insert into Accounts "
                + "values(?,?,?,?,?,?,?)";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, hashPass);
            ps.setString(3, fullname);
            ps.setString(4, address);
            ps.setInt(5, phone);
            ps.setString(6, email);
            ps.setBoolean(7, isadmin);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Accounts getAccountByID(String UserId) {

        String query = "select * from Accounts where UserId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, UserId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Accounts(rs.getInt(1),
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

    public void EditAccount(String userid, String username, String password, String fullname, String address, String phone, String email, Boolean isadmin) {
        String query = "Update Accounts set UserName=?, Password=?, FullName=?, Address=?, Phone=?, Email=?, Isadmin=? where UserId=?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, fullname);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setString(6, email);
            ps.setBoolean(7, isadmin);
            ps.setString(8, userid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void DeleteAccount(String UserId) {
        String query = "delete from Accounts where [UserId] = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, UserId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List<Accounts> searchAccount(String txtSearch) {
        List<Accounts> list = new ArrayList<>();
        String query = "select * from Accounts where UserName like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Accounts(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getBoolean(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
//    public static void main(String[] args) {
//        AccountDAO dao = new AccountDAO();
//        List<Accounts> list = dao.getAllAccount();
//        for (Accounts o : list) {
//            System.out.println(o);
//        }
//    }
}
