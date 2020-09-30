package ImagePackage;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.Part;

import Connections.DbConnection;

public class ImageDAO {

	public static int saveImage(ImagesBean n) {
		int status = 0;
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into image_data(image,image_category,exp_date,up_date) values (?,?,?,CURRENT_TIMESTAMP)");

			InputStream inputStream = null;

			Part filePart = n.getImage();

			inputStream = filePart.getInputStream();

			ps.setBlob(1, inputStream);
			ps.setString(2, n.getCategory());
			ps.setString(3, n.getExdate());

			status = ps.executeUpdate();

			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
	}

}
