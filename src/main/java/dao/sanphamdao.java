package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.sanphambean;

public class sanphamdao {
	public ArrayList<sanphambean> getNewProDuct() throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select top 12 *\r\n"
				+ "from SanPham\r\n"
				+ "order by masanpham desc";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long masanpham = rs.getLong("masanpham");
			String tensanpham = rs.getString("tensanpham");
			int soluong = rs.getInt("soluong");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, anh, gia));
		}
		cmd.close();
		kn.cn.close();
		return ds;
	}
	
	public ArrayList<sanphambean> getAllShirt(int page , int qty) throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * \r\n"
				+ "from SanPham \r\n"
				+ "order by masanpham offset ? rows fetch next ? rows only";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, page);
		cmd.setLong(2, qty);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			long masanpham = rs.getLong("masanpham");
			String tensanpham = rs.getString("tensanpham");
			int soluong = rs.getInt("soluong");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, anh, gia));
		}
		cmd.close();
		kn.cn.close();
		return ds;
	}
	
	public ArrayList<sanphambean> getDSTimKiem(String key) throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from sanpham where tensanpham like N'%"+ key + "%'";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			long masanpham = rs.getLong("masanpham");
			String tensanpham = rs.getString("tensanpham");
			int soluong = rs.getInt("soluong");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, anh, gia));
		}
		cmd.close();
		kn.cn.close();
		return ds;
	}
	
	public ArrayList<sanphambean> getDS() throws Exception {
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "select * from sanpham";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		ResultSet rs =  cmd.executeQuery();
		while (rs.next()) {
			long masanpham = rs.getLong("masanpham");
			String tensanpham = rs.getString("tensanpham");
			int soluong = rs.getInt("soluong");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, anh, gia));
		}
		return ds;
	}
	
	public void updateProduct(long masanpham, String tensanpham, int soluong, String anh, long gia) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "update SanPham set tensanpham = ? , soluong = ? , anh = ? , gia = ? where masanpham = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tensanpham);
		cmd.setInt(2, soluong);
		cmd.setString(3, anh);
		cmd.setLong(4, gia);
		cmd.setLong(5, masanpham);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
	
	public void deleteProduct(long masanpham)  throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "delete SanPham where masanpham = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, masanpham);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
}
