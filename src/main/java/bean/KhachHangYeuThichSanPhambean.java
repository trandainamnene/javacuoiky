package bean;

public class KhachHangYeuThichSanPhambean {
	private long makhanghang;
	private long masanpham;
	private String tensanpham;
	private String anh;
	private long gia;
	
	public KhachHangYeuThichSanPhambean(long makhanghang, long masanpham, String tensanpham, String anh, long gia) {
		super();
		this.makhanghang = makhanghang;
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.anh = anh;
		this.gia = gia;
	}
	public long getMakhanghang() {
		return makhanghang;
	}
	public void setMakhanghang(long makhanghang) {
		this.makhanghang = makhanghang;
	}
	public long getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(long masanpham) {
		this.masanpham = masanpham;
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
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	
}
