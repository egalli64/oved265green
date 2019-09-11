<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Page not found</title>
</head>
<body bgcolor="#3e886c">

	<div>
		<div>Exception: ${pageContext.exception["class"]}</div>
		<div>Message: ${pageContext.exception["message"]}</div>
	</div>

	<a href="/green/index">Go back to our Website</a>
</body>
</html>