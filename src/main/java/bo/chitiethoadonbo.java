package bo;

import dao.chitiethoadondao;

public class chitiethoadonbo {
	chitiethoadondao cthddao = new chitiethoadondao();
	public void themChiTietHoaDon(long mahoadon , long masanpham , int soluongmua) throws Exception {
		cthddao.themChiTietHoaDon(mahoadon, masanpham, soluongmua);
	}
}
