/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Cart;
import entity.New;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;

public class CartControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
        List<Cart> cartProducts = null;

        if (cartList != null) {
            DAO dao = new DAO(); // Assuming you have a DAO class for database access
            cartProducts = dao.getCartProducts(cartList);
        }

        request.setAttribute("cartProduct", cartProducts); // Use "cartProducts" for consistency

        RequestDispatcher dispatcher = request.getRequestDispatcher("Cart.jsp"); // Assuming your JSP is cart.jsp
        dispatcher.forward(request, response);
    
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
}
}
