<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Tab</title>

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

		<c:if test="${(admins != null)}">
			<div class="row mytab">
				<table>
					<tr class="bg-danger text-white">
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
					<c:forEach var="admin" items="${admins}">
						<tr class="bg-danger text-white">
							<td>${admin.name}</td>
							<td>${admin.lastName}</td>
							<td>${admin.mail}</td>
						</tr>
					</c:forEach>
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