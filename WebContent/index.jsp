<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.List"%>
<html lang="en">

<%
	String uid = (String) session.getAttribute("userId");
%>

<head>

<!-- #9999ff -->

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/login.css">

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login Page</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<style type="text/css">
.center {
	margin: auto;
	width: 60%;
	padding: 10px;
	height: 60px;
}
</style>

</head>

<body onload="javascript:back_block() , noback()">

	<div class="d-flex" id="sidebar-wrapper">

		<!-- Sidebar -->

		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div class=container-fluid>

			<div id="content">

				<div class="container mt-5 mb-5">

					<!-- body start -->

					<div class="center">

						<div class="container mt-5 b" style="text-align: center;">

							<div class="card shadow mb-4">

								<div class="card-header py-3"
									style="text-align: center; height: 60px; background-color: #464646;">

									<p>
										<font color="#fffff" style="">User Login </font>
									</p>

								</div>

								<%
									if (null != request.getAttribute("errorMessage")) {
								%>

								<div class="alert alert-danger" role="alert">Invalid
									Username/Password</div>

								<%
									}
								%>

								<div class="col">

									<div class="card-body" style="text-align: center">

										<br>

										<form action="LoginServlet" method="post">

											<div class="form-group">

												<input type="text" style="text-align: center;"
													class="form-control" name="Username" placeholder="Username"
													required>

											</div>

											<div class="form-group">

												<input type="password" style="text-align: center;"
													class="form-control" name="pass" placeholder="Password"
													required>

											</div>
											<br>
											<div>
												<input type="submit" value="Login"
													style="text-align: center; margin: 0 auto; display: block;">
											</div>

										</form>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("active");
		});

		$(document).ready(function() {

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});

		});

		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}

		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>
</body>

</html>