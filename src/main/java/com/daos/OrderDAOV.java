/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class OrderDAOV {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Order> getAllOrder() {
        List<Order> list = new ArrayList<>();
        String query = "Select * from Orders";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(
                        rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getDate(3), 
                        rs.getDate(4), 
                        rs.getString(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public static void main(String[] args) {
        OrderDAOV dao = new OrderDAOV();
        List<Order> list = dao.getAllOrder();
        for (Order o : list) {
            System.out.println(o);
        }
    }
}
