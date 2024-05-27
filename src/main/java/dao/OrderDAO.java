package dao;

import context.DBContext;
import entity.Address;
import entity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class OrderDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //lấy ra địa chỉ của người dùng đã lưu ở trong database
    public boolean saveOrder(int userId, List<Product> products, Map<String, Integer> productMap, int priceSum) {
        boolean res=false;
        int id=0;
        do {
            Random r = new Random();
            id = r.nextInt(9999);
            //kiểm tra id có bị trùng không
            String checkId = "SELECT * FROM orders where id=?";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(checkId);
                ps.setInt(1, id);
                rs=ps.executeQuery();
                res=rs.next();
            } catch (Exception e) {
                System.out.println(e);
            }
        } while (res);
        String query = "INSERT INTO orders(`id`,`user_id`,`priceSum`) values(?,?,?) ";
        String detailOrder = "INSERT INTO orderDetail(`product_id`,`quantity`,`fullName`,`order_id`) values(?,?,?,?)";
        int count = 0;
        try {
            //thêm vào bảng order trước
            ps = conn.prepareStatement(query);
            ps.setInt(1,id);
            ps.setInt(2, userId);
            ps.setInt(3, priceSum);
            ps.executeUpdate();
            try {
                //sau đó thêm từng sản phẩm cùng với số lượng, màu và kích cỡ vào bảng chi tiết sản phẩm
                ps = conn.prepareStatement(detailOrder);
                for (Product pr :
                        products) {
                    ps.setInt(1, pr.getIdOfShoe());
                    ps.setInt(2, productMap.get(pr.getNameOfShoe()));
                    ps.setString(3, pr.getNameOfShoe());
                    ps.setInt(4,id);
                    ps.executeUpdate();
                }
            } catch (Exception e) {
                System.out.println(e);
                return false;
            }
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
        return true;
    }

    public boolean saveOrderNonU(List<Product> products, Map<String, Integer> productMap, int priceSum) {
        return false;
    }
    public  void test(){
        boolean res=false;
        int id=0;
        do {
            Random r = new Random();
            id = r.nextInt(9999);
            //kiểm tra id có bị trùng không
            String checkId = "SELECT * FROM orders where id=?";
            try {
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(checkId);
                ps.setInt(1, id);
                rs=ps.executeQuery();
                res=rs.next();
            } catch (Exception e) {
                System.out.println(e);
            }
        } while (res);
        System.out.println(id);
    }
    public static void main(String[] args) {
        OrderDAO o= new OrderDAO();
        o.test();
    }
}
