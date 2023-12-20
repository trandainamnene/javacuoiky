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
    <div class="container">
        <header class="header">
            <img src="./assests/icons/LogoDaiNamClosthes.svg" alt="Logo" class="header__icon">
            <nav class="header-nav">
                <ul class="header-nav__list">
                    <li class="header-nav__item"><a href="homeController">Trang Chủ</a></li>
                    <li class="header-nav__item"><a href="shirtController">Sản Phẩm</a></li>
                </ul>
            </nav>
            <form action="" class="header-search">
                <img src="assests/icons/loop.svg" alt="icon loop" class="header-search__icon">
                <input type="text" class="header-search__box field" placeholder="Tìm kiếm">
            </form>
            <div class="header-action">
                <a href="#" class="header-action__login btn">
                    Đăng Nhập
                </a>
                <a href="dangkyController" class="header-action__sign-up btn">
                    Đăng Ký
                </a>
            </div>
        </header>
    </div>
    <div class="seperate"></div>
    <div class="login-wrap">
        <div class="login">
            <h1 class="login__heading">Đăng Nhập</h1>
            <p class="login__desc">Đăng nhập để bắt đầu mua sắm và nhận quà !</p>
            <form action="dangnhapController" method="POST" class="login__form">
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