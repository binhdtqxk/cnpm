package control;

import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/DeleteOnCart")
public class DeleteOnCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        HttpSession session = req.getSession();
        Map<String, Integer> mapP = (Map<String, Integer>) session.getAttribute("mapP");
        List<Product> listP = (List<Product>) session.getAttribute("listPr");
        int priceSum = (int) session.getAttribute("priceSum");
        int numberOfProduct = (int) session.getAttribute("numberOfProduct");
        numberOfProduct -= mapP.get(name);
        for (Product pr : listP) {
            if (pr.getNameOfShoe().equals(name)) {
                priceSum -= pr.getPriceOfShoe() * mapP.get(name);
            }
        }
        mapP.put(name, 0);

        listP.removeIf(pr -> pr.getNameOfShoe().equals(name));


        session.setAttribute("numberOfProduct", numberOfProduct);
        session.setAttribute("priceSum", priceSum);
        session.setAttribute("mapP", mapP);
        session.setAttribute("listPr", listP);
        req.getRequestDispatcher("ShoppingCart.jsp").forward(req, resp);
    }

}
