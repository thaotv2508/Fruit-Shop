/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.DAO;
import entity.Account;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.*;

public class LoginControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        DAO dao = new DAO();
        Account acc = dao.login(username, password);
        if(acc == null){
            request.setAttribute("mess", "Wrong Username or Password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
//            session.setMaxInactiveInterval(10);settime để tự động đóng session
            response.sendRedirect("home");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        DAO dao = new DAO();
        Account a = dao.login(username, password);
        if(a == null){
            request.setAttribute("mess", "Wrong Username or Password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("home").forward(request, response);
        }
    }

    
}
