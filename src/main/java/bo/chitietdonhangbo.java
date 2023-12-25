package bo;

import java.util.ArrayList;

import bean.chitietdonhangbean;
import dao.chitietdonhangdao;

public class chitietdonhangbo {
	chitietdonhangdao ctdhdao = new chitietdonhangdao();
	ArrayList<chitietdonhangbean> ds;
	public ArrayList<chitietdonhangbean> getDsDonHang(long mahoadon) throws Exception {
		ds = ctdhdao.getDsChiTietDonHang(mahoadon);
		return ds;
	}
	public long getTongTien() {
		long amount = 0;
		for (chitietdonhangbean x : ds) {
			amount+= x.getThanhtien();
		}
		return amount;
	}
}
