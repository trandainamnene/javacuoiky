package dao;

import java.sql.PreparedStatement;

public class chitiethoadondao {
	public void themChiTietHoaDon(long mahoadon , long masanpham , int soluongmua) throws Exception{
		KetNoi kn = new KetNoi();
		kn.ketNoi();
		String sql = "insert into ChiTietHoaDon(mahoadon , masanpham , soluongmua) values (? , ? , ?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setLong(1, mahoadon);
		cmd.setLong(2, masanpham);
		cmd.setInt(3, soluongmua);
		cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
	}
}
