package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.adminbean;

public class admindao {
	public adminbean dangNhapAdmin(String taiKhoan , String matKhau) throws Exception {
		adminbean isLogin = null;
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from Admin where taikhoan = ? and matkhau = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, taiKhoan);
		cmd.setString(2, matKhau);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long idAdmin = rs.getLong("idAdmin");
			String taikhoan = rs.getString("taikhoan");
			String matkhau = rs.getString("matkhau");
			isLogin = new adminbean(idAdmin, taikhoan, matkhau);
			break;
		}
		kn.cn.close();
		cmd.close();
		return isLogin;
	}
}
