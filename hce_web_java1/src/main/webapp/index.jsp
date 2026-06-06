<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="model.User" %>

<%
    User user = (User) session.getAttribute("user");
%>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Trường Cao đẳng Kinh tế TP.HCM</title>

    <link rel="stylesheet"
          href="css/main.css">
</head>

<body>

<header>

    <!-- TOP BAR -->
    <div id="topbar">

        <!-- LEFT -->
        <div id="topleft">
            <a href="index.jsp">TRANG CHỦ</a>
            <a href="#">EGOV</a>
            <a href="#">SINH VIÊN</a>
        </div>

        <!-- CENTER -->
        <div id="divtimkiem">

            <div class="search-wrapper">

                <input type="text"
                       placeholder="Tìm kiếm..." />

                <button type="button">

                    <svg width="15"
                         height="15"
                         viewBox="0 0 24 24"
                         fill="none"
                         stroke="currentColor"
                         stroke-width="2.2">

                        <circle cx="11"
                                cy="11"
                                r="8"/>

                        <line x1="21"
                              y1="21"
                              x2="16.65"
                              y2="16.65"/>

                    </svg>

                </button>

            </div>

        </div>

        <!-- RIGHT -->
        <div id="topright">

            <% if(user == null){ %>

                <a class="login-btn"
                   href="dangnhap.jsp">
                    Đăng nhập
                </a>

            <% } else { %>

                <span class="welcome">

                    Xin chào

                    <strong>
                        <%= user.getUsername() %>
                    </strong>

                </span>

                <a class="logout-btn"
                   href="logout">
                    Đăng xuất
                </a>

            <% } %>

        </div>

    </div>

    <!-- BANNER -->
    <div id="banner">

        <div id="logo">

            <img src="assets/images/Ten-truong-do-1000x159.png"
                 alt="Logo Trường">

        </div>

    </div>

    <!-- MENU -->
    <div id="divmenu">

        <nav>

            <ul>

                <li class="active">
                    <a href="#">GIỚI THIỆU</a>
                </li>

                <li>
                    <a href="#">TIN TỨC SỰ KIỆN</a>
                </li>

                <li>
                    <a href="#">TUYỂN SINH</a>
                </li>

                <li>
                    <a href="#">CÔNG KHAI GIÁO DỤC</a>
                </li>

                <li>
                    <a href="#">CƠ CẤU TỔ CHỨC</a>
                </li>

                <li>
                    <a href="#">LIÊN KẾT</a>
                </li>

            </ul>

        </nav>

    </div>

</header>

<!-- BODY -->

<div id="body-wrapper">

    <jsp:include page="listsanpham.jsp"/>

</div>

<!-- FOOTER -->

<footer>

    <p>
        © 2025 Trường Cao đẳng Kinh tế TP.HCM.
        Mọi quyền được bảo lưu.
    </p>

    <p>
        <a href="#">Chính sách bảo mật</a>
        &nbsp;·&nbsp;
        <a href="#">Liên hệ</a>
    </p>

</footer>

</body>
</html>