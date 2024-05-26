package dao;

import context.DBContext;
import entity.Address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOUser {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public int getUserId(String UserEmail){
        int userId=0;
        String query="select * from users where email=?";
        int count=0;
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, UserEmail);
            rs= ps.executeQuery();
            if (rs.next()) {
                userId = rs.getInt(7);
                System.out.println(rs.getInt(7));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return userId;
    }

    public static void main(String[] args) {
        DAOUser test= new DAOUser();
        test.getUserId("phanthanhbinh2003@gmail.com");
    }
}
