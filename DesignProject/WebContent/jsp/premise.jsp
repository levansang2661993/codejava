<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/premise.css" />
</head>
<body>
	<div id="menu"><jsp:include page="header.jsp"></jsp:include></div>
	<div class="maincontent">
		<div id="title">
			<h1>Premise List</h1>
		</div>
		<div class="listpremise">
			<div class="find">
				<div id="search">
					<a href="#">ALL</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">0-9</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">A B C D E</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">F G H I J</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">K L M N</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">O P Q S</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">S T U V</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">W X Y Z</a>
				</div>
				<div id="creatprimise">
					<a href="addPremise.jsp" id="create">Create</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="checkbox" value="">Include In-active
				</div>
			</div>
			<br />
			<div class="content">
				<table cellspacing='0'>
					<!-- Table Header -->
					<thead>
						<tr>
							<th align="left"><b>Location Name</b></th>
							<th align="left"><b>Address Line 1</b></th>
							<th align="left"><b>Postcode</b></th>
							<th align="left"><b>Is Active?</b></th>
						</tr>
					</thead>
					<!-- Table Header -->

					<!-- Table Body -->
					<tbody>

						<tr>
							<td>Yes</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>
						<!-- Table Row -->

						<tr class="even">
							<td>Yes</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>
						<!-- Darker Table Row -->

						<tr>
							<td>No</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>

						<tr class="even">
							<td>No</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>

						<tr>
							<td>Yes</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>

						<tr class="even">
							<td>yes</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>

						<tr>
							<td>No</td>
							<td>Create pretty table design</td>
							<td>100%</td>
							<td>Yes</td>
						</tr>
					</tbody>
					<!-- Table Body -->

				</table>
			</div>
			<br /> <br />
		</div>
	</div>
</body>
</html>