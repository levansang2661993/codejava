<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/register.css" />
<script type="text/javascript" src="jquery-1.2.6.min.js">
	$(document)
			.ready(
					function() {
						$(".name")
								.change(
										function() {
											var name = $(this).val();
											if (name.length >= 3) {
												$(".status")
														.html(
																"<font color=gray> Checking availability...</font>");
												$
														.ajax({
															type : "post",
															url : "Register",
															data : "name="
																	+ name,
															success : function(
																	msg) {
																$(".status")
																		.ajaxComplete(
																				function(
																						event,
																						request,
																						settings) {
																					$(
																							".status")
																							.html(
																									msg);
																				});
															}
														});
											} else {
												$(".status")
														.html(
																"<font color=red>User name should be <b>3</b> character long.</font>");
											}
										});
					});
</script>
</head>
<body>
	<%
		String err_email = "";
		if (request.getAttribute("err_email") != null) {
			err_email = (String) request.getAttribute("err_emai");
		}

		String err_password = "";
		if (request.getAttribute("err_password") != null) {
			err_password = (String) request.getAttribute("err_password");
		}

		String re_err_password = "";
		if (request.getAttribute("re_err_passwpord") != null) {
			re_err_password = (String) request
					.getAttribute("re_err_password");
		}

		String err_country = "";
		if (request.getAttribute("err_country") != null) {
			err_country = (String) request.getAttribute("err_country");
		}

		String err_age = "";
		if (request.getAttribute("err_age") != null) {
			err_age = (String) request.getAttribute("err_age");
		}
	%>
	<form action="Register" method="post">
		<h3>Create an account</h3>
		<p>
			Email address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="text" id="email" name="email" />*<font color="red"><%=err_email%></font>
		</p>
		<p>
			Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="password" id="password" name="password" />*<font
				color="red"><%=err_password%></font>
		</p>
		<p>
			Confirm password:&nbsp;<input type="password" id="re_password "
				name="re_password" />*<font color="red"><%=re_err_password%></font>
		</p>
		<p>
			Full
			name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="text" class="name" name="name" /><span class="status"></span>*<font
				color="red"></font>
		</p>
		<p>
			Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<textarea rows="5" cols="30" name="address"></textarea>
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
			</select>*<font color="red"><%=err_country%></font>
		</p>
		<p>
			Phone
			No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="text" id="phone" name="phone">
		</p>
		<p>
			Sex:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="radio" checked="checked" id="male" name="sex">Male
			<input type="radio" id="female" name="sex">Female
		</p>
		<p>
			Age:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<select name="age" id="age">
				<option selected="selected">- Select age</option>
				<option value="6">< 6</option>
				<option value="18">6 - 18</option>
				<option value="22">18 - 22</option>
				<option value="30">23 - 30</option>
				<option>30 - 40</option>
				<option>> 40</option>
			</select>*<font color="red"><%=err_age%></font>
		</p>

		<p>
			<input type="submit" value="Register" id="register"> <input
				type="reset" value="clear" id="clear">
		</p>
	</form>
</body>
</html>