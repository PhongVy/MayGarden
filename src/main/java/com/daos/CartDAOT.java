/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CartDAOT extends DBConnection{
    

    

    public int AddNew(Cart c) {
        String sql = "insert into Cart values(?,?,?)";
        int ketqua = 0;
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, c.getUserId());
            ps.setInt(2, c.getProductId());
            
            ps.setInt(3, c.getQuantity());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }

    public int update(Cart cart) {
        String sql = "UPDATE Cart SET UserId = ?, ProductId = ?, Quantity = ? WHERE CartId = ?";
        int ketqua = 0;

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cart.getUserId());
            ps.setInt(2, cart.getProductId());
            ps.setInt(3, cart.getQuantity());
            ps.setInt(4, cart.getCartId()); // Cập nhật cho cartID được truyền vào

            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }

    public List<Cart> getAll(int userID) {
        String sql = "SELECT * FROM Cart WHERE UserId=?";
        List<Cart> c = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            int cartId = rs.getInt("CartId");
            int userId = rs.getInt("UserId");
            int productId = rs.getInt("ProductId");
            int quantity = rs.getInt("Quantity");
            Cart cart = new Cart(cartId, userId, productId, quantity);
            c.add(cart);
        } catch (SQLException ex) {
            Logger.getLogger(CartDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }

    public void delete(int productId) {
        String sql = "delete from [Cart] where ProductId = ?";

        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setInt(1, productId);

            int rowsDeleted = preparedStatement.executeUpdate();

            if (rowsDeleted > 0) {
                System.out.println("Cart deleted successfully!");
            } else {
                System.out.println("No shopping carts were deleted.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int deleteWhenBuy(int cartID) {
        String sql = "delete from [Cart] where CartId = ?";
        int rs = 0;
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);

            preparedStatement.setInt(1, cartID);

            rs = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public int Update(Cart c) throws SQLException {
        String sql = "update [Cart] set Quantity=? where CartId=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        int ketqua = 0;
        try {
             ps.setInt(1, c.getQuantity());
            ps.setInt(2, c.getCartId());
            ketqua = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketqua;
    }

    public List<Cart> ShowinCart(int userID) {
        List<Cart> mycart = new ArrayList<>();
        String sql = "SELECT * FROM Cart WHERE UserId=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                mycart.add(new Cart(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CartDAOT.class.getName()).log(Level.SEVERE, null, ex);
        }
        return mycart;
    }
}
