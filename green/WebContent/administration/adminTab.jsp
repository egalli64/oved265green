<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Tab</title>

<!-- STYLE -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,
shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(/green/css/adminTab.css);

#mytab {
	text-align: center;
}
</style>

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
				<a href="/green/administration/administration.jsp" class="button"> &laquo; Back </a>
			</div>
			
		</nav>
		<br><br><br>
		<h2>
		<i><b>Administrators</b></i>
	</h2>
		
		<div class="row"></div>

		<c:if test="${(admins != null)}">
			<div class="row mytab">
				<table class="table table-hover table-dark">
					<thead>
						<tr>

							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Email</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="admin" items="${admins}">
							<tr>

								<td>${admin.name}</td>
								<td>${admin.lastName}</td>
								<td>${admin.mail}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
		
	</div>



</body>

</body>
</html>