package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.adminXacNhanbean;

public class adminXacNhandao {
	public ArrayList<adminXacNhanbean> getAllDsChuaThanhToan() throws Exception {
		ArrayList<adminXacNhanbean> ds = new ArrayList<adminXacNhanbean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from AdminXacNhan where damua = 0";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long mahoadon = rs.getLong("mahoadon");
			Date ngaydathang = rs.getDate("ngaydathang");
			int damua = rs.getInt("damua");
			String ho = rs.getString("ho");
			String ten = rs.getString("ten");
			String tensanpham = rs.getString("tensanpham");
			long gia = rs.getLong("gia");
			long soluongmua = rs.getLong("soluongmua");
			long thanhtien = rs.getLong("thanhtien");
			ds.add(new adminXacNhanbean(mahoadon, ngaydathang, damua, ho, ten, tensanpham, gia, soluongmua, thanhtien));
		}
		return ds;
	}
}
