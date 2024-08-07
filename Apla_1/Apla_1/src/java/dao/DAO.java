/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Cart;
import entity.New;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author My PC
 */
public class DAO extends DBContext {

    public Connection con = null;
    public PreparedStatement ps = null;
    public ResultSet rs = null;
    public String xSql = null;

    public DAO() {
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

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        xSql = "select * from product";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<New> getAllNew() {
        List<New> list1 = new ArrayList<>();
        xSql = "select * from new";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                list1.add(new New(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list1;
    }

    public Product getProductByID(String id) {
        xSql = "select * from product\n"
                + "where id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        xSql = "select * from product\n"
                + "where sell_ID = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public New getNewID(String id) {
        xSql = "select * from new\n"
                + "where id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new New(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        xSql = "select * from product\n"
                + "where [name] like ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Account login(String user, String pass) {
        xSql = "select * from Account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account checkUserExist(String user) {
        xSql = "select * from Account\n"
                + "where [user] = ?\n";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void signUp(String user, String pass) {
        xSql = "insert into Account\n"
                + "values (?,?,0,0)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pid) {
        xSql = "delete from product\n"
                + "where id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, String price, String description, int sid) {
        xSql = "INSERT [dbo].[product] ([name], [image], [price], [description], [sell_ID])\n"
                + " VALUES (?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setInt(5, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String description, String pid) {
        xSql = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "[price] = ?,\n"
                + "[description] = ?\n"
                + "where id = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<>();

        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    xSql = "select * from product where id = ?";
                    try (PreparedStatement ps = con.prepareStatement(xSql)) {
                        ps.setInt(1, item.getId());
                        try (ResultSet rs = ps.executeQuery()) {
                            while (rs.next()) {
                                Cart row = new Cart();
                                row.setId(rs.getInt("id"));
                                row.setName(rs.getString("name"));
                                row.setPrice(rs.getDouble("price") * item.getQuantity());
                                row.setImage(rs.getString("image"));
                                row.setQuantity(item.getQuantity());
                                products.add(row);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }

    public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String sql = "SELECT price FROM product WHERE id = ?";
                    ps = con.prepareStatement(sql);
                    ps.setInt(1, item.getId());
                    rs = ps.executeQuery();

                    if (rs.next()) {
                        double price = rs.getDouble("price");
                        sum += price * item.getQuantity();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return sum;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        for (Product p : dao.getAllProduct()) {
            System.out.println(p);
        }
//
//        for (New n : dao.getAllNew()) {
//            System.out.println(n);
//        }
//    }
    }

}
