<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">


<style>

.form-signin
{
    max-width: 330px;
    padding: 15px;
    margin: 0 auto;
}
.form-signin .form-signin-heading, .form-signin
{
    margin-bottom: 10px;
}

.form-signin .form-control
{
    position: relative;
    font-size: 16px;
    height: auto;
    padding: 10px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
.form-signin .form-control:focus
{
    z-index: 2;
}
.form-signin input[type="text"]
{
    margin-bottom: -1px;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}
.form-signin input[type="password"]
{
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
}
.account-wall
{
    margin-top: 20px;
    padding: 40px 0px 20px 0px;
    background-color: #f7f7f7;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}
.login-title
{
    color: #555;
    font-size: 18px;
    font-weight: 400;
    display: block;
}

</style>

</head>
<body>
	
	<nav class="navbar navbar-dark bg-primary">
  	<a class="navbar-brand" href="#">TECSUP</a>
	</nav>
	
	<div class="container">
    <div class="row justify-content-md-center">
	<div class="col-sm-6 col-md-6 col-md-offset-6" >
	<div class="account-wall" align="center">
	<h1 class="text-center login-title">Registrarse</h1>
	
		<form:form class="form-signin" id="regForm" modelAttribute="user" action="registerProcess"
			method="post">
	
			<table align="center">
				<tr>
					<td><form:label path="username">Usuario</form:label></td>
					<td><form:input class="form-control" path="username" name="username" id="username" required="required"/></td>
				</tr>
				<tr>
					<td><form:label path="password">Contraseña</form:label></td>
					<td><form:password class="form-control" path="password" name="password"
							id="password" required="required"/></td>
				</tr>
				<tr>
					<td><form:label path="firstname">Nombre</form:label></td>
					<td><form:input class="form-control" path="firstname" name="firstname"
							id="firstname" /></td>
				</tr>
				<tr>
					<td><form:label path="lastname">Apellido</form:label></td>
					<td><form:input class="form-control" path="lastname" name="lastname" id="lastname" /></td>
				</tr>
				<tr>
					<td><form:label path="email">Email</form:label></td>
					<td><form:input class="form-control" path="email" name="email" id="email" /></td>
				</tr>
				<tr>
					<td><form:label path="address">Dirección</form:label></td>
					<td><form:input class="form-control" path="address" name="address" id="address" /></td>
				</tr>
				<tr>
					<td><form:label path="phone">Telefono</form:label></td>
					<td><form:input class="form-control" path="phone" name="phone" id="phone" /></td>
				</tr>
	
				<tr>
					<td></td>
					<td><form:button class="btn btn-lg btn-primary btn-block" id="register" name="register">Registrarse</form:button></td>
				</tr>
				<tr></tr>
				<tr>
					<td></td>
					<td><a href="home.jsp">Home</a></td>
				</tr>
			</table>
		</form:form>
	</div>
	</div>
	</div>
	</div>	
	

</body>
</html>