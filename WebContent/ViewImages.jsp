<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Connections.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>

<html lang="en">

<%
	ResultSet resultset = null;
	ResultSet rs = null;
%>

<head>

<!-- #9999ff -->

<link href="css/simple-sidebar.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/ViewImages.css">

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

<title>Offers</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body onload="startTime()">

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


								<h4 class="m-0 font-weight-bold text-primary">View Images</h4>
							</div>

							<div class="card-body" style="text-align: center;"></div>

							<div class="tab">
								<button class="tablinks" onclick="openTab(event, 'travel')"
									id="defaultOpen">Travel and Leisure</button>
								<button class="tablinks" onclick="openTab(event, 'Lifestyle')">Lifestyle</button>
								<button class="tablinks" onclick="openTab(event, 'Supermarket')">Supermarket
									Offers</button>

								<button class="tablinks" onclick="openTab(event, 'Shopping')">Shopping</button>
								<button class="tablinks" onclick="openTab(event, 'Online')">Online</button>
								<button class="tablinks" onclick="openTab(event, 'Health')">Health
									& Beauty</button>
								<button class="tablinks" onclick="openTab(event, 'Dining')">Dining</button>
								<button class="tablinks" onclick="openTab(event, 'Other')">Other</button>
								<button class="tablinks" onclick="openTab(event, 'All')">All</button>

							</div>

							<div id="travel" class="tabcontent">

								<%
									try {

										String type = "Travel and Leisure";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>

							</div>

							<div id="Lifestyle" class="tabcontent">
								<%
									try {

										String type = "Lifestyle";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>
							</div>

							<div id="Supermarket" class="tabcontent">

								<%
									try {

										String type = "Supermarket Offers";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>

							</div>

							<div id="Shopping" class="tabcontent">

								<%
									try {

										String type = "Shopping";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>


							</div>

							<div id="Online" class="tabcontent">


								<%
									try {

										String type = "Online";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>


							</div>

							<div id="Health" class="tabcontent">


								<%
									try {

										String type = "Health & Beauty";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>


							</div>

							<div id="Dining" class="tabcontent">


								<%
									try {

										String type = "Dining";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>


							</div>

							<div id="Other" class="tabcontent">


								<%
									try {

										String type = "other";
										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con
												.prepareStatement("select image_ID from image_data where image_category=?");
										statement.setString(1, type);

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>


							</div>

							<div id="All" class="tabcontent">


								<%
									try {

										Connection con = DbConnection.getConnection();
										System.out.println("Printing connection object " + con);

										PreparedStatement statement = con.prepareStatement("select image_ID from image_data");

										resultset = statement.executeQuery();

									} catch (Exception e) {
										e.printStackTrace();
									}

									while (resultset.next()) {

										String LID = resultset.getString(1);

										//System.out.println("LID value ::: " + LID);
								%>
								<img src="ImageLoader.jsp?ImageId=<%=LID%>" width="auto"
									height="383">
								<%
									}
								%>



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

		///////////////////////////////////////////////////////////////////////

		function openTab(evt, tabName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(tabName).style.display = "block";
			evt.currentTarget.className += " active";
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>

</body>

</html>
