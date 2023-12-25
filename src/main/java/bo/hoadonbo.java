package bo;

import java.util.ArrayList;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hddao = new hoadondao();
	public void themHoadon(long makhachhang) throws Exception {
		hddao.themHoaDon(makhachhang);
	}
	
	public long getMaHoaDonMoiNhat(long makhachhang) throws Exception{
		return hddao.getMaHoaDonMoiNhat(makhachhang);
	}
	
	public ArrayList<hoadonbean> getDsHoaDon(long makhachhang) throws Exception {
		return hddao.getDsHoaDon(makhachhang);
	}
	
	public void xacNhanHoaDon(long mahoadon) throws Exception{
		hddao.xacNhanHoaDon(mahoadon);
	}
}
