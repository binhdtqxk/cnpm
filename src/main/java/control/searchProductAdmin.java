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

@WebServlet(value = "/searchProductAdmin")
public class searchProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product pr = new Product();
        String ma = req.getParameter("id");
        int id = Integer.parseInt(ma);
        List<Product> productList = new ArrayList<>();
        DAOProduct dao = new DAOProduct();

        if(ma == null) {
            try {
                productList = dao.getAllProduct();
                if(productList != null) {
                    req.setAttribute("productList", productList);
                    req.getRequestDispatcher("adminProduct.jsp").forward(req, resp);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        try {
            productList.add(dao.getProductById(id));
            req.setAttribute("productList", productList);
            req.setAttribute("search", ma);
            req.getRequestDispatcher("/adminProduct.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
