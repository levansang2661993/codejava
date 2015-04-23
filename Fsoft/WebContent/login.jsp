<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css" />
</head>
<body>
	<%
		String email = "";
		if (request.getAttribute("email") != null) {
			email = (String) request.getAttribute("email");
		}
		String email_err = "";
		if (request.getAttribute("email_err") != null) {
			email_err = (String) request.getAttribute("email_err");
		}
		String password_err = "";
		if (request.getAttribute("password_err") != null) {
			password_err = (String) request.getAttribute("password_err");
		}
	%>
	<form action="Login" method="post">
		<h2>Welcome to Hanoi - Aptech Education Center</h2>
		<br />
		<p>Please login the system</p>
		<br />
		<p>
			Email: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
				name="email" id="email" value="" placeholder="Email"><font
				color="red"><%=email_err%></font>
		</p>
		<br />
		<p>
			Password: &nbsp;&nbsp;<input type="password" name="password"
				id="passsword" placeholder="password"><font color="red"><%=password_err %></font>
		</p>
		<p>
			<input type="submit" value="Login" id="login" />
		</p>
		<p>
			Not registered?&nbsp;&nbsp;Click <a href="register.jsp"
				id="reg">here</a>
		</p>
	</form>
</body>
</html>