<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail_2.css" />
</head>
<body>
	<div class="content">
		<form class="form">
			<table class="tablescrol">
				<tr>
					<td><label>Accreditations</label></td>
					<td><div class="containertype" style="margin-left: 70px;">
							<input type="checkbox" /> Two Ticks <br /> <input
								type="checkbox" /> Investors In People<br /> <input
								type="checkbox" /> ISO 9001 <br /> <input type="checkbox" />
							ISO 14001<br /> <input type="checkbox" /> ISO 27001<br />
						</div></td>
					<td><label>JCP Officers</label></td>
					<td><div class="containjcp" style="margin-left: 70px;">
							<input type="checkbox" /><br /> <input type="checkbox" /><br />
						</div></td>
				</tr>
				<tr>
					<td><label>Media Contact</label></td>
					<td><input type="checkbox" checked="checked"
						name="mediacontact" style="margin-left: 70px;" /></td>
					<td><label>Catering Facilities</label></td>
					<td><input type="checkbox" name="catering" checked="checked"
						style="margin-left: 70px;" /></td>

				</tr>
				<tr>
					<td><label>Local Demographic Issues</label></td>
					<td><div class="localdemo" style="margin-left: 70px;">
							<input type="checkbox">High Un-employment<br /> <input
								type="checkbox">Rural<br />
						</div></td>
					<td><label>Catering Type</label><br />
					<br /> <label>IS/Network</label><br />
					<br /> <label>Client IT Facilities</label></td>
					<td><select class="input" name="cateringtype">
							<option></option>
					</select><br />
					<br /> <select class="input" name="network">
							<option></option>
					</select><br />
					<br /> <input type="checkbox" name="clientid"
						style="margin-left: 70;"></td>
				</tr>
				<tr>
					<td><label>Local Demographic Notes</label></td>
					<td><textarea rows="5" cols="30" style="margin-left: 70px;"
							name="localnote"></textarea></td>
					<td><label>Client IT Facilities Details</label></td>
					<td><textarea rows="5" cols="30" style="margin-left: 70px;"
							name="clientdetails"></textarea></td>
				</tr>

				<tr>
					<td><label>Room Availability</label></td>
					<td><input type="checkbox" name="roomvailable"
						style="margin-left: 70px;"></td>
					<td><label>Volunteering Opportunities</label></td>
					<td><input type="checkbox" name="volunteer"
						style="margin-left: 70px;"></td>

				</tr>


			</table>
		</form>
	</div>
</body>
</html>