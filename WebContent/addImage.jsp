<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>

<html lang="en">

<%
	ResultSet resultset = null;
	ResultSet rs = null;
%>

<head>

<!-- #9999ff -->

<link href="css/simple-sidebar.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/sample.css">
<link rel="stylesheet" type="text/css" href="css/All.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript" src="js/clock.js"></script>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Upload image</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body>

	<div class="d-flex" id="sidebar-wrapper">

		<!-- Sidebar -->
		<jsp:include page="_sidebar.jsp"></jsp:include>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div class=container-fluid style="background-color: #FFFFFF;">

			<div id="content">

				<!-- /#Type Body Here -->

				<div class="container mt-5 mb-5">

					<!-- body start -->

					<div class="container mt-3 a">

						<div class="card shadow mb-4">

							<div class="card-header py-3">

								<%
									if (null != request.getAttribute("NIsucceed")) {
								%>
								<div class="alert alert-success" role="alert">Saved
									Successfully..</div>

								<%
									} else if (null != request.getAttribute("NIFailed")) {
								%>

								<div class="alert alert-danger" role="alert">Save
									Failed....</div>
								<%
									}
								%>

								<h4 class="m-0 font-weight-bold text-primary">Insert Image</h4>
								
							</div>

							<div class="card-body" style="left: 30%">

								<form class="forms" action="ImageServlet" method="post"
									enctype="multipart/form-data">
									<br>

									<div class="row">

										<div class="col 25">
											<p>Select category</p>

										</div>

										<div class="col">

											<select name="category" required>

												<option value="" disabled selected>Select Category</option>
												<option value="Travel and Leisure">Travel and
													Leisure</option>
												<option value="Lifestyle">Lifestyle</option>
												<option value="Supermarket Offers">Supermarket
													Offers</option>
												<option value="Shopping">Shopping</option>
												<option value="Online">Online</option>
												<option value="Health & Beauty">Health & Beauty</option>
												<option value="Dining">Dining</option>
												<option value="Other">Other</option>
												<option value="All">All</option>

											</select>

										</div>

									</div>

									<div class="row">

										<div class="col 25">
											<p>Select Image</p>

										</div>

										<div class="col">
											<input type='file' name="photo" accept="image/*"
												onchange="readURL(this);" /> <br> <br>
											<p>Max size : 16Mb</p>
											<img id="blah" src="#" alt="" /> <br>
										</div>
									</div>

									<div class="row">

										<div class="col 25">
											<p>Offer expire date</p>

										</div>

										<div class="col mr-2">
											<input type='date' value="" name="exdate" id="exdate"
												class="form-control" /> <br>
										</div>
									</div>

									<input type="submit" value="Save">

								</form>

							</div>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

	<!-- /#page-content-wrapper -->

	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Menu Toggle Script -->
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

		window.setTimeout(function() {
			$(".alert").fadeTo(500, 0).slideUp(500, function() {
				$(this).remove();
			});
		}, 2000);

		////////////////////////////////////////////////////////////////////////

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah').attr('src', e.target.result).width(300).height(
							200);
				};

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

</body>

</html>
