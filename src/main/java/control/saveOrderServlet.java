package control;

import dao.OrderDAO;
import dao.UserDAO;
import entity.Product;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/saveOrder")
public class saveOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO us= new UserDAO();
        OrderDAO or=new OrderDAO();
        HttpSession session= req.getSession();
        User user= (User) session.getAttribute("auth");
        int userId= us.getUserId(user.getEmail());
        java.util.List<Product> listP=new ArrayList<>();
        Map<String,Integer> numberSaving= new HashMap<>();
        listP = (List<Product>) session.getAttribute("listPr");
        numberSaving = (Map<String, Integer>) session.getAttribute("mapP");
        int numberOfProduct = (int) session.getAttribute("numberOfProduct");
        int priceSum = (int) session.getAttribute("priceSum");

        OrderDAO orderDAO = new OrderDAO();
        orderDAO.saveOrder(userId,listP,numberSaving,priceSum);
        resp.setStatus(HttpServletResponse.SC_OK);
    }
}
