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
#mytab {
	text-align: center;
}
</style>

<!-- SCRIPTS IMPORT -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="scripts/userTab.js"></script>

</head>
<body>

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
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<a href="/green/administration/administration.jsp"><i>Administration Home Page</i></a>
			</div>
			<div class="col"></div>
		</div>
	</div>

</body>

</body>
</html>