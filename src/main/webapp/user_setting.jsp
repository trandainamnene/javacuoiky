<%@page import="java.util.ArrayList"%>
<%@page import="bean.KhachHangYeuThichSanPhambean"%>
<%@page import="bean.khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin cá nhân</title>
    <link rel="stylesheet" href="./assests/fonts/stylesheet.css">
    <link rel="stylesheet" href="./assests/styles/main.css">
</head>
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
               	 <a href="usersettingController" class="btn-user btn-user--index"><img src="./assests/icons/user.svg" alt="" class=""></a>
               	 <a href="cartController" class="btn-user"><img src="./assests/icons/cart.svg" alt="" class=""></a>
            	<%} %>
            </div>
        </header>
    </div>
    <div class="container">
        <div class="personal">
            <div class="row">
                <div class="col-4">
                    <div class="personal-left">
                        <div class="heading">
                            <span></span>
                            <h1 class="heading__content personal__heading">Chào bác học Duy Dương</h1>
                        </div>
                        <p class="personal-left__desc">
                            Chào mừng đến với tài khoản của bạn
                        </p>
                        <ul class="personal-left__list">
                            <li class="personal-left-item">
                                <button class="tab-item tab-item--active" data-select="1">
                                    <img src="./assests/icons/orders.svg" class="tab-item__icon">
                                    Đơn hàng của tôi
                                </button>
                            </li>
                            <li class="personal-left-item">
                                <button class="tab-item" data-select="2">
                                    <img src="./assests/icons/heart.svg" class="tab-item__icon">
                                    Danh sách yêu thích
                                </button>
                            </li>
                            <li class="personal-left-item">
                                <button class="tab-item" data-select="3">
                                    <img src="./assests/icons/user.svg" class="tab-item__icon">
                                    Thông tin của tôi
                                </button>
                            </li>
                            <li class="personal-left-item">
                                <a href="dangxuatController" class="tab-item">
                                    <img src="./assests/icons/sign_out.svg" class="tab-item__icon">
                                    Đăng xuất
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-8">
                    <div class="personal-right" data-tab="3">
                        <h2 class="personal__heading">Thông tin của bạn</h2>
                        <h3 class="personal__second-heading">Chi tiết liên hệ</h3>
                        <% 
                        	khachhangbean khbean = (khachhangbean)session.getAttribute("dn");
                        %>
                        <form action="" class="form-user form-user--not-editable">
                            <div class="form-user__group">
                                <label for="form-user__last-name">Họ</label>
                                <input id="form-user__last-name" class="form-user__field" type="text" name="last_name"
                                    value="<%=khbean.getHo()%>" readonly>
                            </div>
                            <div class="form-user__group">
                                <label for="form-user__name">Tên</label>
                                <input id="form-user__name" class="form-user__field" type="text" name="name"
                                    value="<%=khbean.getTen()%>" readonly>
                            </div>
                            <div class="form-user__group">
                                <label for="form-user__email">Email</label>
                                <input id="form-user__email" class="form-user__field" type="email" name="email"
                                    value="<%=khbean.getEmail()%>" readonly>
                            </div>
                            <div class="form-user__group">
                                <label for="form-user__phone">Số điện thoại</label>
                                <input id="form-user__phone" class="form-user__field" type="number" name="phone"
                                    value="<%=khbean.getSdt()%>" readonly>
                            </div>
                            <div class="form-user__group">
                                <label for="form-user__pass">Mật khẩu</label>
                                <input id="form-user__pass" class="form-user__field" type="password" name="password"
                                    value="<%=khbean.getPassword()%>" readonly>
                            </div>
                            <button class="btn">
                                Chỉnh sửa thông tinh của bạn
                            </button>
                        </form>
                    </div>
                     <div class="personal-right" data-tab="2">
                        <h2 class="personal__heading">Danh sách yêu thích</h2>
                        <h3 class="personal__second-heading">Danh sách yêu thích của bạn</h3>
                        <div class="personal-right__list">
                        <%
                        	ArrayList<KhachHangYeuThichSanPhambean> khytsp = (ArrayList<KhachHangYeuThichSanPhambean>)request.getAttribute("khytsp");
                            for (KhachHangYeuThichSanPhambean x : khytsp)  {
                            %>
                            <div class="personal-right__item">
                                <div class="row">
                                    <div class="col-3">
                                        <img src="<%=x.getAnh()%>"
                                            alt="Hình ảnh sản phẩm" class="personal-right__item-image">
                                    </div>
                                    <div class="col-3">
                                        <h3 class="personal-right__item-heading">
                                            <%=x.getTensanpham()%>
                                        </h3>
                                    </div>
                                    <div class="col-6">
                                        <div class="row">
                                            <div class="col-5">
                                                <span class="personal-right__item-price"><%=x.getGia()%>VND</span>
                                            </div>
                                            <div class="col-7">
                                                <a href="cartController?masanpham=<%=x.getMasanpham()%>&tensanpham=<%=x.getTensanpham()%>&anh=<%=x.getAnh()%>&soluongmua=<%=1%>&giatien=<%=x.getGia()%>" class="btn">
                                                    Thêm
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>  
                    <div class="personal-right personal-right--active" data-tab="1">
                        <h2 class="personal__heading">Đơn hàng của bạn</h2>
                        <h3 class="personal__second-heading">Chi tiết đơn hàng</h3>
                        <ul class="personal-right-oder-list">
                            <li class="personal-right-oder-list__item">
                                <h3 class="personal-right-oder-list-item__heading">
                                    Đơn hàng số : #123456789
                                </h3>
                                <div class="personal-right-oder-list-item__row">
                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Ngày đặt:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            06/09/2023
                                        </b>
                                    </div>

                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Trạng thái:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            Chưa thanh toán
                                        </b>
                                    </div>
                                    <a href="" class="btn btn--primary">Chi Tiết</a>
                                </div>
                            </li>
                            <li class="personal-right-oder-list__item">
                                <h3 class="personal-right-oder-list-item__heading">
                                    Đơn hàng số : #123456789
                                </h3>
                                <div class="personal-right-oder-list-item__row">
                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Ngày đặt:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            06/09/2023
                                        </b>
                                    </div>

                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Trạng thái:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            Chưa thanh toán
                                        </b>
                                    </div>
                                    <a href="" class="btn btn--primary">Chi Tiết</a>
                                </div>
                            </li>
                            <li class="personal-right-oder-list__item">
                                <h3 class="personal-right-oder-list-item__heading">
                                    Đơn hàng số : #123456789
                                </h3>
                                <div class="personal-right-oder-list-item__row">
                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Ngày đặt:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            06/09/2023
                                        </b>
                                    </div>

                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Trạng thái:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            Chưa thanh toán
                                        </b>
                                    </div>
                                    <a href="" class="btn btn--primary">Chi Tiết</a>
                                </div>
                            </li>
                            <li class="personal-right-oder-list__item">
                                <h3 class="personal-right-oder-list-item__heading">
                                    Đơn hàng số : #123456789
                                </h3>
                                <div class="personal-right-oder-list-item__row">
                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Ngày đặt:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            06/09/2023
                                        </b>
                                    </div>

                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Trạng thái:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            Chưa thanh toán
                                        </b>
                                    </div>
                                    <a href="" class="btn btn--primary">Chi Tiết</a>
                                </div>
                            </li>
                            <li class="personal-right-oder-list__item">
                                <h3 class="personal-right-oder-list-item__heading">
                                    Đơn hàng số : #123456789
                                </h3>
                                <div class="personal-right-oder-list-item__row">
                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Ngày đặt:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            06/09/2023
                                        </b>
                                    </div>

                                    <div>
                                        <b class="personal-right-oder-list-item__bold">
                                            Trạng thái:
                                        </b>
                                        <b class="personal-right-oder-list-item__light">
                                            Chưa thanh toán
                                        </b>
                                    </div>
                                    <a href="" class="btn btn--primary">Chi Tiết</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
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
    <script src="./script/select-tab.js"></script>
</body>

</html>