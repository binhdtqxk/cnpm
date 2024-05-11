package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/addProduct")
public class AddProductToCartServlet extends HttpServlet {
    List<Product> listP=new ArrayList<>();
    DAOProduct dao =new DAOProduct();
    Map<String,Integer> numberSaving= new HashMap<>();

    Map<Integer,String> sizeSaving= new HashMap<>();

    Map<Integer,String> colorSaving= new HashMap<>();
    int priceSum;

    int numberOfProduct;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int errcode=0;
    HttpSession session=req.getSession();
    if(session.getAttribute("numberOfProduct")!=null){
        numberOfProduct= (int) session.getAttribute("numberOfProduct");
    }
    if(session.getAttribute("priceSum")!=null){
            priceSum= (int) session.getAttribute("priceSum");
        }
    if(session.getAttribute("listPr")!=null){
            listP= (List<Product>) session.getAttribute("listPr");
        }
    if(session.getAttribute("mapP")!=null){
            numberSaving= (Map<String, Integer>) session.getAttribute("mapP");
            errcode++;
        }

    Product p= new Product();
    String size=req.getParameter("option1");
    String color=req.getParameter("option2");
    String num=req.getParameter("quantity");
        System.out.println(num);
    int number=Integer.parseInt(num);
    String ma= req.getParameter("id");
    int id= Integer.parseInt(ma);
        try {
            p=dao.getProductById(id);
            p.setTypeOfShoe(" - "+p.getIdOfShoe()+" - "+size+" / "+color);
            String newName=p.getNameOfShoe()+p.getTypeOfShoe();
                p.setNameOfShoe(newName);
                if(numberSaving.containsKey(newName)){
                    if(numberSaving.get(p.getNameOfShoe())!=0) {
                        int currentNumber = numberSaving.get(p.getNameOfShoe());
                        numberSaving.put(p.getNameOfShoe(), currentNumber + number);
                        priceSum += p.getPriceOfShoe()*number;
                        numberOfProduct+=number;
                    }else{
                        listP.add(p);
                        numberSaving.put(p.getNameOfShoe(),number);
                        priceSum+=p.getPriceOfShoe()*number;
                        numberOfProduct+=number;
                    }
                }else{
                    listP.add(p);
                    numberSaving.put(p.getNameOfShoe(),number);
                    priceSum+=p.getPriceOfShoe()*number;
                    numberOfProduct+=number;
                }
            session.setAttribute("numberOfProduct",numberOfProduct);
            session.setAttribute("priceSum",priceSum);
            session.setAttribute("listPr",listP);
            session.setAttribute("mapP",numberSaving);
            req.getRequestDispatcher("ShoppingCart.jsp").forward(req,resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
