<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(/green/css/Admin.css);
</style>
<title>Admin</title>
</head>
<body>

	<div class="container-fluid">

		<nav class="navbar navbar-expand-lg  ">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="/green/index.jsp">Home <span class="sr-only"></span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/NuovoUtente.jsp ">Sign up</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Price
							list</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About us</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/Admin.jsp">Administrators</a></li>
				</ul>
				<a href="/green/index.jsp" class="button"> &laquo; Back </a>
			</div>
		</nav>
	</div>





	<h2>
		<i><b>Admin Login</b></i>
	</h2>

	<div id='errorlogin'>
		<c:if test="${(logError != null)&&(logError == true)}">
			<p>User names or password not valid. Try again</p>
		</c:if>
	</div>

	<form action="/green/admins/AdminLogIn" method="post">

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text"
					class="form-control" id="firstname" name="firstname">

			</div>
		</div>


		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text"
					class="form-control" id="lastname" name="lastname">

			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password">

			</div>
		</div>
		
		<div>
			<button type="submit">Login</button>
		</div>
	</form>



</body>
</html>







