<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Detail 1</title>
<!-- <link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jqueryCalendar.css" />	
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-1.6.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery-ui-1.8.15.custom.min.js"></script>

<%-- <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/detail_1.css" /> --%>
<%-- <script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/premise.js"></script> --%>
<script type="text/javascript">
	function activeTab4() {
		var s = document.getElementById("checktype");
		var t = document.getElementById("view4");

		var t1 = document.getElementById("view41");
		if (s.value = 'on') {
			t.style.display = "inline";
			t1.style.display = "inline";
		} else {
			document.getElementById("view4").display = "none";
		}
	}
</script>

<script>
	function popopentime(url, w, h) {
		var left = (screen.width / 2) - (w / 2);
		var top = (screen.height / 2) - (h / 2);
		newwindow = window
				.open(
						url,
						'name',
						'toolbar=no, location=no, directories=no, status=no, menubar = no, scrollbars=no, resizable=no, width='
								+ w
								+ ',height='
								+ h
								+ ',top='
								+ top
								+ ',left='
								+ left);
		if (window.focus) {
			newwindow.focus()
		}
		return false;
	}
</script>
<script type="text/javascript">
	jQuery.noConflict();
</script>
<script type="text/javascript">
	function uncheck() {
		$(':checkbox:checked').prop('checked',false);
	}
	jQuery(function() {
		jQuery("#datepicker").datepicker();
	});
</script>
</head>
<body onload="uncheck()">
	<div class="content">
		<form class="form">
			<table class="tablescrol">
				<tr>
					<td><label>Location Name <span class="mandatory">*</span></label></td>
					<td><input type="text" name="locationame" class="input" /></td>
					<td><label>Primary Location</label></td>
					<td><input type="checkbox" name="primarylocation"
						checked="checked" style="margin-left: 70px;" /></td>
				</tr>

				<tr>
					<td><label>Know As</label></td>
					<td><input type="text" name="knowas" class="input" /></td>
					<td><label>Location Managed</label></td>
					<td><input type="checkbox" name="locationmanged"
						checked="checked" style="margin-left: 70px;" /></td>
				</tr>
				<tr>
					<td><label>Location Organisation</label></td>
					<td><input type="text" name="locationoragnisation"
						class="input" style="width: 170px;" /> <a href="#">Lookup</a></td>
					<td><label>ST Network Connectivity</label></td>
					<td><input type="checkbox" name="network" checked="checked"
						style="margin-left: 70px;" /></td>
				</tr>
				<tr>
					<td><label>Location Status <span class="mandatory">*</span></label></td>
					<td><select class="input" name="locationstatus">
							<option></option>
					</select></td>
					<td><label>Location Type <span class="mandatory">*</span></label></td>
					<td><div class="containertype" style="margin-left: 70px;">
							<input type="checkbox" class="checktype" id="checktype"
								onclick="activeTab4();" /> Enterprise <br /> <input
								type="checkbox" class="checktype" id="checktype"
								onclick="activeTab4();" /> Support Center<br /> <input
								type="checkbox" class="checktype" id="checktype"
								onclick="activeTab4();" /> Project <br /> <input
								type="checkbox" class="checktype" id="checktype"
								onclick="activeTab4();" />Add<br />
						</div></td>
				</tr>

				<tr>
					<td><label>Location Status Date</label></td>
					<td><div>
							<input type="text" name="statusdate" id="datepicker"
								class="input" placeholder="dd/MM/yyyy" />
						</div></td>
					<td><label>Location Description</label></td>
					<td><input type="text" name="locationdescription"
						class="input" style="height: 50px !important;" /></td>
				</tr>
				<tr>
					<td><label>Address Line 1</label></td>
					<td><input type="text" name="line1" class="input" /></td>
					<td><label>Phone Number<span class="mandatory">*</span></label></td>
					<td><input type="text" name="phonenumber" class="input" /></td>
				</tr>

				<tr>
					<td><label>Address Line 2</label></td>
					<td><input type="text" name="line2" class="input" /></td>
					<td><label>General Fax Number</label></td>
					<td><input type="text" name="faxnumber" class="input" /></td>
				</tr>
				<tr>
					<td><label>Address Line 3</label></td>
					<td><input type="text" name="line3" class="input" /></td>
					<td><label>Minicomm Number</label></td>
					<td><input type="text" name="minicomnumber" class="input" /></td>
				</tr>
				<tr>
					<td><label>Postcode</label></td>
					<td><input type="text" name="postcode" class="input"
						style="width: 170px;" /> <a href="#">Lookup</a></td>
					<td><label>Is New Shop?</label></td>
					<td><input type="checkbox" name="newshop" checked="checked"
						style="margin-left: 70px;" /></td>
				</tr>

				<tr>
					<td><label>City/Town</label></td>
					<td><input type="text" name="city" class="input" /></td>
					<td><label>Shop Flag Date</label></td>
					<td><div>
							<input type="text" name="flagdate" id="dateflag" class="input"
								placeholder="dd/MM/yyyy" />
						</div></td>
				</tr>
				<tr>
					<td><label>Country</label></td>
					<td><input type="text" name="country" class="input" /></td>
					<td><label>Nation/Country</label></td>
					<td><select class="input" name="nationcountry">
							<option></option>
					</select></td>
				</tr>

				<tr>
					<td><a
						href="${pageContext.request.contextPath}/jsp/opentime.jsp"
						style="color: blue;"
						onclick="return popopentime('opentime.jsp', 650, 600)">Location
							Opending Times</a></td>
					<td></td>
					<td><label>Specialist Shop</label></td>
					<td><input type="checkbox" name="speciallist"
						checked="checked" style="margin-left: 70px;" /></td>
				</tr>
			</table>

		</form>
	</div>
</body>
</html>