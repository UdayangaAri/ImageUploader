package ImagePackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/ImageServlet")
@MultipartConfig(maxFileSize = 16177215)

public class ImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImageServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Part filePart = request.getPart("photo");
		String category = request.getParameter("category");
		String exdate = request.getParameter("exdate");

		if (filePart != null) {

			System.out.println("exdate ::: " + exdate);

			ImagesBean imagesBean = new ImagesBean();

			imagesBean.setImage(filePart);
			imagesBean.setExdate(exdate);
			imagesBean.setCategory(category);

			int status = ImageDAO.saveImage(imagesBean);

			if (status > 0) {

				request.setAttribute("NIsucceed", "NIsucceed");

				request.getRequestDispatcher("addImage.jsp").include(request, response);
			} else {

				request.setAttribute("NIFailed", "NIFailed");

				request.getRequestDispatcher("addImage.jsp").include(request, response);
			}
		}
	}

}
