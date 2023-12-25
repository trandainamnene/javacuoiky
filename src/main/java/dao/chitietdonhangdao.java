package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.chitietdonhangbean;

public class chitietdonhangdao {
	public ArrayList<chitietdonhangbean> getDsChiTietDonHang(long maHoaDon) throws Exception {
		ArrayList<chitietdonhangbean>ds = new ArrayList<chitietdonhangbean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from ChiTietDonHang where mahoadon = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, maHoaDon);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long mahoadon = rs.getLong("mahoadon");
			long macthoadon = rs.getLong("mahoadon");
			String tensanpham = rs.getString("tensanpham");
			String anh = rs.getString("anh");
			Date ngaydathang = rs.getDate("ngaydathang");
			int damua = rs.getInt("damua");
			int soluongmua = rs.getInt("soluongmua");
			int gia = rs.getInt("gia");
			long thanhtien = rs.getLong("thanhtien");
			ds.add(new chitietdonhangbean(mahoadon, macthoadon, tensanpham, anh, ngaydathang, damua, soluongmua, gia, thanhtien));
		}
		kn.cn.close();
		rs.close();
		return ds;
	}
}
