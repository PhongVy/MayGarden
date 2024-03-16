/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.daos;

import com.connection.DBConnection;
import com.models.Cart;
import com.models.Categories;
import com.models.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class ProductDAOV {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where BestSaler = 'True'";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where Published = 'True'";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Product getProductById(String id) {
        String query = "select * from Products where ProductId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchProduct(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where ProductName like ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Categories> getListCat() {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Product> getProductByCat(String CatId) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products where CatId = ?";
        try {
            conn = new DBConnection().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, CatId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getInt(9),
                        rs.getBoolean(10),
                        rs.getBoolean(11)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        try {
            if (cartList != null && !cartList.isEmpty()) {
                StringBuilder query = new StringBuilder("SELECT * FROM Products WHERE ProductId IN (");
                for (int i = 0; i < cartList.size(); i++) {
                    if (i > 0) {
                        query.append(",");
                    }
                    query.append("?");
                }
                query.append(")");

                conn = new DBConnection().getConnection();
                ps = conn.prepareStatement(query.toString());
                for (int i = 0; i < cartList.size(); i++) {
                    ps.setInt(i + 1, cartList.get(i).getProductId());
                }
                rs = ps.executeQuery();
                while (rs.next()) {
                    Cart cart = new Cart();
                    cart.setProductId(rs.getInt("ProductId"));
                    cart.setProductName(rs.getString("ProductName"));
                    cart.setPrice(rs.getFloat("Price"));
                    cart.setQuantity(getQuantityByProductId(cartList, cart.getProductId()));
                    cart.setTotalPrice(cart.getPrice() * cart.getQuantity());
                    products.add(cart);
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return products;
    }

    private int getQuantityByProductId(ArrayList<Cart> cartList, int productId) {
        for (Cart cart : cartList) {
            if (cart.getProductId() == productId) {
                return cart.getQuantity();
            }
        }
        return 0;
    }

//    public static void main(String[] args) {
//        ProductDAOV dao = new ProductDAOV();
//        List<Categories> list = dao.getListCat();
//        
//        for (Categories o : list) {
//            System.out.println(o);
//        }
//    }
}
