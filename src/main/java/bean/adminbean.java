package bean;

public class adminbean {
	long idAdmin;
	String taikhoan;
	String matkhau;
	public long getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(long idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public adminbean(long idAdmin, String taikhoan, String matkhau) {
		super();
		this.idAdmin = idAdmin;
		this.taikhoan = taikhoan;
		this.matkhau = matkhau;
	}
	
}
