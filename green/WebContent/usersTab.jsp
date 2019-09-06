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


</head>
<body>

	<div class="container-fluid">
		<div class="row"></div>

		<c:if test="${(users != null)}">
			<div class="row mytab">
				<table>
					<tr class="bg-danger text-white">
						<th>First Name</th>
						<th>Last Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Date of birth</th>
						<th>Place of birth</th>
						<th>Driving License No</th>
						<th>Driving License Expiring Date</th>
					</tr>

					<c:forEach var="user" items="${users}">
						<tr class="bg-danger text-white">
							<td>${user.userName}</td>
							<td>${user.userLastName}</td>
							<td>${user.phoneNumber}</td>
							<td>${user.mail}</td>
							<td>${user.dateOfBirth}</td>
							<td>${user.placeOfbirth}</td>
							<td>${user.drivingLicense}</td>
							<td>${user.expiringDateDrivingLicense}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<a href="/green/administration.jsp"><i>Administration Home Page</i></a>
			</div>
			<div class="col"></div>
		</div>
	</div>

</body>

</body>
</html>