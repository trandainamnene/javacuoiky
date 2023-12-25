<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
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
                    <li class="header-nav__item"><a href="#">Trang Chủ</a></li>
                    <li class="header-nav__item"><a href="shirtController">Sản Phẩm</a></li>
                </ul>
            </nav>
            <div class="header-action">
            	<% khachhangbean isLogin = (khachhangbean)session.getAttribute("dn");
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
               	 <a href="cartController" class="btn-user"><img src="./assests/icons/cart.svg" alt="" class=""></a>
            	<%} %>
            </div>
        </header>
    <div class="seperate"></div>
    <div class="hero">
        <img src="./assests/images/banner.png" alt="Banner DNAM CLothes" class="hero__img"> 
    </div>
    <div class="container product-wrap">
        <div class="product">
            <section class="heading">
                <span></span>
                <h2 class="heading__content">Các mẫu áo mới nhất</h2>
            </section>
            <div class="product__wrap">
                <div class="product__list row">
                <%
                	ArrayList<sanphambean> newProduct = (ArrayList<sanphambean>)request.getAttribute("newProduct"); 
                	for (sanphambean x : newProduct) {
                %>
                    <div class="col-lg-3">
                        <article class="product__item">
                            <img src="<%= x.getAnh()%>"
                                alt="" class="product__image">
                        	<a href="cartController?masanpham=<%=x.getMasanpham()%>&tensanpham=<%=x.getTensanpham()%>&anh=<%=x.getAnh()%>&soluongmua=<%=1%>&giatien=<%=x.getGia()%>">
                            <h3 class="product__name"><%=x.getTensanpham()%></h3>                    	
                        	</a>
                        </article>
                    </div>
                <%}%>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <section class="footer-info">
                <h2 class="footer__heading">
                    Thông tin liên hệ : 
                </h2>
                <ul class="footer__list">
                    <li class="footer__item">
                        <a href="">dainamene123@gmail.com</a>
                    </li>
                    <li class="footer__item">
                        <a href="">(+84) 92 400 7246</a>
                    </li>
                    <li class="footer__item">
                        <a href="">23ABC Hùng Vương . Thành Phố Huế</a>
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
<script src="./script/slider.js"></script>
</body>

</html>