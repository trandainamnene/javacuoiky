package bo;

import java.util.ArrayList;

import dao.yeuthichdao;

public class yeuthichbo {
	yeuthichdao ytdao = new yeuthichdao();
	public ArrayList<Long> getMaYeuThich(long makhachhang) throws Exception {
		return ytdao.getMaSanPhamYeuThich(makhachhang);
	}
	
	public void addYeuThich(long makhachhang , long masanpham) throws Exception {
		ytdao.themYeuThich(makhachhang, masanpham);
	}
	
	public void deleteYeuThich(long makhachhang , long masanpham) throws Exception {
		ytdao.xoaYeuThichControlelr(makhachhang, masanpham);
	}
}
