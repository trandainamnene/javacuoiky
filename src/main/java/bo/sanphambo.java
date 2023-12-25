package bo;

import java.util.ArrayList;

import bean.sanphambean;
import dao.sanphamdao;

public class sanphambo {
	sanphamdao spdao = new sanphamdao();
	public ArrayList<sanphambean> getDsTopProduct() throws Exception{
		return spdao.getNewProDuct();
	}
	
	public ArrayList<sanphambean> getAllShirt(int page , int qty) throws Exception{
		return spdao.getAllShirt(page * qty , qty);
	}
	
	public ArrayList<sanphambean> getDSTimKiem(String key) throws Exception {
		key = key.trim();
		if (key.equals("")) {
			return spdao.getDSTimKiem(key);
		}
		String c[] = key.split(" ");
		String keyArg = String.join("%", c);
		return spdao.getDSTimKiem(keyArg);
	}
	
	public ArrayList<sanphambean> getDS() throws Exception { 
		return spdao.getDS();
	}
	
	public void updateProduct(long masanpham, String tensanpham, int soluong, String anh, long gia) throws Exception {
		 spdao.updateProduct(masanpham, tensanpham, soluong, anh, gia);;
	}
	
	public void deleteProduct(long masanpham) throws Exception {
		spdao.deleteProduct(masanpham);
	}
	
	public void themSanPham(String tensanpham, int soluong, String anh, long gia) throws Exception {
		spdao.insertSanPham(tensanpham, soluong, anh, gia);
	}
}
