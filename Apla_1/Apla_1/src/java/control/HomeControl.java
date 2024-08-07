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

public class HomeControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Product> firstThreeProducts = new ArrayList<>();
        for (int i = 0; i < Math.min(list.size(), 3); i++) {
            firstThreeProducts.add(list.get(i));
        }

        List<New> list1 = dao.getAllNew();
        List<New> listNewThree = new ArrayList<>();
        for (int i = 0; i < Math.min(list1.size(), 3); i++) {
            listNewThree.add(list1.get(i));
        }
         ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");
    if(cart_list != null){  
    request.setAttribute("cart_list",cart_list);}

        request.setAttribute("listNewTwo", listNewThree);
        request.setAttribute("listP", firstThreeProducts);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}
