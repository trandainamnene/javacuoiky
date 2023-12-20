package controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.khachhangbean;
import bean.sanphambean;
import bo.sanphambo;
import bo.yeuthichbo;

/**
 * Servlet implementation class shirtController
 */
@WebServlet("/shirtController")
public class shirtController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public shirtController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			if (session.getAttribute("dn") != null) {
				long makhachhang = ((khachhangbean) session.getAttribute("dn")).getMakhachhang();
				yeuthichbo ytbo = new yeuthichbo();
				request.setAttribute("maYeuThich" , ytbo.getMaYeuThich(makhachhang));
//				for (long x : ytbo.getMaYeuThich(makhachhang)) {
//					System.out.println(x);
//					System.out.println(ytbo.getMaYeuThich(makhachhang).contains(1));
//				}
			}
 			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> allShirt = spbo.getAllShirt(0 , 12);
			request.setAttribute("allShirt", allShirt);
			RequestDispatcher rd = request.getRequestDispatcher("shirt.jsp");
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
