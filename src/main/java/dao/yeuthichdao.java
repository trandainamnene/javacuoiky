package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class yeuthichdao {
	public ArrayList<Long> getMaSanPhamYeuThich(long makhachhang) throws Exception{
		ArrayList<Long> ds = new ArrayList<Long>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from YeuThich\r\n"
				+ "where makhachhang = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			ds.add(rs.getLong("masanpham"));
		}
		kn.cn.close();
		cmd.close();
		return ds;
	}
	
	public void themYeuThich(long makhachhang , long masanpham) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "insert into YeuThich values(? , ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		cmd.setLong(2, masanpham);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
	
	public void xoaYeuThichControlelr(long makhachhang , long masanpham) throws Exception {
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "delete from YeuThich where makhachhang = ? and masanpham =?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, makhachhang);
		cmd.setLong(2, masanpham);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
	
	public void deleteYeuThich(long msanpham) throws Exception {
		 KetNoi kn = new KetNoi();
		 kn.ketNoi();
		 String sql = "delete from YeuThich where masanpham =?";
		 PreparedStatement cmd = kn.cn.prepareStatement(sql);
		 cmd.setLong(1, msanpham);
		 cmd.executeUpdate();
		 cmd.close();
		 kn.cn.close();
	}
}
