/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import entity.Cart;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class QuantityControl extends HttpServlet {
    
    
    
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter();) {
            String action = request.getParameter("action");
            int id = Integer.parseInt(request.getParameter("id"));

            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");

            if (action != null && id >= 1) {
                if (action.equals("inc")) {
                    for (Cart c : cart_list) {
                        if (c.getId() == id )  {
                            int quantity = c.getQuantity();
                            quantity++;
                            c.setQuantity(quantity);
                            response.sendRedirect("Cart.jsp");
                        }
                    }
                }
                if (action.equals("des")) {
                    Iterator<Cart> iterator = cart_list.iterator();
                    while (iterator.hasNext()) {
                        Cart c = iterator.next();
                        if (c.getId() == id) {
                            int quantity = c.getQuantity();
                            quantity--;
                            c.setQuantity(quantity);
                            if (quantity == 0) {
                                iterator.remove(); // Xóa sản phẩm khi số lượng bằng 0
                            }
                            break;
                        }
                    }
                    response.sendRedirect("Cart.jsp");
                }
            } else {
                response.sendRedirect("Cart.jsp");
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}
