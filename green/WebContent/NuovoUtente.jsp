<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css"> @import url(/css/NuovoUtente.css);</style>
<title>Insert title here</title>
</head>
<body>

<h2><i><b>Registration</b></i></h2>
<hr>
<br>
	<form action="/green/users/NewUser">
	
		<div>
		
			<label for="firstname">First Name:</label> <input type="text" id="firstname"
				name="firstName" required>
				<br/>
				<br/>
			
			<label for="lastname">Last Name:</label> <input type="text" id="lastname"
				name="LastName" required>	
			<br/>
			<br/>
		
		    <label for="phone">Phone Number:</label> <input type="text" id="phone"
				name="phone" required>
			<br/>
			<br/>
				
			<label for="email">Email:</label> <input type="text" id="email"
				name="email" required>
			<br/>
			<br/>
			
			<label for="birthdate"> Date of birth:</label> <input type="text" id="birthdate"
				name="birthdate" required>
			<br/>
			<br/>
			
			<label for="password"> Password:</label> <input type="password" id="password"
				name="password" required>
			<br/>
			<br/>
				
			<label for="birthplace"> Birth place:</label> <input type="text" id="birthplace"
				name="birthplace" required>
			<br/>
			<br/>
              
             <label for="license"> Driving license:</label> <input type="text" id="license"
				name="license" required>
			<br/>
			<br/>
			
			<label for="expiration">Expiry of the driving licence:</label> <input type="date" id="expiration"
				name="expirationLicense" required>
			<br/>
			<br/>
				
			<label for="card"> Credit card:</label> <input type="text" id="card"
				name="creditCard" required>
			<br/>
			<br/>
			
			<label for="cvv"> Cvv:</label> <input type="text" id="cvv"
				name="cvv" required>
			<br/>
			<br/>
			
			<label for="expiration_c"> Credit card expiration:</label> <input type="date" id="expiration_c"
				name="expirationCard" required>
			<br/>
			<br/>
				
			
		</div>
		<div id='errorreg'>
					<c:if test="${(resultRegistration == false)}">
						<p>Your email address has already been added to our system</p>
					</c:if>
				</div>
		<div>
			<button type="submit">Register</button>
		</div>
		
		<br/>
		
	</form>
<div><a href="/green/index.html"><i>Home Page</i></a></div>

</body>
</html>