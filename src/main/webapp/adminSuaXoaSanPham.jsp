<%@page import="bean.sanphambean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Xác nhận đơn hàng</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="./assests/styles/admin.css" />
  </head>
<body>
	<nav>
      <a href="adminHomeController">Xác nhận đơn hàng</a>
      <a href="adminThemSanPhamController">Thêm sản phẩm</a>
      <a href="adminSuaXoaSanPhamController" class="active">Sửa và xóa sản phẩm</a>
      <a href="adminDangXuatController">Đăng Xuất</a>
    </nav>
	<%
	 	ArrayList<sanphambean> dssp = (ArrayList<sanphambean>)request.getAttribute("dssp");
	 	for (sanphambean x : dssp) {%>
	 		<form action="adminSuaXoaSanPhamController?maspsua=<%=x.getMasanpham()%>" method="POST" class="form-update">
	 			<div class="form-update__group">
	 				<label>Tên sản phẩm : </label>
	 				<input class="form-update__input" name="tensp" type="text" value="<%=x.getTensanpham()%>">
	 			</div>
	 			<div class="form-update__group">
		 			<label>Số lượng : </label>
		 			<input class="form-update__input" name="slsp" min = 0 type="number" value="<%=x.getSoluong()%>">	 			
	 			</div>
	 			<div class="form-update__group">
	 				<label>Giá</label>
		 			<input class="form-update__input" name="giasp" type="text" value="<%=x.getGia()%>">
	 			</div>
	 			<div class="form-update__group">
					<label>Ảnh</label>	 			
		 			<input class="form-update__input" name="anhsp" type="text" value="<%=x.getAnh()%>">
	 			</div>
	 			<button class="form-update__btn form-update__btn--normal">Xác nhận Sửa</button>
	 			<a href="adminSuaXoaSanPhamController?maspxoa=<%=x.getMasanpham()%>" class="form-update__btn form-update__btn--danger">Xóa sản phẩm</a>
	 		</form>
	<%}%>
</body>
</html>