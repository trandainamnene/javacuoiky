package bo;

import bean.adminbean;
import dao.admindao;

public class adminbo {
	admindao admdao = new admindao();
	public adminbean adminDangNhap(String taikhoan , String matkhau) throws Exception {
		return admdao.dangNhapAdmin(taikhoan, matkhau);
	}
}
