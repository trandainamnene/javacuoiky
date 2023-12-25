package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.adminbean;
import bean.khachhangbean;
import bo.adminbo;
import bo.khachhangbo;

/**
 * Servlet implementation class adminDangNhapController
 */
@WebServlet("/adminDangNhapController")
public class adminDangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminDangNhapController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		try {
			adminbo adminbo = new adminbo();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			if (username != null && password != null) {
				adminbean isLoggin = adminbo.adminDangNhap(username, password);
				if (isLoggin != null) {
					session.setAttribute("dnAdmin", isLoggin);
					response.sendRedirect("adminHomeController");
					return;
				} else {
					request.setAttribute("errorLogin", true);
				}
			}
			if (request.getParameter("isLogin") != null) {
				request.setAttribute("isLogin", true);
			}
			RequestDispatcher rd =request.getRequestDispatcher("admindangnhap.jsp");
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
