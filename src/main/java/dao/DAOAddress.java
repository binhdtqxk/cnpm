package dao;

import context.DBContext;
import entity.Address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DAOAddress {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Address getUserAddress(int userId){
        Address ad= new Address();
        String query="select * from address where user_id=?";
        int count=0;
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs= ps.executeQuery();
            if (rs.next()) {
                ad = new Address(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                System.out.println(rs.getString(2));
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return ad;
    }
}
