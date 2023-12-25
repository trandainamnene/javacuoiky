package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.hoadonbean;

public class hoadondao {
	public void themHoaDon(long makhachhang) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "insert into HoaDon(ngaydathang , damua , makhachhang) values (? , 0 , ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		Date d = new Date();
		Long dutil = d.getTime();
		java.sql.Date date = new java.sql.Date(dutil);
		cmd.setDate(1, date);
		cmd.setLong(2, makhachhang);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
	
	public long getMaHoaDonMoiNhat(long makhachhang) throws Exception {
		long mahoadon = -1;
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select top 1 mahoadon from HoaDon where makhachhang = ? order by mahoadon desc";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		ResultSet rs =  cmd.executeQuery();
		while (rs.next()) {
			mahoadon =  rs.getLong("mahoadon");
		}
		return mahoadon;
	}
	
	public ArrayList<hoadonbean> getDsHoaDon(long maKhachhang) throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from HoaDon where makhachhang = ? order by mahoadon asc";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, maKhachhang);
		ResultSet rs =  cmd.executeQuery();
		while (rs.next()) {
			long mahoadon = rs.getLong("mahoadon");
			Date ngaydathang = rs.getDate("ngaydathang");
			int damua = rs.getInt("damua");
			long makhachhang = rs.getLong("makhachhang");;
			ds.add(new hoadonbean(mahoadon, ngaydathang, damua, makhachhang));
		}
		kn.cn.close();
		cmd.close();
		return ds;
	}
	
	public void xacNhanHoaDon(long mahoadon) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "update HoaDon set damua = 1 where mahoadon = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahoadon);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
}
