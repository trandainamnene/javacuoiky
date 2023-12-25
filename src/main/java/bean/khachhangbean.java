package bean;

public class khachhangbean {
	private long makhachhang;
	private String ho;
	private String ten;
	private String username;
	private String password;
	private String email;
	private String sdt;
	public khachhangbean(long makhachhang, String ho, String ten, String username, String password,
			String email, String sdt) {
		super();
		this.makhachhang = makhachhang;
		this.ho = ho;
		this.ten = ten;
		this.username = username;
		this.password = password;
		this.email = email;
		this.sdt = sdt;
	}
	public long getMakhachhang() {
		return makhachhang;
	}
	public void setMakhachhang(long makhachhang) {
		this.makhachhang = makhachhang;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	
	
}
