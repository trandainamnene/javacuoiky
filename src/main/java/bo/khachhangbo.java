package bo;


import bean.khachhangbean;
import dao.khachhangdao;

public class khachhangbo {
	khachhangdao khdao = new khachhangdao();
	public String addAccount(String ho, String ten, String username, String password,
			String email, String sdt) throws Exception {
		if (khdao.checkUsername(username.toLowerCase().trim())) {
			return "username";
		} else if (khdao.checkPhonenumber(sdt)) {
			return "phone";
		} else {
			int qty = khdao.addAccount(ho, ten, username.toLowerCase().trim() , MD5.ecrypt(password) , email, sdt);
			if (qty == 1) {
				return "created";
			} else {
				return "error";
			}
		}
	}
	
	public khachhangbean login(String username , String password) throws Exception {
		return khdao.DangNhap(username, MD5.ecrypt(password));
	}
}
