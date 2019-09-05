<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css"> @import url(./css/Welcome.css);</style>
<title>Welcome</title>
</head>

<body>


<div class="jumbotron card card-image" style="background-image: url(./pic/audi.jpg);">
  <div class="text-white text-center py-5 px-4">
    <div>
      <h2><i><b>Welcome</b></i></h2>
 <div><a href="/green/Admin.html">Admin</a></div>
<hr>
<br>

	<form action="/green/users/UserLogIn">
	
		<div>
		
			<label for="mail">Email:</label><input type="text" id="mail"
				name="mail">
				
			<br>
			<br>	
				
			<label for="password">Password:</label><input type="text" id="password"
				name="password">
			
			<br>
			<br>
			
			<div><a href="/green/NuovoUtente.html ">New User</a></div>
		</div>
		<div>
			<button type="submit">Login</button>
		</div>
	</form>
  </div>
</div>
</div>

</body>
</html>