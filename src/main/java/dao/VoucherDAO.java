package dao;

import context.DBContext;
import entity.Address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class VoucherDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    //xử lý kiểm tra voucher có trong database hay không và lấy ra phần trăm giảm giá
    public int checkVoucher(String voucherCode){
        String query="select * from voucher where code=?";
        int discount=0;
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, voucherCode);
            rs= ps.executeQuery();
            if(rs.next()){
                discount=rs.getInt(3);
            }
        } catch (Exception e){
            System.out.println(e);
        }
        return discount;
    }

    public static void main(String[] args) {
        VoucherDAO vc= new VoucherDAO();
        System.out.println(vc.checkVoucher("CHUCMUNGNAMMOI"));
    }
}
