<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="${pageContext.request.contextPath}/js/jquery-1.6.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery-ui-1.8.15.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/opentime.css"/>
<title>Location Open Days</title>
</head>
<body>
	<div class="maincontent">
		<div><h1>Location Open Days</h1></div>
		<div class="content">
				<table cellspacing='0'>
					<!-- Table Header -->
					<thead>
						<tr>
							<th align="left"><b></b></th>
							<th align="left"><b>Weekend Day</b></th>
							<th align="left"><b>Start Time</b></th>
							<th align="left"><b>End Time</b></th>
						</tr>
					</thead>
					<!-- Table Body -->
					<tbody>

						<tr>
							<td><input type="checkbox" name="monday"/></td>
							<td>Monday</td>
							<td><input type="text" name="startmonday"></td>
							<td><input type="text" name="endmonday"/></td>
						</tr>
						<!-- Table Row -->

						<tr>
							<td><input type="checkbox" name="tuesday"/></td>
							<td>Tuesday</td>
							<td><input type="text" name="starttuesday"></td>
							<td><input type="text" name="endtuesday"/></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="wednesday"/></td>
							<td>Webnesday</td>
							<td><input type="text" name="startwednesday"></td>
							<td><input type="text" name="endwednesday"/></td>
						</tr>

						<tr>
							<td><input type="checkbox" name="thursday"/></td>
							<td>Thursday</td>
							<td><input type="text" name="startthursday"></td>
							<td><input type="text" name="endthursday"/></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="friday"/></td>
							<td>Friday</td>
							<td><input type="text" name="startfriday"></td>
							<td><input type="text" name="endfriday"/></td>
						</tr>

						<tr>
							<td><input type="checkbox" name="saturday"/></td>
							<td>Saturday</td>
							<td><input type="text" name="startsaturday"></td>
							<td><input type="text" name="endsaturday"/></td>
						</tr>

						<tr>
							<td><input type="checkbox" name="sunday"/></td>
							<td>SunDay</td>
							<td><input type="text" name="startsunday"></td>
							<td><input type="text" name="endsunday"/></td>
						</tr>
					</tbody>
					<!-- Table Body -->
				</table>
				<div><h2 align="center"><a href="${pageContext.request.contextPath}/jsp/detail_1.jsp" class="myBack">Back</a></h2></div>
		</div>
	</div>
</body>
</html>