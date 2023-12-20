package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class KetNoi {
	Connection cn;
	public void ketNoi() throws Exception  {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		String url = "jdbc:sqlserver://LAPTOP-4JQ21QCG\\SQLEXPRESS:1433;databaseName=ShopCuoiKy; user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.println("Da ket noi");
	}
}
