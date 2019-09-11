<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>
		<i><b>New Admin</b></i>
	</h2>
	<hr>
	<br>
	
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
						href="/green/index.jsp">Home<span class="sr-only"></span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/administration/NuovoAdmin.jsp ">Add new
							administrator</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/admins/ShowTabUser">Manage Registered Users</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/green/admins/ShowTabAdm">Manage Administrators</a></li>
					<li class="nav-item"><p class="nav-link"></p></li>
					<li class="nav-item"><p class="nav-link">Logged user:</p></li>
					<c:if test="${(loggedUser != null)}">
						<li class="nav-item"><p class="nav-link">${loggedUser.name}${loggedUser.lastName}</p></li>
					</c:if>
					<li class="nav-item active"><a class="nav-link"
						href="/green/admins/LogOut">Log out<span class="sr-only"></span>
					</a></li>
				</ul>
				<a href="/green/administration/administration.jsp" class="button">Back</a>
			</div>
			
		</nav>
		</div>

	<div id='errorreg'>
		<c:if test="${(resultAdd == false)}">
			<p>This email address has already been added to our system</p>
		</c:if>
	</div>
	<br>

	<form action="/green/admins/NewAdmin">

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="firstname">First Name:</label> <input type="text"
					class="form-control" id="firstname" name="firstName" required>
			</div>
		</div>

		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="lastname">Last Name:</label> <input type="text"
					class="form-control" id="lastname" name="LastName" required>
			</div>
		</div>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="email">Email:</label> <input type="text"
					class="form-control" id="email" name="email" required>
			</div>
		</div>
		<div class="form-row">
			<div class="col-md-4 mb-3">
				<label for="password"> Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
		</div>


		<div>
			<button type="submit">Add</button>
		</div>

		<br />

	</form>
	<div>
		<a href="/green/administration/administration.jsp"><i>Administration
				Home Page</i></a>
	</div>
</body>
</html>