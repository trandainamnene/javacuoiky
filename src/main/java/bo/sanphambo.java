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
}
