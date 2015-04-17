<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type = "text/css" href="css/register.css">
</head>
<body>
	<h1>Register Form</h1>
	<div class = "form">
		<div id = "email">* Email:&nbsp; <input type = "text"></div>
		</br>
		<div id = "pass">* Password:&nbsp; <input type = "password"></div>
		</br>
		<div id = "fname">* First name:&nbsp; <input type = "text"></div>
		</br>
		<div id = "lname">* Last name:&nbsp; <input type = "text"></div>
		</br>
		<div id = "industry">Industry:&nbsp;
			<select>
				<option>[Select Industry]</option>
				<option>Computer Software</option>
				<option>Consulting</option>
				<option>Distribution</option>
				<option>Education</option>
				<option>Financial Services</option>
				<option>Other...</option>
			</select>
		</div>
		</br>
		<div id = "job">Job title:&nbsp; <input type = "text"></div>
		</br>
		<div id = "company">Company:&nbsp; <input type = "text"></div>
		</br>
		<div id = "city">City:&nbsp;
			<select>
				<option>[Select City]</option>
				<option>Ha noi</option>
				<option>Hue</option>
				<option>Da nang</option>
				<option>Ho chi minh</option>
			</select>
		</div>
		</br>
		<div id = "telephone">Telephone:&nbsp; <input type = "text"></div>
		</br>
		<div id = "favour">Favorites:&nbsp;
			<input type = "checkbox">Music
			<input type = "checkbox">Sport
			<input type = "checkbox">Travel
			<input type = "checkbox">Education
		</div>
		</br>	
		<div id = "platform">Select your desired platform:&nbsp;
			<div><input type = "radio">C++</div>
			<div><input type = "radio">Java</div>
			<div></div><input type = "radio">Both</div>
		</div>
		</br>
		<div id = "sub"><input type = "submit" value= "Submit"></div>
	</div>
</body>
</html>