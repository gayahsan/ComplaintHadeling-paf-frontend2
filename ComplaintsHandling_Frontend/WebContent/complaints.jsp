<%@page import="com.Complaint"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ElectroGrid</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/complaints.js"></script> 
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
		class="navbar-brand" href="#">Complaints Management</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>

<!-- Create Form -->
	<div class="container">

		<form id="frmComplaint" name="frmComplaint"
			style="margin-top: 20px; margin-left: 25%; width: 500px;">

			<div class="form-group">
				<label>Account Number</label> <input type="text" name="accountNumber" id="accountNumber"
					style="margin-bottom:15px;" class="form-control" placeholder=" " size="30px" required>
			</div>

			<div class="form-group">
				<label>Complaint Date</label> <input type="text" name="complaintDate"
					id="complaintDate" style="margin-bottom:15px;" class="form-control" placeholder=" "
					size="30px" required>
			</div>

			<div class="form-group">
				<label>New Complaint</label> <input type="text" name="nComplaint"
					id="nComplaint" style="margin-bottom:15px;" class="form-control" placeholder=" "
					size="30px" required>
			</div>

			<div class="form-group">
				<label>Anything More To Tell</label> <input type="text" name="anythingMoreToTell" id="anythingMoreToTell"
					style="margin-bottom:15px;" class="form-control" placeholder=" " size="30px" required>
			</div>
 
			<div class="form-group" align="right">
				<input id="btnSave" name="btnSave" type="button" value="Save" style="margin-bottom:15px;" class="btn btn-primary">
				<input type="hidden" id="hidComplaintIDSave" name="hidComplaintIDSave" value="">
			</div>
		</form>
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		<br>
		<div id="divComplaintsGrid">
		<%
			Complaint complaintObj = new Complaint();
			out.print(complaintObj.readComplaints());
		%>
		</div>
	</div>

</body>
</html>
