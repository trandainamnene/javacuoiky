package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.khachhangbo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangkyController() {
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
			khachhangbo khbo = new khachhangbo();
			String email = request.getParameter("email");
			String sdt = request.getParameter("sdt");
			String ho = request.getParameter("ho");
			String ten = request.getParameter("ten");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String repassword =  request.getParameter("re-password");
			String issue;
			if (password != null && !(password.equals(repassword))) {
				request.setAttribute("repassword", false);
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
				rd.forward(request, response);
				return;
			}
			if (username != null) {
				String checkValid = khbo.addAccount(ho, ten, username, password, email, sdt);
				if (checkValid.equals("username")) {
					issue = "username";
					request.setAttribute(issue, true);
					
				} else if (checkValid.equals("phone")) {
					issue = "phone";
					request.setAttribute(issue, true);
				} else if (checkValid.equals("error")) {
					issue = "error";
					request.setAttribute(issue, true);
					
				} else if (checkValid.equals("created")) {
					issue = "created";
					request.setAttribute(issue, true);
				}
			}
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
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
