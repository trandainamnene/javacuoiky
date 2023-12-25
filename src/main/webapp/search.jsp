<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CLothoes</title>
    <link rel="stylesheet" href="./assests/fonts/stylesheet.css">
    <link rel="stylesheet" href="./assests/styles/main.css">
	<title>Trang Tìm Kiếm</title>

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
            	<% 
            	khachhangbean isLogin = (khachhangbean)session.getAttribute("dn");
            		if (isLogin == null) {%>            			
              	  <a href="searchController" class="btn-user"><img src="./assests/icons/loop.svg" alt="" class=""></a>
              	  <a href="dangnhapController" class="header-action__login btn btn--primary">
                    Đăng Nhập
             	   </a>
               	  <a href="dangkyController" class="header-action__sign-up btn btn--secondary">
               	     Đăng Ký
              	  </a>
            	<%}%><%else {%>
               	 <a href="searchController" class="btn-user"><img src="./assests/icons/loop.svg" alt="" class=""></a>
               	 <a href="usersettingController" class="btn-user"><img src="./assests/icons/user.svg" alt="" class=""></a>
               	 <a href="cartController" class="btn-user btn-user--index"><img src="./assests/icons/cart.svg" alt="" class=""></a>
            	<%} %>
            </div>
        </header>
	<div class="container">
        <div class="search">
            <form action="searchController" class="search-form">
                <input class="header-search__box field search-form__input" type="text" placeholder="Nhập từ khóa để tìm kiếm" name="key">
                <button class="search-form__btn"><img src="assests/icons/loop.svg" alt=""></button>
            </form>
            <%if (request.getAttribute("listSearch") != null) {
            	if (  ((ArrayList<sanphambean>)request.getAttribute("listSearch")).size() == 0 ){
            %>
            	<p class="search__desc">Không có sản phẩm nào </p>
            <%} else {%>
            	<p class="search__desc">Kết quả cho tìm kiếm :</p>
            	<div class="row gy-4">
            	<%for (sanphambean x : (ArrayList<sanphambean>)request.getAttribute("listSearch")) {%>
            		<div class="col-3">
            			<section class="card">
                        <img src="<%=x.getAnh()%>"
                            alt="Ảnh sản phẩm" class="card__image">
                        <div class="card__content">
                            <section class="card__info">
                                <h2 class="card__name">
                                    <%=x.getTensanpham()%>
                                </h2>
                            </section>
                            <a href="cartController?masanpham=<%=x.getMasanpham()%>&tensanpham=<%=x.getTensanpham()%>&anh=<%=x.getAnh()%>&soluongmua=<%=1%>&giatien=<%=x.getGia()%>" class="product__price">
                                <%=x.getGia()%>
                            </a>
                        </div>
                 	   </section>
            		</div>
            	<%}%>
                    </div>
            <%} } else {%>
            	<p class="search__desc">Nhập tên sản phẩm để tìm kiếm </p>
            <%}%>
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
</body>
</html>