<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Admin</title>
    <link rel="stylesheet" href="./assests/fonts/stylesheet.css">
    <link rel="stylesheet" href="./assests/styles/main.css">
</head>

<body>
	<div class="login-wrap">
        <div class="login">
            <h1 class="login__heading">Đăng Nhập</h1>
            <p class="login__desc text-danger">Trang này chỉ dành cho người quản trị trang Web !!!!</p>
            <form action="adminDangNhapController" method="POST" class="login__form">
                <div class="login__row">
                    <div class="login__group">
                        <label for="" class="login__label">Tên đăng nhập: </label>
                        <input type="text" class="login__field" name="username" required="required">
                    </div>
    
                    <div class="login__group">
                        <label for="" class="login__label">Mật khẩu : </label>
                        <div class="group_password">
                            <input type="password" class="login__field" name="password" required="required">
                            <img src="./assests/icons/eye-off.svg" alt="">
                        </div>
                    </div>
                </div>
                <%if (request.getAttribute("errorLogin") != null && (boolean)request.getAttribute("errorLogin")){ %>
                	<p class="text-danger">Tên đăng nhập hoặc mật khẩu không chính xác</p>
                <%}%>
                <%if (request.getAttribute("isLogin") != null) {%>
              		<p class="text-danger">Bạn phải đăng nhập để tiếp tục</p>
                <%}%>
                <button class="btn--primary btn login__btn">Đăng Nhập</button>
            </form>
        </div>
    </div>
    <script src="./script/hidepass.js"></script>
</body>
</html>