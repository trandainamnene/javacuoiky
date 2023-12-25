<%@page import="bean.adminXacNhanbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Xác nhận đơn hàng</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="./assests/styles/admin.css" />
  </head>
  <body>
    <nav>
      <a href="adminHomeController" class="active">Xác nhận đơn hàng</a>
      <a href="adminThemSanPhamController">Thêm sản phẩm</a>
      <a href="adminSuaXoaSanPhamController">Sửa và xóa sản phẩm</a>
      <a href="adminDangXuatController">Đăng Xuất</a>
    </nav>
   <main>
      <%
      	ArrayList<adminXacNhanbean> dschuathanhtoan = (ArrayList<adminXacNhanbean>)request.getAttribute("dschuathanhtoan"); 
      	if (dschuathanhtoan.size() > 0) {
      		long tmp = 0;
      		int i = 0;
      		long amount = 0;
      %>
      		<%for (; i < dschuathanhtoan.size(); i++){
      			amount = 0;
      			tmp = dschuathanhtoan.get(i).getMahoadon();
      		%>
      <div class="admin-oder">
        		<h2 class="admin-oder__heading">Mã đơn hàng : #<%=dschuathanhtoan.get(i).getMahoadon()%></h2>
    		    <p class="admin-oder__desc">Khách hàng : <%=dschuathanhtoan.get(i).getHo() + " " + dschuathanhtoan.get(i).getTen()%></p>
        		<p class="admin-oder__desc">Ngày đặt : <%=dschuathanhtoan.get(i).getNgaydathang()%></p>
        
        <table class="admin-table">
          <thead>
            <th>Tên sản phẩm</th>
            <th>Số lượng mua</th>
            <th>Tổng tiền</th>
          </thead>
          <tbody>
          <%for (; i < dschuathanhtoan.size(); i++) {
          		if (dschuathanhtoan.get(i).getMahoadon() != tmp) {
          			i--;
          			break;
          		} else {
          			amount+= dschuathanhtoan.get(i).getThanhtien();
          %>
            <tr class="admin-table__row">
              <td class="admin-table__data"><%=dschuathanhtoan.get(i).getTensanpham()%></td>
              <td class="admin-table__data"><%=dschuathanhtoan.get(i).getSoluongmua()%></td>
              <td class="admin-table__data"><%=dschuathanhtoan.get(i).getThanhtien()%></td>
            </tr>
            <%}%>
            <%}%>
            <tr class="admin-table__row">
              <td></td>
              <td></td>
              <td class="admin-table__amount">
                <div class="admin-table__group">
                  Thành tiền : <%=amount%>
                  <a href="adminXacNhanController?mahoadon=<%=tmp%>" class="admin-table__link">Xác nhận</a>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
      	<%}%>
      <%}%>
    </main>
  </body>
</html>
