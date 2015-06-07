<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/addpremise.css" />
 <script src="${pageContext.request.contextPath}/js/tabcontent.js" type="text/javascript"></script>
 
	<%-- <div id="menu"><jsp:include page="header.jsp"></jsp:include></div> --%>
	<div class="addcontent">
		<div>
			<h1>Premise Details</h1>
		</div>
		<div class="distance"><div class="button"><a href="addPremise.jsp" class="myButton">Save</a>
		<a href="premise.jsp" class="myButton">Back</a></div></div>
		<div class="main">
			<ul class="tabs" data-persist="true">
				<li><a href="#view1">Detail 1</a></li>
				<li><a href="#view2">Detail 2</a></li>
				<li><a href="#view3">Detail 3</a></li>
				<li><a href="#view4" id="view41" style="display: none">Detail 4</a></li>
				<li><a href="#view5">Minor Work</a></li>
				<li><a href="#view6">Service</a></li>
				
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
				<div id="view4" style="display: none">
					<jsp:include page="detail_4.jsp"></jsp:include>
				</div>	
				<div id="view5">
					<jsp:include page="minorWork.jsp"></jsp:include>
				</div>	
				<%-- <div id="view6">
					<jsp:include page="service.jsp"></jsp:include>
				</div> --%>
			</div>
		</div>
	</div>
