/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.New;
import entity.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;

public class SearchControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String txtSearch = request.getParameter("txt");

        DAO dao = new DAO();
        List<Product> list = dao.searchByName(txtSearch);
        
        List<New> list1 = dao.getAllNew();
        List<New> listNewThree = new ArrayList<>();
        for (int i = 0; i < Math.min(list1.size(), 3); i++) {
            listNewThree.add(list1.get(i));
        }

        request.setAttribute("listNewTwo", listNewThree);
        request.setAttribute("listP", list);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
    }
}
