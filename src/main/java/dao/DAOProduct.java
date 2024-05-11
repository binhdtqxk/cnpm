package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import context.DBContext;
import entity.Product;

public class DAOProduct {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() throws SQLException {
        System.out.println("getAllproduct");
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4)));
//				System.out.println("product"+rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public List<Product> getFirstFourPr() throws SQLException {
        List<Product> list = new ArrayList<>();
        int count = 0;
        String query = "Select * from Product";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4)));
                System.out.println("product" + rs.getString(3));
                count++;
                if (count == 4)
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public List<Product> getFirstFourOxford() throws SQLException {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product where TypeOfShoe='OXFORD'";
        int count = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4)));
                count++;
                System.out.println("product" + rs.getString(1));
                if (count == 4)
                    break;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public List<Product> getFirstFourLoafer() throws SQLException {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product where TypeOfShoe='LOAFER'";
        int count = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4)));
                count++;
                if (count == 4)
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public List<Product> getFirstFourDerby() throws SQLException {
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product where TypeOfShoe='DERBY'";
        int count = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4)));
                count++;
                if (count == 4)
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public Product getProductById(int id) throws SQLException {
        Product result = new Product();
        String query = "Select * from Product where IDOfShoe=?";
        int count = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                result = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(5), rs.getInt(4));
                System.out.println(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return result;
    }
    public int addProduct(Product product) {
        String query = "Insert into product(ImgOfShoe, TypeOfShoe, NameOfShoe, PriceOfShoe) values (?,?,?,?)";
        int rs = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getImgOfShoe());
            ps.setString(2, product.getTypeOfShoe());
            ps.setString(3, product.getNameOfShoe());
            ps.setInt(4, product.getPriceOfShoe());

            rs = ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return rs;
    }

    public int deleteProduct(String idShoe) {
        String query = "delete from product where IDOfShoe = ?";
        int rs = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, idShoe);
            rs = ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return rs;
    }

    public static void main(String[] args) throws SQLException {
        DAOProduct d = new DAOProduct();
        d.getProductById(1);
    }

}
