<%@page import="bean.giohangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assests/fonts/stylesheet.css">
    <link rel="stylesheet" href="./assests/styles/main.css">
	<title>Giỏ Hàng</title>
</head>
<body>
	<style>
	
	</style>
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
               	 <a href="cartController" class="btn-user btn-user--index"><img src="./assests/icons/cart.svg" alt="" class=""></a>
            	<%} %>
            </div>
        </header>
    </div>
    <div class="seperate"></div>
    	 <div class="cart">
			<%
				giohangbo listCard = null;
				if (session.getAttribute("cart") == null) {
					
			%>
				<div class="container">
           			<section class="cart-content-empty">
                	<img src="./assests/images/cart_empty.png" alt="" class="cart-content-empty__empty">
                	<h1 class="cart-content-empty__heading">
                    Giỏ hàng của bạn đang trống :(
                	</h1>
                	<p class="cart-content-empty__desc">Hãy mua vài thứ gì đó</p>
               		 <a href="shirtController" class="btn">Tiếp tục mua sắm</a>
            		</section>  
       			 </div>
			<%} else { listCard = (giohangbo)session.getAttribute("cart"); %>
          		<!-- Else -->
        <div class="container">
            <section class="cart-content">
                <h1 class="cart-content__heading">
                    Thêm vào giỏ hàng
                </h1>
                <p class="cart-content__desc">Hãy điền vào các trường bên dưới sau đó click xác nhận để mua sắm</p>
            </section>
        </div>
        <div class="container">
            <table class="cart-table">
                <thead class="cart-table-top">
                    <tr class="cart-table-top__row">
                        <th class="cart-table-top__col">
                            CHI TIẾT SẢN PHẨM
                        </th>
                        <th class="cart-table-top__col">
                            GIÁ
                        </th>
                        <th class="cart-table-top__col">
                            SỐ LƯỢNG
                        </th>
                        <th class="cart-table-top__col">
                            TỔNG TIỀN
                        </th>
                        <th class="cart-table-top__col">
                            THAO TÁC
                        </th>
                    </tr>
                </thead>
                <tbody class="cart-table-body">
                	<%for (giohangbean x : listCard.ds){%>
                    <tr class="cart-table-body__row">
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <div class="cart-table-body-data__wrap">
                                    <img class="cart-table-body-data__img"
                                        src="<%=x.getAnh()%>"
                                        alt="Ảnh sản phẩm">
                                    <h3 class="cart-table-body-data__name"><%=x.getTensanpham()%></h3>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <div class="cart-table-body-data__price">
                                    <%=x.getGiatien()%>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <div class="cart-table-body-data__qty">
                                    <button data-id='<%=x.getMasanpham()%>' class="cart-table-body-data__qty-btn reduce-js">
                                        -
                                    </button>
                                    <div  class="cart-table-body-data__qty-value">
                                        <%=x.getSoluongmua()%>
                                    </div>
                                    <button data-id='<%=x.getMasanpham()%>' class="cart-table-body-data__qty-btn increase-js" data>
                                        +
                                    </button>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <p class="cart-table-body-data__total">
                                    <%=x.getGiatien() * x.getSoluongmua()%>
                                </p>
                            </div>
                        </td>
                        <td class="card-table-body__col">
                            Xóa sản phẩm
                        </td>
                    </tr>
                    <%}%>                    
                </tbody>
            </table>
            <div class="cart-total">
                <div class="cart-total__group">
                    <p class="cart-total__content">Thành Tiền :</p>
                    <p class="cart-total__content ajax_amount"><%if (session.getAttribute("cart") == null) { out.print(0);} else {
                    	giohangbo ghbo =  (giohangbo)session.getAttribute("cart");
                    	out.print(ghbo.tongTienHoaDonAJAX());
                    }%> VND</p>
                </div>
                <a href="" class="btn">
                    Đặt Hàng
                </a>
        	<%}%>
            </div>
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
    <script src="./script/btnqty.js"></script>
</body>
</html>