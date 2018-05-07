<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
  	<a class="navbar-brand"  href="#">TECSUP</a>
	</nav>
	
	<div class="container">
    <div class="row justify-content-md-center">
	<div class="col-sm-6 col-md-6 col-md-offset-6" >
	<div class="account-wall" align="center">
	
	<h1 class="text-center login-title">Inicio de Sesión</h1>
	<img alt="img1" style="width:150px;height:120px;" src="data:image/png;base64,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">
	
	<form:form class="form-signin" id="loginForm" modelAttribute="login" action="loginProcess"
		method="post">
		<table>
			<tr>
				<!-- <td><form:label path="username">Usuario: </form:label></td>  -->
				<td><form:input class="form-control" placeholder="Usuario" path="username" name="username" 
						id="username" /></td>
			</tr>
			<tr>
				<!-- <td><form:label path="password">Contraseña:</form:label></td> -->
				<td><form:password class="form-control" placeholder="********" path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				
				<td align="left"><form:button class="btn btn-lg btn-primary btn-block" id="login" name="login">Iniciar Sesión</form:button></td>
			</tr>
			<tr></tr>
			<tr>		
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
	
	</div>
	</div>
	</div>
	</div>
	
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
	
	

</body>
</html>