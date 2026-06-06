package controller;

import dao.UserDAO;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/xulydangnhap")
public class XuLyDangNhap extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean ok = UserDAO.checkLogin(
                username,
                password
        );

        if (ok) {

            User user = UserDAO.getUser(username);

            HttpSession session = request.getSession();

            session.setAttribute(
                    "user",
                    user
            );

            session.setMaxInactiveInterval(
                    30 * 60
            ); // 30 phút

          System.out.println(request.getHeader("Host"));
        System.out.println(request.getHeader("X-Forwarded-Host"));
        System.out.println(request.getHeader("X-Forwarded-Proto"));
        String host = request.getHeader("X-Forwarded-Host");
        String proto = request.getHeader("X-Forwarded-Proto");

        response.sendRedirect(
                proto + "://" + host + "/index.jsp"
        );


        //     response.sendRedirect(
        //             request.getContextPath() + "/index.jsp"
        //     );

      

        } else {

            request.setAttribute(
                    "error",
                    "Sai tài khoản hoặc mật khẩu"
            );

            request.getRequestDispatcher(
                    "dangnhap.jsp"
            ).forward(
                    request,
                    response
            );
        }
    }
}