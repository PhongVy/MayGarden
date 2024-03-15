/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.daos.CartDAOT;
import com.daos.ProductDAOV;
import com.daos.AccountDAO;
import com.models.Cart;
import com.models.Item;
import com.models.Product;
import com.models.Accounts;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartControllerT</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartControllerT at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String path = request.getRequestURI();
        if (path.startsWith("/MayGarden/Cart/")) {
            String[] s = path.split("/");
            String id = s[s.length - 1];

            // Kiểm tra ID có phai la so nguyen hay khong
            boolean isInteger = true;
            try {
                Integer.parseInt(id);
            } catch (NumberFormatException e) {
                isInteger = false;
            }

            // Chỉ lấy user nếu id là số nguyên, còn nếu không phải số thì bỏ qua
            if (isInteger) {
                AccountDAO dao = new AccountDAO();
                Accounts u;
                
                u = dao.getAccountByID(id);
                
                HttpSession session = request.getSession();
                if (u != null && isInteger) {
                    CartDAOT cdao = new CartDAOT();
                    List<Cart> mycart = cdao.ShowinCart(Integer.parseInt(id));
                    session.setAttribute("userIn4", u);
                    request.setAttribute("mycartlist", mycart);
                    request.getRequestDispatcher("/Cart.jsp").forward(request, response);
                }
            }
        }
    }
public List<Cart> getCartItems(int userId) {
    CartDAOT cartDAO = new CartDAOT();
    return cartDAO.ShowinCart(userId);
}
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getParameter("deletebtn") != null) {
            int cartId = Integer.parseInt(request.getParameter("cartId"));
            int userId = Integer.parseInt(request.getParameter("userId"));
            int productId = Integer.parseInt(request.getParameter("productId"));
            
            int Quantity = Integer.parseInt(request.getParameter("Quantity"));

            Cart c = new Cart(cartId, userId, productId, Quantity);
            CartDAOT dao = new CartDAOT();
            dao.delete(productId);

            HttpSession session = request.getSession();
            session.setAttribute("cartList", c);
            response.sendRedirect("/MayGarden/Cart/" + userId);
        }

        if (request.getParameter("editCartbtn") != null) {
            int cartId = Integer.parseInt(request.getParameter("cartId"));
            int userId = Integer.parseInt(request.getParameter("userId"));
            int productId = Integer.parseInt(request.getParameter("productId"));
            int Quantity = Integer.parseInt(request.getParameter("Quantity"));

            Cart c = new Cart(cartId, userId, productId, Quantity);
            CartDAOT dao = new CartDAOT();
            int rs = dao.update(c);
            if (rs != 0) {
                HttpSession session = request.getSession();
                session.setAttribute("thongtingiohang", c);
                request.setAttribute("thongBaoCapNhat", "Chỉnh sửa thành công.");
                response.sendRedirect("/MayGarden/Cart/" + userId);
            } else {
                request.setAttribute("thongBaoCapNhat", "Error.");
                response.sendRedirect("/MayGarden/Cart/" + userId);
            }
        }

        if (request.getParameter("buy") != null) {
            int userID = Integer.parseInt(request.getParameter("userId"));
              CartDAOT dao = new CartDAOT();
                 List<Cart> listcart = dao.ShowinCart(userID);
            for (Cart c : listcart) {
                    ProductDAOV productDAO = new ProductDAOV();
                    Product product = productDAO.getProductById(c.getProductId());
                    Item i = new Item();
                    i.setProduct(product);
                    i.setProductQuantity(c.getQuantity());
                    i.setProductPrice(product.getPrice());
                    
                    List<Item> items = c.getItems() != null ? c.getItems() : new ArrayList<Item>();
                    items.add(i);
                    c.setItems(items);
                }

                HttpSession session = request.getSession();
                session.setAttribute("cartList", listcart);
            response.sendRedirect(request.getContextPath() + "/order");
        }
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
