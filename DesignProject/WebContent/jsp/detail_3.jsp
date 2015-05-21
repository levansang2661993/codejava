<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail_3.css" />
</head>
<body>
	<div class="content">
		<form class="form">
			<table class="tablescrol">
				<tr>
					<td><label>Outreach Location</label></td>
					<td><div class="outreach" style="margin-left: 70px;">
							<input type="checkbox" /> <br /> <input
								type="checkbox" /> <br /><br/>
						</div></td>
					<td><label>Local Hotels</label></td>
					<td><div class="containjcp" style="margin-left: 70px;">
							<input type="checkbox" /><br /> <input type="checkbox" /><br />
						</div></td>
				</tr>
				<tr>
					<td><label>Travel Details</label></td>
					<td><input type="text" class="input" name="traveldetail" ></td>
					<td><label>Visitor Parking Onsite</label></td>
					<td><input type="checkbox" name="catering" checked="checked"
						style="margin-left: 70px;" /></td>

				</tr>
				<tr>
					<td><label>Travel Nearest - Bus</label></td>
					<td><input type="text" class="input" name="travelbus"></td>
					<td><label>Visitor Parking Space</label></td>
					<td><input type="text" class="input" name="travelbus" value="0"></td>
				</tr>
				<tr>
					<td>
						<label>Travel Nearest - Rail</label><br/><br/>
						<label>Travel Nearest - Airport</label>
					</td>
					<td >
						<input type="text" class="input" name="travelrail"><br/><br/>
						<input type="text" class="input" name="travelairport">
					</td>
					<td><label>Visitor Parking Alternative</label></td>
					<td><textarea rows="5" cols="30" style="margin-left: 70px;"
							name="visitorparking"></textarea></td>
				</tr>

				<tr>
					<td><label>Host Visits</label></td>
					<td><input type="checkbox" name="hostvisit"
						style="margin-left: 70px;"></td>
					<td><label>Hosting Contact</label></td>
					<td><input type="text" name="hostingcontact" class="input"
						style="width: 170px;"><a href="#">Lookup</a></td>
				</tr>


			</table>
		</form>
	</div>
</body>
</html>