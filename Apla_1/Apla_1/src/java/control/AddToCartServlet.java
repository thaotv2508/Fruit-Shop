/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Cart;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;

public class AddToCartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String quantity = request.getParameter("quantity");
        
        if (quantity == null) {
            quantity = "1";
        }
        else{
            int quan = Integer.parseInt(quantity);
        }
        
        try (PrintWriter out = response.getWriter()) {
            ArrayList<Cart> cartList = new ArrayList<>();

            int id = Integer.parseInt(request.getParameter("id"));
            Cart cm = new Cart();
            cm.setId(id);
            cm.setQuantity(1);

            HttpSession session = request.getSession();
            ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");

            if (cart_list == null) {
                cartList.add(cm);
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("shop");
//                out.println("session created and added the list");
            } else {
                cartList = cart_list;
                boolean exist = false;

                for (Cart c : cart_list) {
                    if (c.getId() == id) {
                        exist = true;
//                        out.println("product exist");
                        request.getRequestDispatcher("shop").forward(request, response);
//                        out.println("<h3 style='color:crimson; text-align:center'>Item already exist in Cart.<a  href='Cart.jsp'>Go to Cart Page</a></h3>");
                    }
                }
                if (!exist) {
                    cartList.add(cm);
//                    out.println("product added");
                    response.sendRedirect("shop");
                }
            }
        }
           
       }
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}
