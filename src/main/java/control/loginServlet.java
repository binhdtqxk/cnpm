package control;

import dao.DAOLogin;
import entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(value = "/login")
public class loginServlet extends HttpServlet {
    public String error = "Bạn nhập sai tài khoản hoặc mật khẩu, vui lòng nhập lại!";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("email");
        String password = req.getParameter("password");
        DAOLogin daoLogin = new DAOLogin();
        User user = daoLogin.checkUser(username, service.EnCode.toSHA1(password));
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("auth", user);
            resp.sendRedirect("index.jsp");
        } else {
            req.setAttribute("error", error);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
