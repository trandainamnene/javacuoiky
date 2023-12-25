package bo;

import java.util.ArrayList;

import bean.adminXacNhanbean;
import dao.adminXacNhandao;

public class adminXacNhanbo {
	adminXacNhandao adxacnhandao = new adminXacNhandao();
	public ArrayList<adminXacNhanbean> getAllHoaDonChuaThanhToan() throws Exception {
		return adxacnhandao.getAllDsChuaThanhToan();
	}
}
