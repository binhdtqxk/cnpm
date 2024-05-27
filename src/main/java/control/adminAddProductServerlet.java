package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@MultipartConfig
@WebServlet(value = "/adminAddProduct")
public class adminAddProductServerlet extends HttpServlet {
    DAOProduct dao = new DAOProduct();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8"); // Đảm bảo xử lý đúng các ký tự đặc biệt
        String saveImg = "img";
        Part part = req.getPart("imgLink"); // Lấy phần tệp hình ảnh từ request
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        String saveFilePath=getServletContext().getRealPath("/"+saveImg);
        System.out.println("s"+saveFilePath);
        String success;
        if (dao.isImageFile(fileName)) {
            String filePath = saveFilePath + File.separator + fileName;
            System.out.println(filePath);
            part.write(filePath); // Lưu tệp hình ảnh vào thư mục đích
            String imagePath = saveImg+"/" + fileName; // Đường dẫn hình ảnh để lưu vào cơ sở dữ liệu
            System.out.println(imagePath);
            // Lấy các tham số sản phẩm từ request
            String typeShoe = req.getParameter("typeShoe");
            String nameShoe = req.getParameter("nameShoe");
            int priceShoe = Integer.parseInt(req.getParameter("priceShoe"));
            // Tạo đối tượng Product và lưu vào cơ sở dữ liệu
            Product product = new Product(imagePath, typeShoe, nameShoe, priceShoe);

            int count = dao.addProduct(product);
            if (count > 0) {
                success="OK";
            } else {
                success="NO";
                System.out.println("không thể lưu sp vaò csdl");
            }
        } else {
            success="NO";
        }
        req.setAttribute("success", success);
        System.out.println("hình ảnh của sản phẩm không đúng");
        req.getRequestDispatcher("adminProduct.jsp").forward(req, resp);
    }
}
