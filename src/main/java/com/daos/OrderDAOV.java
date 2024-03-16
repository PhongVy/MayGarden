/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Accounts;
import com.models.Cart;
import com.models.Order;
import com.models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
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
                        rs.getString(5),
                        rs.getBoolean(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
//    public void addOrder(Accounts acc, Cart cart, String note, boolean status){
//        LocalDate curDate = java.time.LocalDate.now();
//        String date = curDate.toString();
//        try {
//            //add vao bang order
//            String sql = "insert into Orders values(?,?,?,?,?)";
//            conn = new DBConnection().getConnection();
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, acc.getUserId());
//            ps.setString(2, date);
//            ps.setString(3, note);
//            ps.setBoolean(4, status);
//            ps.setFloat(5, cart.getTotalMoney());
//            ps.executeUpdate();
//            
//            //lay orderid vua moi add
//            String sqll = "select top 1 OrderId from Orders order by OrderId desc";
//            PreparedStatement ps2 = conn.prepareStatement(sqll);
//            ps2.setInt(1, acc.getUserId());
//            ps2.setString(2, date);
//            ps2.setString(3, note);
//            ps2.setBoolean(4, status);
//            ps2.setFloat(5, cart.getTotalMoney());
//            ps2.executeUpdate();
//            
//            //add vao order datail
//            if(rs.next()){
//                int oid = rs.getInt(1);
//                for(Item i:cart.getItems()){
//                    String sql2="insert into OrderDetails values(?,?,?,?)";
//                    PreparedStatement ps3 = conn.prepareStatement(sql2);
//                    ps3.setInt(1, oid);
//                    ps3.setInt(2, i.getProduct().getProductId());
//                    ps3.setInt(3, i.getQuantity());
//                    ps3.setFloat(4, i.getPrice());
//                    ps3.executeUpdate();
//                }
//            }
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//    }
    
//    public static void main(String[] args) {
//        OrderDAOV dao = new OrderDAOV();
//        List<Order> list = dao.getAllOrder();
//        for (Order o : list) {
//            System.out.println(o);
//        }
//    }
}
