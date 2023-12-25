package bean;

import java.util.Date;

public class hoadonbean {
	private long mahoadon;
	private Date ngaydathang;
	private int damua;
	private long makhachhang;
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public Date getNgaydathang() {
		return ngaydathang;
	}
	public void setNgaydathang(Date ngaydathang) {
		this.ngaydathang = ngaydathang;
	}
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
	}
	public hoadonbean(long mahoadon, Date ngaydathang, int damua, long makhachhang) {
		super();
		this.mahoadon = mahoadon;
		this.ngaydathang = ngaydathang;
		this.damua = damua;
		this.makhachhang = makhachhang;
	}
	
}
