<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Trường Cao đẳng Kinh tế TP.HCM</title>
  <link rel="stylesheet" href="/css/main.css" />
</head>

<body>

<header>

  <!-- TOP BAR -->
  <div id="topbar">
    <div id="topleft">
      <ul>
        <li>
          <a href="#">TRANG CHỦ</a>
          <a href="#">EGOV</a>
          <a href="#">SINH VIÊN</a>
        </li>
      </ul>
    </div>

    <div id="divtimkiem">
      <div class="search-wrapper">
        <input type="text" placeholder="Tìm kiếm…" />
        <button type="button" aria-label="Tìm kiếm">
          <svg width="15" height="15" viewBox="0 0 24 24" fill="none"
               stroke="currentColor" stroke-width="2.2"
               stroke-linecap="round" stroke-linejoin="round">
            <circle cx="11" cy="11" r="8"/>
            <line x1="21" y1="21" x2="16.65" y2="16.65"/>
          </svg>
        </button>
      </div>
    </div>
  </div>

  <!-- LOGO BANNER -->
  <div id="banner">
    <div id="logo">
      <img src="assets/images/Ten-truong-do-1000x159.png" alt="Logo Trường" />
    </div>
  </div>

  <!-- MAIN NAV -->
  <div id="divmenu" style="height: 40px;">
    <nav>
      <ul>
        <li class="active"><a href="#">GIỚI THIỆU</a></li>
        <li><a href="#">TIN TỨC SỰ KIỆN</a></li>
        <li><a href="#">TUYỂN SINH</a></li>
        <li><a href="#">CÔNG KHAI GIÁO DỤC</a></li>
        <li><a href="#">CƠ CẤU TỔ CHỨC</a></li>
        <li><a href="#">LIÊN KẾT</a></li>
      </ul>
    </nav>
  </div>

</header>

<!-- HERO IMAGE -->

<!-- BODY CONTENT -->
<div id="body-wrapper">
  <jsp:include page="listsanpham.jsp" />
</div>

<!-- FOOTER -->
<footer>
  <p>© 2025 Trường Cao đẳng Kinh tế TP.Hồ Chí Minh. Mọi quyền được bảo lưu.</p>
  <p><a href="#">Chính sách bảo mật</a> &nbsp;·&nbsp; <a href="#">Liên hệ</a></p>
</footer>

</body>
</html>
