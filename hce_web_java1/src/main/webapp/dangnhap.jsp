<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family: Arial, sans-serif;
}

body{
    background:#f2f4f7;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.login-box{
    width:380px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 15px rgba(0,0,0,0.15);
}

.login-box h2{
    text-align:center;
    margin-bottom:20px;
    color:#333;
}

.form-group{
    margin-bottom:15px;
}

.form-group label{
    display:block;
    margin-bottom:5px;
}

.form-group input{
    width:100%;
    padding:10px;
    border:1px solid #ccc;
    border-radius:5px;
}

.btn-login{
    width:100%;
    padding:10px;
    background:#007bff;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

.btn-login:hover{
    background:#0056b3;
}

.error{
    color:red;
    text-align:center;
    margin-bottom:10px;
}
</style>

</head>
<body>

<div class="login-box">

    <h2>Đăng nhập</h2>

    <% String msg = (String)request.getAttribute("error"); %>

    <% if(msg != null){ %>
        <div class="error"><%= msg %></div>
    <% } %>

    <form action="xulydangnhap" method="post">

        <div class="form-group">
            <label>Tài khoản</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>Mật khẩu</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="btn-login">
            Đăng nhập
        </button>

    </form>

</div>

</body>
</html>