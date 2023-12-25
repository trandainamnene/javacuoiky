package bean;

public class chitiethoadonbean {
	private long macthoadon;
	private long mahoadon;
	private long masanpham;
	private int soluongmua;
	
	public chitiethoadonbean(long macthoadon, long mahoadon, long masanpham, int soluongmua) {
		super();
		this.macthoadon = macthoadon;
		this.mahoadon = mahoadon;
		this.masanpham = masanpham;
		this.soluongmua = soluongmua;
	}
	public long getMacthoadon() {
		return macthoadon;
	}
	public void setMacthoadon(long macthoadon) {
		this.macthoadon = macthoadon;
	}
	public long getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(long mahoadon) {
		this.mahoadon = mahoadon;
	}
	public long getMasanpham() {
		return masanpham;
	}
	public void setMasanpham(long masanpham) {
		this.masanpham = masanpham;
	}
	public int getSoluongmua() {
		return soluongmua;
	}
	public void setSoluongmua(int soluongmua) {
		this.soluongmua = soluongmua;
	}
	
}
