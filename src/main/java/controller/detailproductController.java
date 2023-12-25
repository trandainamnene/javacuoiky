package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.chitietdonhangbo;

/**
 * Servlet implementation class detailproductController
 */
@WebServlet("/detailproductController")
public class detailproductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detailproductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String mahoadon = request.getParameter("mahoadon");
			chitietdonhangbo ctdhbo = new chitietdonhangbo();
			request.setAttribute("chitietdonhang", ctdhbo.getDsDonHang(Long.parseLong(mahoadon)));
			request.setAttribute("sttdt", request.getParameter("sttdt"));
			request.setAttribute("tongtien", ctdhbo.getTongTien());
			RequestDispatcher rd = request.getRequestDispatcher("detail_oder.jsp");
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
