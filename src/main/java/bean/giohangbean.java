package bean;

public class giohangbean {
	private String anh;
	private String masanpham;
	private int soluongmua;
	private int giatien;
	private String tongtien;
	private String tensanpham;
	
	public giohangbean(String anh, String masanpham, int soluongmua, int giatien, String tensanpham) {
		super();
		this.anh = anh;
		this.masanpham = masanpham;
		this.soluongmua = soluongmua;
		this.giatien = giatien;
		this.tensanpham = tensanpham;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	public int getGiatien() {
		return giatien;
	}
	public void setGiatien(int giatien) {
		this.giatien = giatien;
	}
	public String getTongtien() {
		return tongtien;
	}
	public void setTongtien(String tongtien) {
		this.tongtien = tongtien;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public void setTensanpham(String tensach) {
		this.tensanpham = tensach;
	}
	
	
}
