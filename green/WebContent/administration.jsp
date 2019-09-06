<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(/green/css/Welcome.css);
</style>
<title>Admins Home Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg  ">

		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03"
			aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor03">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/green/index.jsp">Home <span
						class="sr-only"></span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/green/NuovoAdmin.jsp ">Add new
						administrator</a></li>
				<li class="nav-item"><a class="nav-link" href="/green/admins/ShowTabUser">Manage
						Registered Users</a></li>
				<li class="nav-item"><a class="nav-link" href="/green/admins/ShowTabAdm">Manage
						Administrators</a></li>
			</ul>
		</div>
	</nav>

	<div class="text-white text-center">
		<h1>
			<i><b>Welcome back dear Administrator. Enjoy the rest of the day!</b></i>
		</h1>
		<br>

	</div>
</html>