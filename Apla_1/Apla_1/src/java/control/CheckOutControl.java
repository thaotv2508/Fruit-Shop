/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import dao.OrderDAO;
import entity.Account;
import entity.Cart;
import entity.New;
import entity.Order;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.text.SimpleDateFormat;
import java.util.*;

public class CheckOutControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            SimpleDateFormat fmat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();

            ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
            Account acc = (Account) request.getSession().getAttribute("acc");
            if (cart_list != null & acc != null) {
                
                for(Cart c : cart_list){
                    Order order = new Order();
                    order.setId(c.getId());
                    order.setUid(acc.getId());
                    order.setQuantity(c.getQuantity());
                    order.setDate(fmat.format(date));
                    
                    OrderDAO odDAO = new OrderDAO();
                    boolean sao = odDAO.insertOrder(order);
                    if(!sao) break;
                }
                cart_list.clear();
                response.sendRedirect("Order.jsp");
            }else{
                if(acc == null) response.sendRedirect("Login.jsp");
                response.sendRedirect("Cart.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}
