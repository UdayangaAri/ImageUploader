package Connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static Connection getConnection() {
		Connection con = null;
		String url = "jdbc:mysql://172.20.106.166:3306/image_uploader?autoReconnect=true&useSSL=false";
		String username = "ceybank_db";
		String password = "Ceybank@db123";

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
				
				if (con != null){
					
				}

			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
