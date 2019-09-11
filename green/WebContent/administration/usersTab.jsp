<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Users Tab</title>

<!-- STYLE -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1,
shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
@import url(/green/css/usersTab.css);
#mytab {
	text-align: center;
}
</style>

<!-- SCRIPTS IMPORT -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="scripts/userTab.js"></script>

</head>
<body>

<!-- 	<div class="container-fluid"> -->
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
				<a href="/green/administration/administration.jsp" class="button">&laquo; Back</a>
			</div>
			
		</nav>
		
		<h2>
		<i><b>Users</b></i>
	</h2>
		

	<div class="container-fluid">
		<div class="row"></div>

		<c:if test="${(users != null)}">
			<div class="row mytab">
				<table class="table table-hover table-dark">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">First Name</th>
							<th scope="col">Last Name</th>
							<th scope="col">Phone</th>
							<th scope="col">Email</th>
							<th scope="col">Date of birth</th>
							<th scope="col">Place of birth</th>
							<th scope="col">Driving License No</th>
							<th scope="col">Driving License Expiring Date</th>
							<th scope="col"> </th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="user" items="${users}">
							<tr>
								<th scope="row"></th>
								<td>${user.name}</td>
								<td>${user.lastName}</td>
								<td>${user.phoneNumber}</td>
								<td>${user.mail}</td>
								<td>${user.dateOfBirth}</td>
								<td>${user.placeOfbirth}</td>
								<td>${user.drivingLicense}</td>
								<td>${user.expiringDateDrivingLicense}</td>
								<td><a href="/green/admins/CheckUserId?id=${user.id}"><button>Edit
											row</button></a></td>
								<c:if test="${(resultIdCheck == false)}">
									<td>USER NOT FOUND IN DATABASE</td>
								</c:if>
								<c:if test="${(updateFailed == true)}">
									<td>EDITING USER FAILED</td>
								</c:if>
							</tr>

						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
		<!-- <div class="row">
			<div class="col"></div>
			<div class="col">
				<a href="/green/administration/administration.jsp"><i>Administration Home Page</i></a>
			</div>
			<div class="col"></div>
		</div> -->
	</div>

</body>

</body>
</html>