/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.daos.ProductDAOV;
import com.models.Cart;
import com.models.Categories;
import com.models.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author PC
 */
public class CartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("Cart");
        String productIdToDelete = request.getParameter("deleteId");
        if (productIdToDelete != null && !productIdToDelete.isEmpty()) {
            int deleteId = Integer.parseInt(productIdToDelete);
            Iterator<Cart> iterator = cartList.iterator();
            while (iterator.hasNext()) {
                Cart cartItem = iterator.next();
                if (cartItem.getProductId() == deleteId) {
                    iterator.remove();
                    break;
                }
            }
            session.setAttribute("Cart", cartList); // Cập nhật giỏ hàng sau khi xóa
            response.sendRedirect("Cart");
            return; // Chuyển hướng đã được thực hiện, không cần thực hiện tiếp mã bên dưới
        }

// Nếu không có yêu cầu xóa sản phẩm, tiếp tục hiển thị trang giỏ hàng
        response.setContentType("text/html;charset=UTF-8");

        if (cartList != null && !cartList.isEmpty()) {
            ProductDAOV dao = new ProductDAOV();
            List<Cart> cartProducts = dao.getCartProducts(cartList);
            request.setAttribute("cartProducts", cartProducts);
            request.getRequestDispatcher("Cart.jsp").forward(request, response);
        } else {
            System.out.println("Giỏ hàng trống");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
