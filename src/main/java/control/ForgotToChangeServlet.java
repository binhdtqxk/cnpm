package control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/ForgotToChange")
public class ForgotToChangeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session= req.getSession();
            String error = "";
            int codeIn = Integer.parseInt(req.getParameter("code"));
            int codeReal = (int) session.getAttribute("code");
            if (codeIn == codeReal) {
                resp.sendRedirect("newpass.jsp");
            } else {
                error = "Bạn đã nhập sai mã,vui lòng nhập lại";
                req.setAttribute("error", error);
                req.getRequestDispatcher("VerifyMailRegister.jsp").forward(req, resp);
            }
    }
}
