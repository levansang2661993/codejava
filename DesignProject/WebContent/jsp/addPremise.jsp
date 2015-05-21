<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addpremise.css" />
 <script src="${pageContext.request.contextPath}/js/tabcontent.js" type="text/javascript"></script>
</head>
<body>
	<div id="menu"><jsp:include page="header.jsp"></jsp:include></div>

	<div class="addcontent">
		<div>
			<h1>Premise Details</h1>
		</div>
		<div class="distance"><div class="button"><a href="addPremise.jsp" class="myButton">Save</a>
		<a href="addPremise.jsp" class="myButton">Back</a></div></div>
		<div class="main">
			<ul class="tabs" data-persist="true">
				<li><a href="#view1">Detail 1</a></li>
				<li><a href="#view2">Detail 2</a></li>
				<li><a href="#view3">Detail 3</a></li>
				<li><a href="#view4">Detail 4</a></li>
				
			</ul>
			<div class="tabcontents">
				<div id="view1">
					<jsp:include page="detail_1.jsp"></jsp:include>
				</div>
				<div id="view2">
					<jsp:include page="detail_2.jsp"></jsp:include>
				</div>
				<div id="view3">
					<jsp:include page="detail_3.jsp"></jsp:include>
				</div>			
				<div id="view4">
					<jsp:include page="detail_4.jsp"></jsp:include>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>