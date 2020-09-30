package ImagePackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import Connections.DbConnection;

@WebServlet("/ImageRetrieve")
public class ImageRetrieve extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImageRetrieve() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Class loaded");
		
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {

			Connection con = DbConnection.getConnection();

			ps = con.prepareStatement("select image from image_data");
			rs = ps.executeQuery();

			System.out.println("Retrieve loaded");
			
			List<String> images = new ArrayList<>();
			
			while (rs.next()) {

				byte[] fi = rs.getBytes("frontimage");

				String FI = new String(Base64.encodeBase64(fi), "UTF-8");
				request.setAttribute("FIS", FI);

				images.add(FI);
				
				RequestDispatcher rd = request.getRequestDispatcher("ViewImages.jsp");
				rd.forward(request, response);
			}

		} catch (SQLException e) {
			throw new ServletException("Something failed at SQL/DB level.", e);
		}

	}

}
