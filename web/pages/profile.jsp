<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Kalam|Palanquin|Yatra+One" rel="stylesheet">	<title>साहित्यकार</title>
<!-- 	META TAG -->
		<meta charset="UTF-8">
		<meta name="literature" content="ST.XAVIER'S LITERARY CLUB">
		<meta name="keywords" content="ST.XAVIER'S LITERARY CLUB,st.xavier's literature,sahitya puraskar">
		<meta name="author" content="Pratik Gautam,Yub Raj Basnet">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 		CSS FOR THE PAGE -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/profile.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">

<!-- 		SOME IMPORTANT CSS AND JAVASCRIPT -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome/css/font-awesome.css">

<!-- 			PAGE JAVASCRIPT -->

    	<script src="../javascript/index.js" type="text/javascript"></script>


<!--     	FOR SCROLL -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/scroll/crawler.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/index.js"></script>

<!-- 		HEADER ICON -->
		<link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">
</head>
<body>

 <jsp:include page="header.jsp" />
 <jsp:include page="nav.jsp" />
	
	<section class="row full">
		<aside class="col-sm-2">
		</aside>
   		<article class="col-sm-8 col-xs-12"  style="box-shadow: 5px 5px 8px #ff3333; background-color: #cccccc;">

				<div class="row author-articles">
   					<div class="topictitle">
   					${profile.name}
   					</div>
   					<div class="table-responsive">
   					<table class="table borderless">
   						<tr>
   							<td>जन्म</td>
   							<td>${profile.dateofbirth}</td>
   						</tr>
   						<tr>
   							<td>जन्मस्थान</td>
   							<td>${profile.birthplace}</td>
   						</tr>
   						<tr>
   							<td>पिता</td>
   							<td>${profile.fathername}</td>
   						</tr>
   						<tr>
   							<td>माता</td>
   							<td>${profile.mothername}</td>
   						</tr>
   						<tr>
   							<td>मृत्यु</td>
   							<td>${profile.dateofdeath}</td>
   						</tr>
   						<tr>
   							<td>पुरस्कार/सम्मान</td>
   							<td>${profile.awards}</td>
   						</tr>
   					</table>
   				</div>
      			</div>

				<div class="row author-articles">
   					<div class="topictitle ">
   					कृति
   					</div>
   					<div class="kriti">
                                        ${profile.writings}
   				</div>
                                
      			</div>
                                
   		</article>
   
		<aside class="col-sm-2">
			
		</aside>	

	</section>
	
 <jsp:include page="footer.jsp" />

</body>
</html>
