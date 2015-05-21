<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail_4" />
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</head>
<body>
	<div class="content">
		<form class="form">
			<table class="tablescrol">
				<tr>
					<td><label>Room Only Rate</label></td>
					<td><input type="text" name="roomrate" class="input" /></td>
					<td><label>Negotiated Room Only</label></td>
					<td><input type="text" name="negotiaroom"
						class="input" /></td>
				</tr>

				<tr>
					<td><label>B&B Rate</label></td>
					<td><input type="text" name="bbrate" class="input" /></td>
					<td><label>B&B Negotiated Rate</label></td>
					<td><input type="text" name="bbnegotiated"
						class="input" /></td>
				</tr>
				<tr>
					<td><label>DBB Rate</label></td>
					<td><input type="text" name="dbbrate" class="input" /></td>
					<td><label>DBB Negotiated Rate</label></td>
					<td><input type="text" name="dbbnegotiated"
						class="input" /></td>
				</tr>
				<tr>
					<td><label>DD Rate</label></td>
					<td><input type="text" name="ddrate" class="input" /></td>
					<td><label>DD Negotiated Rate</label></td>
					<td><input type="text" name="ddnegotiated"
						class="input" /></td>
				</tr>

				<tr>
					<td><label>24hr Rate</label></td>
					<td><input type="text" name="24hrrate" class="input" /></td>
					<td><label>24hr Negotiated Rate</label></td>
					<td><input type="text" name="24hrnegotiated"
						class="input" /></td>
				</tr>
				
				<tr>
					<td><label>Tea and Coffee</label></td>
					<td><input type="text" name="teacoffee" class="input" /></td>
					<td><label>Last Negotiated Rate</label></td>
					<td><div><input type="text" name="lastnegotiated" id="lastnegotiated"
						class="input" placeholder="dd/MM/yyyy" /></div></td>
				</tr>

				<tr>
					<td><label>Lunch</label></td>
					<td><input type="checkbox" name="lunch" style="margin-left: 70px;" /></td>
					<td><label>Re-negotiate On</label></td>
					<td><div><input type="text" name="lastnegotiated" id="renegotiated"
						class="input" placeholder="dd/MM/yyyy" /></div></td>
				</tr>
				<tr>
					<td><label>No of Meeting Rooms</label></td>
					<td><input type="text" name="noofmeeting" class="input" /></td>
					<td><label>Preferred Status</label></td>
					<td><select class="input">
						<option></option>
					</select> </td>
				</tr>
				<tr>
					<td>
						<label>Meeting Room Rate Per Day</label><br/><br/>
						<label>Codings</label>
					</td>
					<td>
						<input type="text" name="meetingroom" class="input"/><br/><br/>
						<select class="input">
							<option></option>
						</select>
					</td>
					<td><label>Comments</label></td>
					<td><textarea rows="5" cols="30" name="comments" style="margin-left: 70px;"></textarea></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>