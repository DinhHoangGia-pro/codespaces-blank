package controller;

import dao.UserDAO;
import model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/xulydangnhap")
public class XuLyDangNhap extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        boolean ok =
                UserDAO.checkLogin(
                        username,
                        password);

        if (ok) {

            User user =
                    UserDAO.getUser(username);

            HttpSession session =
                    request.getSession();

            session.setAttribute(
                    "user",
                    user);

            session.setMaxInactiveInterval(
                    30 * 60); // 30 phút

            response.sendRedirect(
                    "index.jsp");

        } else {

            request.setAttribute(
                    "error",
                    "Sai tài khoản hoặc mật khẩu");

            request.getRequestDispatcher(
                    "login.jsp")
                    .forward(request,
                            response);
        }
    }
}