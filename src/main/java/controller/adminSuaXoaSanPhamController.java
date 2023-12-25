package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.sanphambo;
import bo.yeuthichbo;

/**
 * Servlet implementation class adminSuaXoaSanPhamController
 */
@WebServlet("/adminSuaXoaSanPhamController")
public class adminSuaXoaSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminSuaXoaSanPhamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			HttpSession session = request.getSession();	
			if (session.getAttribute("dnAdmin") == null) {
				response.sendRedirect("adminDangNhapController?isLogin=true");
				return;
			}
			sanphambo spbo = new sanphambo();
			String maspsua = request.getParameter("maspsua");
			if (maspsua != null) {
				 
				 String tensp = request.getParameter("tensp");
				 String slsp = request.getParameter("slsp");
				 String giasp = request.getParameter("giasp");
				 String anhsp = request.getParameter("anhsp");
				 spbo.updateProduct(Long.parseLong(maspsua), tensp, Integer.parseInt(slsp), anhsp, Long.parseLong(giasp));
				 response.sendRedirect("adminSuaXoaSanPhamController");
			}
			String maspxoa = request.getParameter("maspxoa");
			if (maspxoa != null) {
				 yeuthichbo ytbo = new yeuthichbo();
				 ytbo.deleteYeuThichAdmin(Long.parseLong(maspxoa));
				 spbo.deleteProduct(Long.parseLong(maspxoa));
				 response.sendRedirect("adminSuaXoaSanPhamController");
			}
			request.setAttribute("dssp", spbo.getDS());
			RequestDispatcher rd = request.getRequestDispatcher("adminSuaXoaSanPham.jsp");
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
