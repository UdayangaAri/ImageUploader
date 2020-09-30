package LoginPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Connections.DbConnection;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean) {

		String empNo = loginBean.getUsername();
		String password = loginBean.getPassword();

		try {

			System.out.println("Decrypting password");

			LoginBean n = LoginDao.getEmployeeById(empNo);

			String empNoDB = n.getUsername();

			String passwordDB = n.getPassword();

			if (empNo.equals(empNoDB) && password.equals(passwordDB)) {

				System.out.println("Password decrypted");
				return "Access_Granted";

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("failed");
		return "Invalid user credentials";
	}

	public static LoginBean getEmployeeById(String empid) {
		LoginBean e = new LoginBean();

		try {
			
			Connection con = DbConnection.getConnection();

			PreparedStatement ps = con.prepareStatement("select * from user where Username=?");
			ps.setString(1, empid);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				e.setUsername(rs.getString("username"));
				e.setPassword(rs.getString("Password"));

			}
			con.close();
		} catch (Exception ex) {
			System.out.println("::: not working ::: ");
			ex.printStackTrace();
		}

		return e;
	}

}
