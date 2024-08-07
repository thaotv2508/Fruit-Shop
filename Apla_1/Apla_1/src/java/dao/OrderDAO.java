/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author My PC
 */
public class OrderDAO extends DBContext {
      public Connection con = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    public String xSql = null;

    public OrderDAO() {
        con = connection;
    }

    public void finalize() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public boolean insertOrder(Order model){
    boolean result = false;
    try {
        xSql = "INSERT INTO [Order] (p_id, u_id, o_quantity, o_date) VALUES (?, ?, ?, ?)";
        ps = this.con.prepareStatement(xSql);
        ps.setInt(1, model.getId()); // Thay đổi model.getId() thành model.getPid()
        ps.setInt(2, model.getUid());
        ps.setInt(3, model.getQuantity());
        ps.setString(4, model.getDate());
        ps.executeUpdate();
        result = true;
    } catch (Exception e) { // Sử dụng SQLException thay vì Exception
        e.printStackTrace();
    } finally { // Đảm bảo rằng tài nguyên được giải phóng sau khi sử dụng
        try {
            if (ps != null) {
                ps.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    return result;   
}
    
   public List<Order> userOrder(int id) {
    List<Order> list = new ArrayList<>();
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    try {
        String sql = "select * from [Order] where u_id= ? order by [Order].o_id desc";
        ps = this.con.prepareStatement(sql);
        ps.setInt(1,id);
        rs = ps.executeQuery();
        
        while (rs.next()) {
            Order order = new Order();
            DAO dao = new DAO();
            int pId = rs.getInt("p_id");
            String idd = String.valueOf(pId);
            Product pro = dao.getProductByID(idd);
            order.setOrderId(rs.getInt("o_id"));
            order.setId(pId);
            order.setName(pro.getName());
            order.setPrice(pro.getPrice()* rs.getInt("o_quantity"));
            order.setQuantity(rs.getInt("o_quantity"));
            order.setDate(rs.getString("o_date"));
            list.add(order);
        }
    } catch (Exception e) {
        // Log the exception or handle it appropriately
        e.printStackTrace();
    } finally {
        // Close resources in reverse order of opening
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            // Log the exception or handle it appropriately
            e.printStackTrace();
        }
    }
    return list;
}
   
   public void cancelOrder(int id){
       try{
           xSql = "delete from [Order] where o_id = ?";
           ps = this.con.prepareStatement(xSql);
           ps.setInt(1, id);
           ps.execute();
       }catch(Exception e){
           e.printStackTrace();
       }
   }
   
   public List<Order> listOfOrder() {
    List<Order> list = new ArrayList<>();
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    try {
        
        String sql = "SELECT * FROM [Order] ";
        ps = this.con.prepareStatement(sql);
        rs = ps.executeQuery();
        
        while (rs.next()) {
            Order order = new Order();
            int pId = rs.getInt("p_id");
            DAO dao = new DAO();
            Product pro = dao.getProductByID(String.valueOf(pId)); // Assuming getProductByID method is in the same DAO class
            order.setOrderId(rs.getInt("o_id"));
            order.setId(pId);
            order.setName(pro.getName());
            order.setPrice(pro.getPrice() * rs.getInt("o_quantity"));
            order.setQuantity(rs.getInt("o_quantity"));
            order.setDate(rs.getString("o_date"));
            list.add(order);
        }
    } catch (Exception e) {
        // Log the exception or handle it appropriately
        e.printStackTrace();
    } finally {
        // Close resources in reverse order of opening
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            // Log the exception or handle it appropriately
            e.printStackTrace();
        }
    }
    return list;
}


   
    
    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        for (Order o : dao.listOfOrder()) {
            System.out.println(o);
        }
    }
}
