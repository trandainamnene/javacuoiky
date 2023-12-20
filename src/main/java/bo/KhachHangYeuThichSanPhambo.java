package bo;

import java.util.ArrayList;

import bean.KhachHangYeuThichSanPhambean;
import dao.KhachHangYeuThichSanPhamdao;

public class KhachHangYeuThichSanPhambo {
	KhachHangYeuThichSanPhamdao khytspdao = new KhachHangYeuThichSanPhamdao();
	public ArrayList<KhachHangYeuThichSanPhambean> getDS (long makhachhang) throws Exception {
		return khytspdao.getDS(makhachhang);
	}
}
