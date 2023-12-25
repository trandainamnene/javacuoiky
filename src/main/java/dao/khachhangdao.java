package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.khachhangbean;

public class khachhangdao {
	public boolean checkUsername(String username) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sqlCheckUsername = "select * \r\n"
				+ "from KhachHang\r\n"
				+ "where username= ? ";
		PreparedStatement cmd  = kn.cn.prepareStatement(sqlCheckUsername);
		cmd.setString(1, username);
		ResultSet rs = cmd.executeQuery();
		boolean isExist = false;
		while (rs.next()) {
			isExist = true;
		}
		cmd.close();
		rs.close();
		return isExist;
	}
	
	public boolean checkPhonenumber(String phoneNumber) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sqlphoneNumber = "select * \r\n"
				+ "from KhachHang\r\n"
				+ "where sdt= ?";
		PreparedStatement cmd  = kn.cn.prepareStatement(sqlphoneNumber);
		cmd.setString(1, phoneNumber);
		ResultSet rs = cmd.executeQuery();
		boolean isExist = false;
		while (rs.next()) {
			isExist = true;
		}
		cmd.close();
		rs.close();
		return isExist;
		
	}
	
	public int addAccount(String ho, String ten, String username, String password,
			String email, String sdt) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "insert into KhachHang(ho , ten , username , password , email , sdt) values(? , ? ,? ,? , ? , ?)";
		PreparedStatement cmd  = kn.cn.prepareStatement(sql);
		cmd.setString(1, ho);
		cmd.setString(2, ten);
		cmd.setString(3, username);
		cmd.setString(4, password);
		cmd.setString(5, email);
		cmd.setString(6, sdt);
		int qty = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return qty;
	}
	
	public khachhangbean DangNhap(String username , String password) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from KhachHang\r\n"
				+ "where username = ? and password=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, username);
		cmd.setString(2, password);
		ResultSet rs = cmd.executeQuery();
		khachhangbean khbean = null;
		while (rs.next()) {
			long makhachhang = rs.getLong("makhachhang");
			String ho = rs.getString("ho");
			String ten = rs.getString("ten");
			String username1 = rs.getString("username");
			String password1 = rs.getString("password");
			String email = rs.getString("email");
			String sdt = rs.getString("sdt");
			khbean = new khachhangbean(makhachhang, ho, ten, username1, password1, email, sdt);
			break;
		}
		cmd.close();
		kn.cn.close();
		return khbean;
	}
}
