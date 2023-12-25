<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CLothoes</title>
    <link rel="stylesheet" href="./assests/fonts/stylesheet.css">
    <link rel="stylesheet" href="./assests/styles/main.css">
</head>

<body>
        <header class="header">
            <img src="./assests/icons/LogoDaiNamClosthes.svg" alt="Logo" class="header__icon">
            <nav class="header-nav">
                <ul class="header-nav__list">
                    <li class="header-nav__item"><a href="homeController">Trang Chủ</a></li>
                    <li class="header-nav__item"><a href="shirtController">Sản Phẩm</a></li>
                </ul>
            </nav>
            <div class="header-action">
                 <a href="searchController" class="btn-user"><img src="./assests/icons/loop.svg" alt="" class=""></a>
                <a href="dangnhapController" class="header-action__login btn">
                    Đăng Nhập
                </a>
                <a href="dangkyController" class="header-action__sign-up btn">
                    Đăng Ký
                </a>
            </div>
        </header>
    <div class="seperate"></div>
    <div class="login-wrap">
        <div class="login">
            <h1 class="login__heading">Đăng Ký</h1>
            <p class="login__desc">Đăng ký để trở trở thành thành viên và nhận ưu đãi của Shop</p>
            <form action="dangkyController" method="POST" class="login__form">
                <div class="login__row">
                    <div class="login__group">
                        <label for="" class="login__label">Email : </label>
                        <input type="email" class="login__field" required="required" name="email">
                    </div>
    
                    <div class="login__group">
                        <label for="" class="login__label">Số điện thoại : </label>
                        <input type="text" class="login__field" pattern="((09|03|07|08|05)+([0-9]{8})\b)" required="required" name="sdt">
                        <%if (request.getAttribute("phone") != null && (boolean)request.getAttribute("phone")) {%>
                        	<p class="text-danger">Số điện thoại đã tồn tại</p>
                        <%} %>
                    </div>
                </div>
                <div class="login__row">
                    <div class="login__group">
                        <label for="" class="login__label">Họ : </label>
                        <input type="text" class="login__field" required="required" name="ho">
                    </div>
                    <div class="login__group">
                        <label for="" class="login__label">Tên : </label>
                        <input type="text" class="login__field" required="required" name="ten">
                    </div>
                </div>
                <div class="login__row">
                    <div class="login__group">
                        <label for="" class="login__label">Tên đăng nhập : </label>
                        <input type="text" class="login__field" required="required" name="username">
                      	<%if (request.getAttribute("username") != null && (boolean)request.getAttribute("username")) {%>
                        	<p class="text-danger">Tên đăng nhập đã tồn tại</p>
                        <%} %>
                    </div>
    
                    <div class="login__group">
                        	<label for="" class="login__label">Mật khẩu : </label>
                   		<div class="group_password">
                        	<input type="password" class="login__field" required="required" name="password">
    						<img src="./assests/icons/eye-off.svg" alt="">
                        </div>
                        <label for="" class="login__label"> Nhập lại mật khẩu : </label>
                        <input type="password" class="login__field" required="required" name="re-password">
                        <%if (request.getAttribute("repassword") != null && !(boolean)request.getAttribute("repassword")) {%>
                        	<p class="text-danger">Xác nhận mật khẩu không đúng</p>
                        <%} %>
                    </div>
                </div>
                <%if (request.getAttribute("created") != null && (boolean)request.getAttribute("created")) {%>
                        	<p class="text-danger">Bạn đã đăng ký thành công !</p>
                        <%} %>
                <button type="submit" class="btn--primary btn login__btn">Đăng Ký</button>
            </form>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <section class="footer-info">
                <h2 class="footer__heading">
                    Location
                </h2>
                <ul class="footer__list">
                    <li class="footer__item">
                        <a href="">support@euphoria.in</a>
                    </li>
                    <li class="footer__item">
                        <a href="">support@euphoria.in</a>
                    </li>
                    <li class="footer__item">
                        <a href="">support@euphoria.in</a>
                    </li>
                </ul>
            </section>
            <div class="seperate"></div>
            <p class="footer__desc">
                Copyright © 2023 Tran Dai Nam.
            </p>
            <div class="seperate"></div>
        </div>
    </footer>
    <script src="./script/hidepass.js"></script>
</body>

</html>