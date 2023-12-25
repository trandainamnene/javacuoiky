package bean;

import java.util.Date;

public class adminXacNhanbean {
	private long mahoadon;
	private Date ngaydathang;
	private  int damua;
	private String ho;
	private String ten;
	private String tensanpham;
	private long gia;
	private long soluongmua;
	private long thanhtien;
	
	public adminXacNhanbean(long mahoadon, Date ngaydathang, int damua, String ho, String ten, String tensanpham,
			long gia, long soluongmua, long thanhtien) {
		super();
		this.mahoadon = mahoadon;
		this.ngaydathang = ngaydathang;
		this.damua = damua;
		this.ho = ho;
		this.ten = ten;
		this.tensanpham = tensanpham;
		this.gia = gia;
		this.soluongmua = soluongmua;
		this.thanhtien = thanhtien;
	}
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
	public String getHo() {
		return ho;
	}
	public void setHo(String ho) {
		this.ho = ho;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(long soluongmua) {
		this.soluongmua = soluongmua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	
}
