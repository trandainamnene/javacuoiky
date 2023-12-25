package bean;

import java.util.Date;

public class chitietdonhangbean {
	private long  mahoadon;
	private long macthoadon;
	private String tensanpham;
	private String anh;
	private Date ngaydathang;
	private int damua;
	private int soluongmua;
	private int gia;
	private long thanhtien;
	
	public chitietdonhangbean(long mahoadon, long macthoadon, String tensanpham, String anh, Date ngaydathang,
			int damua, int soluongmua, int gia, long thanhtien) {
		super();
		this.mahoadon = mahoadon;
		this.macthoadon = macthoadon;
		this.tensanpham = tensanpham;
		this.anh = anh;
		this.ngaydathang = ngaydathang;
		this.damua = damua;
		this.soluongmua = soluongmua;
		this.gia = gia;
		this.thanhtien = thanhtien;
	}
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public long getMacthoadon() {
		return macthoadon;
	}
	public void setMacthoadon(long macthoadon) {
		this.macthoadon = macthoadon;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
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
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
}
