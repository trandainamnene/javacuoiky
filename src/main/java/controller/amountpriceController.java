package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import bo.giohangbo;

/**
 * Servlet implementation class amountPrice
 */
@WebServlet("/amountPrice")
public class amountpriceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public amountpriceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			giohangbo ghbo = (giohangbo)session.getAttribute("cart");
			PrintWriter out = response.getWriter();
			String masanpham = request.getParameter("masanpham");
			
			out.println("{\r\n"
					+ "			\"tongTienCTHoaDon\" : \""+ ghbo.tongTienCTHoaDonAJAX(masanpham) +"\",\r\n"
					+ "			\"tongTienHoaDon\" : \""+ ghbo.tongTienHoaDonAJAX() +"\"\r\n"
					+ "		}");
			
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
