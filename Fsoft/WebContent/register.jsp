<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/register.css" />
</head>
<body>
	<h3>Create an account</h3>
	<p>
		Email address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
			type="text" id="email" />*
	</p>
	<p>
		Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="password" id="password" />*
	</p>
	<p>
		Confirm password:&nbsp;<input type="password" id="repassword" />*
	</p>
	<p>
		Full
		name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="name" />*
	</p>
	<p>
		Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<textarea rows="5" cols="30"></textarea>
	</p>
	<p>
		Country:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select name="country" id="country">
			<option selected="selected">- Select country</option>
			<option>Vietname</option>
			<option>United States</option>
			<option>United Kingdom</option>
			<option>Australia</option>
			<option>Singapore</option>
		</select>*
	</p>
	<p>
		Phone
		No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
			type="text" id="phone" name="phone">
	</p>
	<p>
		Sex:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" checked="checked" id="male">Male <input
			type="radio" id="female">Female
	</p>
	<p>
		Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select name="age" id="age">
			<option selected="selected">- Select age</option>
			<option>< 6</option>
			<option>6 - 18</option>
			<option>18 - 22</option>
			<option>23 - 30</option>
			<option>30 - 40</option>
			<option>> 40</option>
		</select>*
	</p>
	<p>
		<input type="submit" value="Register" id="register"> <input type="reset"
			value="clear" id ="clear">
	</p>
</body>
</html>