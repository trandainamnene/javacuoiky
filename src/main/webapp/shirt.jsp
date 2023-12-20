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
            	<% khachhangbean isLogin = (khachhangbean)session.getAttribute("dn");
            		if (isLogin == null) {%>            			
              	  <a href="dangnhapController" class="header-action__login btn btn--primary">
                    Đăng Nhập
             	   </a>
               	  <a href="dangkyController" class="header-action__sign-up btn btn--secondary">
               	     Đăng Ký
              	  </a>
            	<%}%><%else {%>
               	 <a href="usersettingController" class="btn-user"><img src="./assests/icons/user.svg" alt="" class=""></a>
               	 <a href="cartController" class="btn-user"><img src="./assests/icons/cart.svg" alt="" class=""></a>
            	<%} %>
            </div>
        </header>
        </div>
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
                	<div class="col-3">
                    	<section class="card">
                        <div class="card__icon">
                        <%
                      	  if (isLogin != null) {
                      			if(maYeuThich.contains(x.getMasanpham())){
                      				%>
                      				 <img data-user='<%=isLogin.getMakhachhang()%>' data-product='<%=x.getMasanpham()%>' data-login='true' data-product data-active='true' src="./assests/icons/heart-active.svg" alt="Heart Icon" class="icon-heart">
                      				<% 
                      			} else {
                      				%>
                      				<img data-user='<%=isLogin.getMakhachhang()%>' data-product='<%=x.getMasanpham()%>' data-login='true' src="./assests/icons/heart.svg" alt="Heart Icon" class="icon-heart">
                      				<%
                      			}
                    		} else {%>
                            <img data-login='false' src="./assests/icons/heart.svg" alt="Heart Icon" class="icon-heart">
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
                <h3 class="clodes__heading">Reexplore Man Clothing Collection Online at Euphoria</h3>
                <p class="clodes__desc">Man's Clothing – Are you searching for the best website to buy Clothing for
                    Women online in India?
                    Well, your search for the coolest and most stylish womens clothing ends here. From trendy Casual
                    Womens
                    Wear Online shopping to premium quality cotton women's apparel, Euphoria has closet of Women
                    Collection
                    covered with the latest and best designs of Women's Clothing Online.
                    <br>
                    <br>
                    Our collection of clothes for women will make you the trendsetter with an iconic resemblance of
                    choice
                    in Womens Wear.
                </p>
            </section>
            <section class="clodes__content">
                <h3 class="clodes__heading">One-Stop Destination to Shop Every Clothing for Women: Euphoria</h3>
                <p class="clodes__desc">
                    Today, Clothing for Women is gaining more popularity above all. This is because gone are the days
                    when women were used to carrying uncomfortable fashion. Today, a lady looks prettier when she is in
                    Casual Womens Wear which is a comfortable outfit. Concerning this, Euphoria has a big fat range of
                    Stylish Women's Clothing that would make her the winner wherever she goes.
                    <br>
                    <br>
                    Our collection of clothes for women will make you the trendsetter with an iconic resemblance of
                    choice in Womens Wear. It is quite evident to say that there are very few Womens Clothing online
                    stores where you can buy Western Wear for Women comprising the premium material and elegant design
                    that you are always seeking for. Basically,
                </p>
            </section>
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
    <script src="./script/load.js"></script>
    <script src="./script/lovebtn.js"></script>
</body>

</html>