package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/adminAddProduct")
public class adminAddProductServerlet extends HttpServlet {
    DAOProduct dao = new DAOProduct();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String imgLink = req.getParameter("imgLink");
        String typeShoe = req.getParameter("typeShoe");
        String nameShoe = req.getParameter("nameShoe");
        int priceShoe = Integer.parseInt(req.getParameter("priceShoe"));

        Product product = new Product(imgLink, typeShoe, nameShoe, priceShoe);
        String success = "Add success";
        int count = dao.addProduct(product);
        if (count > 0) {
            req.setAttribute("success", success);
            System.out.println("Success attribute set: " + success); // Log để kiểm tra
            req.getRequestDispatcher("adminProduct.jsp").forward(req, resp);
        } else {
            System.out.println("Add product failed."); // Log để kiểm tra
        }
    }
}
