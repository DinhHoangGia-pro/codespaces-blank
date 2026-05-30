package controller;

import dao.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductServlet",
            urlPatterns = {"/products"})
public class ListProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();

        List<Product> list = dao.getAllProducts();

        request.setAttribute("listProduct", list);

        request.getRequestDispatcher(
                "/product.jsp")
                .forward(request, response);
    }
}
