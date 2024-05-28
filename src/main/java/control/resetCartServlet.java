package control;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
@WebServlet("/resetSessionValues")
public class resetCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("da nhan duoc request");
        HttpSession session = req.getSession();
        session.setAttribute("listP", new ArrayList<>());
        session.setAttribute("mapP", new HashMap<>());
        session.setAttribute("priceSum", 0);
        session.setAttribute("numberOfProduct", 0);
        resp.setStatus(HttpServletResponse.SC_OK);
    }
}
