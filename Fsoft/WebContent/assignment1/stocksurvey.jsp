<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type = "text/css" href="${pageContext.request.contextPath}/css/assignment1.css">
</head>
<body>
	<h2>Sample Stock Survery</h2>
	<p><b>Describe your investment experience</b></p>
	<p>
		<input type="radio" name="begin" value="begin" />beginner <input
			type="radio" name="interme" value="interme" checked />intermediate <input
			type="radio" name="expert" value="expert" />expert
	</p>
	<p><b>Types of Investments you make</b></p>
	<p>
		<input type="checkbox" name="individual" value="individual" checked />Individual
		<input type="checkbox" name="option" value="option" />Options <input
			type="checkbox" name="mutual" value="mutual" checked />Mutual Funds
	</p>
	<p>
		<b>How do you buy your stocks?</b> <select name="stock">
			<option selected="selected">1)On-Line</option>
			<option>2)Touch Tone Trading</option>
			<option>3)Broker Assisted</option>
			<option>4)Other</option>
		</select>
	</p>
	<p>
		<b>Any Investment Adive for others?</b>
		<textarea rows="5" cols="25"></textarea>
	</p>
	<p>
		<input type="submit" value="Submit" /> <input type="reset"
			value="Reset" />
	</p>
</body>
</html>