package control;

import dao.DAORegister;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(value = "/UpdatePass")
public class UpdatePassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAORegister dao = new DAORegister();
        req.setCharacterEncoding("UTF-8");
        String error = "";

        String email = req.getParameter("email");
        String password1 = req.getParameter("passwordOld");
        String passEn1 = service.EnCode.toSHA1(password1);
        String password2 = req.getParameter("passwordNew");
        String passEn2 = service.EnCode.toSHA1(password2);
        try {
            if (dao.checkEmail(email)) {
                if (dao.checkPass(email, passEn1)) {
                    dao.updatePass(email, passEn2);
                    error = "Đổi mật khẩu thành công!";
                    req.setAttribute("error", error);
                    req.getRequestDispatcher("ChangePass.jsp").forward(req, resp);
                } else {
                    error = "Mật khẩu cũ không chính xác";
                    req.setAttribute("error", error);
                    req.getRequestDispatcher("ChangePass.jsp").forward(req, resp);
                }
            } else {
                error = "Mail không đúng ";
                req.setAttribute("error", error);
                req.getRequestDispatcher("ChangePass.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}

