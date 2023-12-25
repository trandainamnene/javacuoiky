<%@page import="bean.chitietdonhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết hóa đơn</title>
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
            	<% 
            	khachhangbean isLogin = (khachhangbean)session.getAttribute("dn");
            		if (isLogin == null) {%>            			
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
        <div class="detail-product">
        	  <%
            	ArrayList<chitietdonhangbean> ds = (ArrayList<chitietdonhangbean>)request.getAttribute("chitietdonhang"); 
            %>
            <h1 class="detail-product__heading">Chi tiết đơn hàng</h1>
            <div class="detail-product-detail">
                <div class="detail-product__group">
                    <p class="detail-product-detail__desc">Đơn hàng số : <b class="detail-product-detail__strong">#<%=request.getAttribute("sttdt")%></b>
                    </p>
                </div>
                <div class="detail-product__group">
                    <p class="detail-product-detail__desc">Ngày đặt hàng : <b
                            class="detail-product-detail__strong"><%=ds.get(0).getNgaydathang()%></b></p>
                </div>
                <div class="detail-product__group">
                    <p class="detail-product-detail__desc">Tổng tiền :<b
                            class="detail-product-detail__strong"><%=request.getAttribute("tongtien")%></b></p>
                </div>
                <div class="detail-product__group">
                	<%if (ds.get(0).getDamua() == 0){%>
                    <p class="detail-product-detail__desc">Tình trạng :<b class="detail-product-detail__strong text-danger">Chưa
                            thanh toán</b></p>
                    <%} else {%>
                    <p class="detail-product-detail__desc">Tình trạng :<b class="detail-product-detail__strong text-success">Đã thanh toán</b></p>
                    <%}%>
                </div>
            </div>
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
                    </tr>
                </thead>
                <tbody class="cart-table-body">
                	<%for (chitietdonhangbean x : ds) {%>
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
                                    <%=x.getGia()%>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <div class="cart-table-body-data__qty">
                                    <div class="cart-table-body-data__qty-value">
                                        <%=x.getSoluongmua() %>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-body__col">
                            <div class="cart-table-body-data">
                                <p class="cart-table-body-data__total">
                                    <%=x.getThanhtien()%>
                                </p>
                            </div>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
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