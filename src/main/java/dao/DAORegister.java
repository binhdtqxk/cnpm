package dao;

import context.DBContext;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAORegister {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void addAccount(User user) {
        String query = null;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement("INSERT INTO users(`lastName`,`firstName`,`phoneNumber`,`email`,`password`,`role`) VALUES(?,?,?,?,?,?)");
            ps.setString(1, user.getLastName());
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getPhoneNumber());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassword());
            ps.setInt(6, user.getRole());

            ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public boolean checkPhone(String number) throws SQLException, ClassNotFoundException {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement("Select * from users where phoneNumber=?");
        ps.setString(1,number);
        rs = ps.executeQuery();
        return rs.next();
    }
    public boolean checkEmail(String email) throws SQLException, ClassNotFoundException {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement("Select * from users where email=?");
        ps.setString(1,email);
        rs = ps.executeQuery();
        return rs.next();
    }
    public boolean updatePass(String email, String password) throws SQLException, ClassNotFoundException {
        int res=0;
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement("update users  set password = ? where email=?");
        ps.setString(1,password);
        ps.setString(2,email);
        res = ps.executeUpdate();
        return (res>0);
    }
    public boolean checkPass(String email, String password) throws SQLException, ClassNotFoundException {
        int res=0;
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement("select * from users  where password = ? and email=?");
        ps.setString(1,password);
        ps.setString(2,email);
        rs = ps.executeQuery();
        return rs.next();
    }

    public static void main(String[] args) {

    }
}
