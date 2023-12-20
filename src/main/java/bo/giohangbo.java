package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them( String anh,String masanpham,int soluongmua,int giatien,String tensanpham) throws Exception {
		for (giohangbean i : ds)
		{
			if (i.getMasanpham().equals(masanpham))
			{
				i.setSoluongmua(i.getSoluongmua() + soluongmua);;
				return;
			}
		}
		ds.add(new giohangbean(anh, masanpham, soluongmua, giatien, tensanpham));
	}
	
	public int soluongAJAX(String masanpham) {
		for (giohangbean x : ds) {
			if (x.getMasanpham().equals(masanpham))
			{
				return x.getSoluongmua();
			}
		}
		return -99999;
	}
	
	public long tongTienCTHoaDonAJAX(String masanpham) {
		for (giohangbean x : ds) {
			if (x.getMasanpham().equals(masanpham))
			{
				return x.getSoluongmua() * x.getGiatien();
			}
		}
		return -99999;
	}
	
	
	public long tongTienHoaDonAJAX() {
		long sum = 0;
		for (giohangbean x : ds) {
			sum+= x.getGiatien() * x.getSoluongmua();
		}
		return sum;
	}
	
	public void xoaSanPham(String masanpham) {
			for (giohangbean i : ds)
			{
				if (i.getMasanpham().equals(masanpham))
				{
					ds.remove(i);
					return;
				}
			}
	}
}
