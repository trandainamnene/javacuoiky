<%@page import="bean.khachhangbean"%>
<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
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
    <section class="product">
        <div class="container">
            <h1>Áo tại shop</h1>
            <div class="row gy-4 list-product">
            <%
				ArrayList<Long> maYeuThich = (ArrayList<Long>)request.getAttribute("maYeuThich");
            	ArrayList<sanphambean> allShirt = (ArrayList<sanphambean>)request.getAttribute("allShirt");
            	for (sanphambean x : allShirt) {
            %>
                	<div class="col-12 col-md-4 col-lg-3">
                    	<section class="card">
                        <div class="card__icon">
                        <%
                      	  if (isLogin != null) {
                      			if(maYeuThich.contains(x.getMasanpham())){
                      				%>
                      				 <img data-user='<%=isLogin.getMakhachhang()%>' data-product='<%=x.getMasanpham()%>' data-login='true' data-active='true' src="./assests/icons/heart-active.svg" alt="Heart Icon" class="icon-heart">
                      				<% 
                      			} else {
                      				%>
                      				<img data-user='<%=isLogin.getMakhachhang()%>' data-product='<%=x.getMasanpham()%>' data-login='true' src="./assests/icons/heart.svg" alt="Heart Icon" class="icon-heart">
                      				<%
                      			}
                    		} else {%>
                    		<a href="dangnhapController?isLogin=false"> 
	                            <img data-login='false' src="./assests/icons/heart.svg" alt="Heart Icon" class="icon-heart">
                    		</a>
                            <%} %>
                        </div>
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
            <button class="card-load btn btn--primary">Tải thêm</button>
        </div>
    </section>
    <div class="clodes">
        <div class="container">
            <section class="heading">
                <span></span>
                <h2 class="heading__content">Clothing Online in Viet Nam</h2>
            </section>
            <section class="clodes__content">
                <h3 class="clodes__heading">Shop áo quần Đại Nam</h3>
                <p class="clodes__desc">Đây là nội dung
                    <br>
                    <br>
                  	 Đây là nội dung
                    Đây là nội dung
                    Đây là nội dung
                </p>
            </section>
            <section class="clodes__content">
                <h3 class="clodes__heading">Đây là nội dung</h3>
                <p class="clodes__desc">
                    Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung
                     Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung
                    <br>
                    <br>
                     Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung
                     Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung Đây là nội dung
                    <br>
                </p>
            </section>
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
    <script src="./script/load.js"></script>
    <script src="./script/lovebtn.js"></script>
</body>

</html>