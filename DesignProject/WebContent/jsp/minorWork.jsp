<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/minorwork.css" />
</head>
<body>
	<div class="content">
		<form class="form">
			<table class="tablescrol">
				<tr>
					<td><label>P/MW Description<span class="mandatory">*</span></label></td>
					<td><textarea rows="5" cols="30" style="margin-left: 70px;"></textarea></td>
					<td><label>Contact</label><br />
					<br /> <label>Authorised by Name</label></td>
					<td><input type="text" class="input" name="contact"
						style="width: 170px;"> <a href="#">Lookup</a> <br />
					<br /> <input type="text" class="input" name="authorised"
						style="width: 170px;"> <a href="#">Lookup</a></td>
				<tr>
				<tr>
					<td><input type="radio" checked="checked" /> <label>Project</label>
					</td>
					<td><input type="radio" name="project"
						style="margin-left: 70px;" />Minor Works</td>
					<td><label>Status</label></td>
					<td><input type="text" class="input" name="status"></td>
				</tr>
				<tr>
					<td><label>Is TBA?</label></td>
					<td><input type="checkbox" style="margin-left: 70px;"
						name="tba" /></td>
					<td><label>P/MW Enquiry Received Date<span
							class="mandatory">*</span></label></td>
					<td>
						<div>
							<input type="text" id="enquirydate" class="input"
								name="enquirydate" placeholder="dd/MM/yyyy" />
						</div>
					</td>
				</tr>
				<tr>
					<td><label>Notes Action</label></td>
					<td><textarea rows="5" cols="30" style="margin-left: 70px;"></textarea></td>
					<td><label>Authorised Date</label><br />
					<br /> <label>Actual Start Date</label></td>
					<td>
						<div>
							<input type="text" id="authoriseddate" class="input"
								name="authoriseddate" placeholder="dd/MM/yyyy" /><br />
							<br /> <input type="text" id="actualdate" class="input"
								name="actualdate" placeholder="dd/MM/yyyy" />
						</div>
					</td>
				</tr>
				<tr>
					<td><label>Estimate Cost</label></td>
					<td><input type="text" class="input" name="estimatecost" /></td>
					<td><label>Anticipated Completion</label></td>
					<td>
						<div>
							<input type="text" id="anticipateddate" class="input"
								name="anticipateddate" placeholder="dd/MM/yyyy" />
						</div>
					</td>
				</tr>

				<tr>
					<td><label>Actual Cost</label></td>
					<td><input type="text" class="input" name="actualcost" /></td>
					<td><label>Actual Completion Date</label></td>
					<td>
						<div>
							<input type="text" id="actualdate" class="input"
								name="actualdate" placeholder="dd/MM/yyyy" />
						</div>
					</td>
				</tr>
				<tr>
					<td><label>Directorate</label></td>
					<td><select class="input">
						<option></option>
					</select> </td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>