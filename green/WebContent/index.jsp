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
@import url(/green/css/Welcome.css);
</style>
<title>Welcome</title>
</head>

<body>
<nav class="navbar navbar-expand-lg  ">

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor03" aria-controls="navbarColor03"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor03">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only"></span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="/green/NuovoUtente.jsp ">Sign up</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Price
						list</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About us</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/green/Admin.html">Administrators</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0"
				action="/green/users/UserLogIn">


				<div>
					<input type="text" id="mail" name="mail" placeholder="Email">
					<input type="text" id="password" name="Password"
						placeholder="Password">
					<button type="submit">Login</button>


				</div>
				<div></div>

			</form>
		</div>
	</nav>

	
		<div class="text-white text-center"   >
			<div>
				<h1>
					<i><b>Welcome</b></i>
				</h1>
				<!-- <div>
					<a href="/green/Admin.html">Admin</a>
				</div> -->

				<br>

				<div id='errorlogin'>
					<c:if test="${(resultLogIN == false)}">
						<p>email address and password not found</p>
					</c:if>
				</div>
				
				

				<!-- <form action="/green/users/UserLogIn">
					<div>
						<label for="mail">Email:</label><input type="text" id="mail"
							name="mail"> <br> <br> <label for="password">Password:</label><input
							type="text" id="password" name="password"> <br> <br>
						<div>
							<a href="/green/NuovoUtente.html ">New User</a>
						</div>
					</div>
					<div>
						<button type="submit">Login</button>
					</div>
				</form> -->
			</div>
			</div>
		</div>



	



</body>
</html>