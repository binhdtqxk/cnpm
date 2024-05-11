package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/adminDeleteProduct")
public class adminDeleteProductServerlet extends HttpServlet {
    DAOProduct dao = new DAOProduct();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String idShoe = req.getParameter("idShoe");

        String deleteSuccess = "delete success";
        int count = dao.deleteProduct(idShoe);
        if (count > 0) {
            req.setAttribute("deleteSuccess", deleteSuccess);
            req.getRequestDispatcher("adminProduct.jsp").forward(req, resp);
        } else {
            System.out.println("Delete product failed."); // Log để kiểm tra
        }
    }
}