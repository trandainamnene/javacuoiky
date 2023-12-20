package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.KhachHangYeuThichSanPhambean;

public class KhachHangYeuThichSanPhamdao {
	public ArrayList<KhachHangYeuThichSanPhambean> getDS(long makhachhang) throws Exception {
		ArrayList<KhachHangYeuThichSanPhambean> ds = new ArrayList<KhachHangYeuThichSanPhambean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from KhachHangYeuThichSanPham where makhachhang=?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long makhanghang = rs.getLong("makhachhang");
			long masanpham = rs.getLong("masanpham");
			String tensanpham = rs.getString("tensanpham");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ds.add(new KhachHangYeuThichSanPhambean(makhanghang, masanpham, tensanpham, anh, gia));
		}
		return ds;
	}
}
