package LoginPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String EmpNo = request.getParameter("Username");
		String password = request.getParameter("pass");

		passwordEncrypt epwdEncrypt = new passwordEncrypt();

		String encryptedPwd = epwdEncrypt.userPassword(password);

		LoginBean loginBean = new LoginBean();
		
		loginBean.setUsername(EmpNo);

		loginBean.setPassword(encryptedPwd);

		LoginDao loginDao = new LoginDao();

		try {
			String userValidate = loginDao.authenticateUser(loginBean);

			if (userValidate.equals("Access_Granted")) {

				request.getRequestDispatcher("addImage.jsp").forward(request, response);
			}

			else {

				request.setAttribute("errorMessage", "Login Failed");

				request.setAttribute("errMessage", userValidate);

				request.getRequestDispatcher("index.jsp").forward(request, response);
			}

		} catch (IOException e1) {

			e1.printStackTrace();

		} catch (Exception e2) {

			e2.printStackTrace();

		}
	}
}
