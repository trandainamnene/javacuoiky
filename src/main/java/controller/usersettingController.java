package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.khachhangbean;
import bo.KhachHangYeuThichSanPhambo;
import bo.chitiethoadonbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class usersettingController
 */
@WebServlet("/usersettingController")
public class usersettingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usersettingController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				HttpSession session = request.getSession();
				if (session.getAttribute("dn") == null) {
					response.sendRedirect("dangnhapController?isLogin=false");
					return;
				}
				khachhangbean khbean =  (khachhangbean)session.getAttribute("dn");
				KhachHangYeuThichSanPhambo khytspbo = new KhachHangYeuThichSanPhambo();
				request.setAttribute("khytsp", khytspbo.getDS(khbean.getMakhachhang()));
				// khi bấm đặt hàng
				String maKHDatHang = request.getParameter("maKHDatHang");
				if (maKHDatHang != null) {		
					chitiethoadonbo cthdbo = new chitiethoadonbo();
					hoadonbo hdbo = new hoadonbo();
					hdbo.themHoadon(Long.parseLong(maKHDatHang));
					giohangbo ghbo = (giohangbo)session.getAttribute("cart");
					for (giohangbean x : ghbo.ds) {
						cthdbo.themChiTietHoaDon(hdbo.getMaHoaDonMoiNhat(Long.parseLong(maKHDatHang)), Long.parseLong(x.getMasanpham()), x.getSoluongmua());
					}
					request.setAttribute("hoadon", new hoadonbo().getDsHoaDon(Long.parseLong(maKHDatHang)));
					response.sendRedirect("usersettingController");
					return;
				} else {
					request.setAttribute("hoadon", new hoadonbo().getDsHoaDon(khbean.getMakhachhang()));
				}
				RequestDispatcher rd = request.getRequestDispatcher("user_setting.jsp");
				rd.forward(request, response);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
