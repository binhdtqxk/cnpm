package control;

import dao.DAORegister;
import entity.User;
import jakarta.mail.Session;
import mail.MailService;
import until.Verification;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(value = "/newpass")
public class newpass extends HttpServlet {
    DAORegister dao = new DAORegister();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String error = "";

        String email = req.getParameter("email");
        String password1 = req.getParameter("password1");
        String passEn=service.EnCode.toSHA1(password1);
        String password2 = req.getParameter("password2");
        try {
            if (dao.checkEmail(email)) {
            if(password1.equals(password2)){
                dao.updatePass(email,passEn);
                error = "Đổi mật khẩu thành công!";
                req.setAttribute("error", error);
                req.getRequestDispatcher("newpass.jsp").forward(req, resp);
            }else{
                error = "Mật khẩu không trung khớp";
                req.setAttribute("error", error);
                req.getRequestDispatcher("newpass.jsp").forward(req, resp);
            }
            } else {
                error = "Mail không đúng ";
                req.setAttribute("error", error);
                req.getRequestDispatcher("newpass.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }}
