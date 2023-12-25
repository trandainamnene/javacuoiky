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

/**
 * Servlet implementation class adminThemSanPhamController
 */
@WebServlet("/adminThemSanPhamController")
public class adminThemSanPhamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminThemSanPhamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();	
			if (session.getAttribute("dnAdmin") == null) {
				response.sendRedirect("adminDangNhapController?isLogin=true");
				return;
			}
			String tensanpham = request.getParameter("tensanpham");
			String slsanpham = request.getParameter("slsanpham");
			String giasp = request.getParameter("giasp");
			String anhsp = request.getParameter("anhsp");
			if (tensanpham != null) {
				sanphambo spbo = new sanphambo();
				spbo.themSanPham(tensanpham, Integer.parseInt(slsanpham), anhsp, Long.parseLong(giasp));
				request.setAttribute("dathem", true);
			}
			RequestDispatcher rd = request.getRequestDispatcher("adminThemSanPham.jsp");
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
