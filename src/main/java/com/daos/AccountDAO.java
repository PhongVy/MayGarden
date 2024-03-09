/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.models.Categories;
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
//    public static void main(String[] args) {
//        AccountDAO dao = new AccountDAO();
//        List<Accounts> list = dao.getAllAccount();
//        for (Accounts o : list) {
//            System.out.println(o);
//        }
//    }
}
