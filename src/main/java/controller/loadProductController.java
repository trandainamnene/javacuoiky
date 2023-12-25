package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;

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
 * Servlet implementation class loadProductController
 */
@WebServlet("/loadProductController")
public class loadProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			khachhangbean isLogin = (khachhangbean)session.getAttribute("dn");
			yeuthichbo ytbo = new yeuthichbo();
			PrintWriter out =  response.getWriter();
			sanphambo spbo = new sanphambo();
			ArrayList<Long> dsMaYeuThich = null;
			String page = request.getParameter("page");
			System.out.println(page);
			ArrayList<sanphambean> ds = spbo.getAllShirt(Integer.parseInt(page), 12);
			String html = "";
			if (isLogin != null) {
				dsMaYeuThich = ytbo.getMaYeuThich(isLogin.getMakhachhang());
				
			}
			
			for (sanphambean x : ds) {
				html += "<div class=\"col-12 col-md-4 col-lg-3\">\r\n"
						+ "                    <section class=\"card\">\r\n"
						+ "                        <div class=\"card__icon\">\r\n";
						if (dsMaYeuThich != null) {
							if (dsMaYeuThich.contains(x.getMasanpham())) {
								html += "<img data-user='" + isLogin.getMakhachhang() + "' data-product='"+ x.getMasanpham() + "'data-active='true' data-login='true' src=\"./assests/icons/heart-active.svg\" alt=\"Heart Icon\" class=\"icon-heart\">\r\n";
							}  else 
							{
								html+= "<img data-user='" + isLogin.getMakhachhang() + "' data-product='"+ x.getMasanpham() + "' data-login='true' src=\"./assests/icons/heart.svg\" alt=\"Heart Icon\" class=\"icon-heart\">\r\n";
							}
						} else 
						{
							html += "<a href=\"dangnhapController?isLogin=false\"><img src=\"./assests/icons/heart.svg\" alt=\"Heart Icon\" class=\"icon-heart\"></a>\r\n";
						}
				html	+= "                        </div>\r\n"
						+ "                        <img src=\""+x.getAnh()+"\"\r\n"
						+ "                            alt=\"Ảnh sản phẩm\" class=\"card__image\">\r\n"
						+ "                        <div class=\"card__content\">\r\n"
						+ "                            <section class=\"card__info\">\r\n"
						+ "                                <h2 class=\"card__name\">\r\n"
						+ 										x.getTensanpham()
						+ "                                </h2>\r\n"
						+ "                            </section>\r\n"
						+ "                            <a href=\"cartController?masanpham="+ x.getMasanpham() + "&tensanpham=" + x.getTensanpham() + "&anh=" + x.getAnh() + "&soluongmua=" + 1 + "&giatien=" + x.getGia() +"\" class=\"product__price\">\r\n"
						+ 									x.getGia()
						+ "                            </a>\r\n"
						+ "                        </div>\r\n"
						+ "                    </section>\r\n"
						+ "                </div>";
			}
			out.println(html);
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
