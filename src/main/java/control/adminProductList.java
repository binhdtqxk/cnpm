package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(value = "/adminProductList")
public class adminProductList extends HttpServlet {
    DAOProduct dao = new DAOProduct();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        List<Product> productList = new ArrayList<Product>();
        try {
            productList = dao.getAllProduct();
            if(productList != null) {
                req.setAttribute("productList", productList);
                req.getRequestDispatcher("adminProduct.jsp").forward(req, resp);
            }else {
            System.out.println("Add product failed."); // Log để kiểm tra
        }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
