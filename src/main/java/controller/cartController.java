package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class cartController
 */
@WebServlet("/cartController")
public class cartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartController() {
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
			String tensanpham = request.getParameter("tensanpham");
			String anh = request.getParameter("anh");
			String soluongmua = request.getParameter("soluongmua");
			String giatien = request.getParameter("giatien");
			String masanpham = request.getParameter("masanpham");
			if (masanpham != null) {
				if (session.getAttribute("cart") == null) {
					giohangbo gh = new giohangbo();
					gh.Them(anh, masanpham, Integer.parseInt(soluongmua), Integer.parseInt(giatien), tensanpham);
					session.setAttribute("cart", gh);
				} else {
					giohangbo gh = (giohangbo)session.getAttribute("cart");
					gh.Them(anh, masanpham, Integer.parseInt(soluongmua), Integer.parseInt(giatien), tensanpham);
				}
				response.sendRedirect("cartController");
			}
			RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
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
