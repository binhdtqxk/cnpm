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

@WebServlet(value = "/ForgotPass")
public class ForgotPassServlet extends HttpServlet {
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
        try {
            if (dao.checkEmail(email)) {
                int code = Verification.createCode();
                MailService.send(email, "Quen Mat Khau", "Ma xac thuc cua ban la: " + code);
                HttpSession session = req.getSession();
                session.setAttribute("code", code);
                req.getRequestDispatcher("VerifyMailforgotpass.jsp").forward(req, resp);
            } else {
                error = "email chưa tồn tại";
                req.setAttribute("error", error);
                req.getRequestDispatcher("forgotpass.jsp").forward(req, resp);


            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }}
