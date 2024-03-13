/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import static com.service.MD5.getMd5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author PC
 */
public class RegisterDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void register(String user, String pass, String fullname, String address, String phone, String email) {
        String hashPass = getMd5(pass);

        String query = "INSERT INTO Accounts (UserName, Password, FullName, Address, Phone, Email, IsAdmin) VALUES (?, ?, ?, ?, ?, ?, 'False')";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, hashPass);
            ps.setString(3, fullname);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setString(6, email);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Đóng tài nguyên (Connection, PreparedStatement, ResultSet) trong khối finally
            // để tránh rò rỉ tài nguyên
            closeResources(conn, ps, null);
        }
    }

    private void closeResources(Connection conn, PreparedStatement ps, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Accounts checkRegister(String user) {

        String query = "Select * from Accounts "
                + "where Email = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
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
            e.printStackTrace();
        }
        return null;
    }
}
