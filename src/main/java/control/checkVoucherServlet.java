package control;

import dao.VoucherDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/handleVoucher")
//xử lý voucher
public class checkVoucherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("da ket noi");
        VoucherDAO vc= new VoucherDAO();
        //lấy ra code mà người dùng đã nhập, sau đó trả về giá trị phần trăm được giảm giá
        String code= req.getParameter("code");
        int discount= vc.checkVoucher(code);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write("{\"discount\": " + discount + "}");
    }
}
