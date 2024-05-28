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
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDAO us = new UserDAO();
        OrderDAO or = new OrderDAO();
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("auth");
        String email = req.getParameter("email");
        String fullName = req.getParameter("fullName");
        String phoneNumberStr = req.getParameter("phoneNumber");
        String address = req.getParameter("address");
        String city = req.getParameter("city");
        String district = req.getParameter("district");
        String commune = req.getParameter("commune");
        java.util.List<Product> listP = new ArrayList<>();
        Map<String, Integer> numberSaving = new HashMap<>();
        listP = (List<Product>) session.getAttribute("listPr");
        numberSaving = (Map<String, Integer>) session.getAttribute("mapP");
        int numberOfProduct = (int) session.getAttribute("numberOfProduct");
        int priceSum = (int) session.getAttribute("priceSum");
// Kiểm tra và xử lý các tham số đầu vào
        if (email == null || fullName == null || phoneNumberStr == null || address == null || city == null || district == null || commune == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
            return;
        }

        int phoneNumber;
        try {
            phoneNumber = Integer.parseInt(phoneNumberStr);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid phone number format.");
            return;
        }
        System.out.println(email + fullName + phoneNumber);
        OrderDAO orderDAO = new OrderDAO();
        if (user != null) {
            int userId = us.getUserId(user.getEmail());
            orderDAO.saveOrder(userId, listP, numberSaving, priceSum);
        } else {//trường hợp nếu người dùng không đăng nhập
            orderDAO.saveOrderNonU(email, fullName, phoneNumber, address, city, district, commune, listP, numberSaving, priceSum);
        }
        resp.setStatus(HttpServletResponse.SC_OK);
    }
}
