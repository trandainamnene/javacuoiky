<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="./assests/styles/admin.css" />
<title>Thêm sản phẩm</title>
</head>
<body>
	<nav>
      <a href="adminHomeController">Xác nhận đơn hàng</a>
      <a href="adminThemSanPhamController"  class="active">Thêm sản phẩm</a>
      <a href="adminSuaXoaSanPhamController">Sửa và xóa sản phẩm</a>
      <a href="adminDangXuatController">Đăng Xuất</a>
    </nav>
    
    <!DOCTYPE html>
<html>
<head>
<title>Contact form</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<style>
html, body {
min-height: 100%;
padding: 0;
margin: 0;
font-family: Roboto, Arial, sans-serif;
font-size: 14px;
color: #666;
}
h1 {
margin: 0 0 20px;
font-weight: 400;
color: #1c87c9;
}
p {
margin: 0 0 5px;
}
.main-block {
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
min-height: 100vh;
background: #1c87c9;
}
form {
padding: 25px;
margin: 25px;
box-shadow: 0 2px 5px #f5f5f5; 
background: #f5f5f5; 
}
.fas {
margin: 25px 10px 0;
font-size: 72px;
color: #fff;
}
.fa-envelope {
transform: rotate(-20deg);
}
.fa-at , .fa-mail-bulk{
transform: rotate(10deg);
}
input, textarea {
width: calc(100% - 18px);
padding: 8px;
margin-bottom: 20px;
border: 1px solid #1c87c9;
outline: none;
}
input::placeholder {
color: #666;
}
button {
width: 100%;
padding: 10px;
border: none;
background: #1c87c9; 
font-size: 16px;
font-weight: 400;
color: #fff;
}
button:hover {
background: #2371a0;
} 
@media (min-width: 568px) {
.main-block {
flex-direction: row;
}
.left-part, form {
width: 50%;
}
.fa-envelope {
margin-top: 0;
margin-left: 20%;
}
.fa-at {
margin-top: -10%;
margin-left: 65%;
}
.fa-mail-bulk {
margin-top: 2%;
margin-left: 28%;
}
}
</style>
</head>
<body>
<div class="main-block">
	<form action="adminThemSanPhamController" method="POST">
		<h1>Thêm sản phẩm</h1>
		<div class="info">
			<input class="fname" type="text" name="tensanpham" placeholder="Tên sản phẩm" required="required">
			<input type="text" name="slsanpham" placeholder="Số lượng" required="required">
			<input type="number" min="0" name="giasp" placeholder="Giá" required="required">
			<input type="text" name="anhsp" placeholder="URL ảnh" required="required">
		</div>
		<button type="submit">Thêm sản phẩm</button>
			<%if (request.getAttribute("dathem") != null && ((boolean)request.getAttribute("dathem")) == true){%>
				<p class="text--normal">Đã thêm mới sản phẩm</p>
			<%}%>
	</form>
</div>
</body>
</html>

  