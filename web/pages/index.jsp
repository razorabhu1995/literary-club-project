
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>सेन्ट जेभियर्स साहित्यिक क्लब</title>
<!-- 	META TAG -->
		<meta charset="UTF-8">
		<meta name="keywords" content="ST.XAVIER'S LITERARY CLUB,st.xavier's literature,sahitya puraskar">
                <meta name="description" content="This is the official site of St. Xavier's Literary Club. Through this portal, information about club activities, events can be accessed. A digital platform for publishing poems, essays and stories.">
		<meta name="author" content="Pratik Gautam,Yub Raj Basnet">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 		CSS FOR THE PAGE -->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">

<!-- 		SOME IMPORTANT CSS AND JAVASCRIPT -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome/css/font-awesome.css">

<!-- 			FOR SLIDER -->


    	<script src="${pageContext.request.contextPath}/javascript/index.js" type="text/javascript"></script>

<!--     	FOR SCROLL -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/scroll/crawler.js"></script>

<!-- 		HEADER ICON -->
		<link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">
</head>
<body>

    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
	
	<section class="row full">

		<aside class="col-sm-2">
			
		</aside>
<!-- 		PALCE FOR MAIN CONTENT -->
		<div class="col-sm-8 col-xs-12">
<!-- 			IMAGE SLIDER -->
			<article>

		 	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		      <li data-target="#myCarousel" data-slide-to="3"></li>
		    </ol>

		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">
		      <div class="item active">
		        <img src="${pageContext.request.contextPath}/images/slider/image-slider-1.png" alt="event pictures" >
		      </div>

		      <div class="item">
		        <img src="${pageContext.request.contextPath}/images/slider/image-slider-2.png" alt="event pictures">
		      </div>
		    
		      <div class="item">
		        <img src="${pageContext.request.contextPath}/images/slider/image-slider-3.png" alt="event pictures">
		      </div>

		      <div class="item">
		        <img src="${pageContext.request.contextPath}/images/slider/image-slider-4.png" alt="event pictures">
		      </div>
		    </div>

		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
	   		
	   		</article>

<!-- 	   		ARTICLES PICTURES -->
	   		<article>
<!--	   			<div class="well" style="text-align:center;">
	   				<p>ARTICLE<p>
	   				<hr>
	   			</div>-->
	   		<div class="row" id="xyz">
	   			<div class="row">
	   				<div class="col-sm-3 col-xs-6">
	   					<a href="${pageContext.request.contextPath}/sendarticle?page=sendarticle"><img src="${pageContext.request.contextPath}/images/index/a.png" class="img-responsive"></a>
	   				</div>
			   		<div class="col-sm-3 col-xs-6">
			   			<a href="${pageContext.request.contextPath}/sahityapuraskar?page=sahityapuraskar"><img src="${pageContext.request.contextPath}/images/index/b.png" class="img-responsive"></a>
			   		</div>
			   		
			   		<div class="col-sm-3 col-xs-6">
			   			<a href="${pageContext.request.contextPath}/jankari?page=jankari"><img src="${pageContext.request.contextPath}/images/index/c.png" class="img-responsive"></a>
			   		</div>
			   		<div class="col-sm-3 col-xs-6">
			   			<a href="${pageContext.request.contextPath}/profile?page=profile&id=1"><img src="${pageContext.request.contextPath}/images/index/d.png" class="img-responsive"></a>
			   		</div>
<!--			   		<div class="col-sm-2 col-xs-6">
			   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/e.jpg" class="img-responsive"></a>
			   		</div>
			   		<div class="col-sm-2 col-xs-6">
			   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/a.jpeg" class="img-responsive"></a>
			   		</div>-->
	   			
	   		</div>

<!--		   <div class="row">
		   		<div class="col-sm-2 col-xs-6">
			   		<a href="#"><img src="${pageContext.request.contextPath}/images/index/b.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
			   		<a href="#"><img src="${pageContext.request.contextPath}/images/index/a.jpeg" class="img-responsive"></a>
		   		</div>
		   		
		   		<div class="col-sm-2 col-xs-6">
			   		<a href="#"><img src="${pageContext.request.contextPath}/images/index/c.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/d.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/e.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/a.jpeg" class="img-responsive"></a>
		   		</div>
	   			
	   		</div>

		   <div class="row">
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/b.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/e.jpg" class="img-responsive"></a>
		   		</div>
		   		
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/d.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/c.jpg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/a.jpeg" class="img-responsive"></a>
		   		</div>
		   		<div class="col-sm-2 col-xs-6">
		   			<a href="#"><img src="${pageContext.request.contextPath}/images/index/a.jpeg" class="img-responsive"></a>
		   		</div>
		   				
		   	</div>
   		</div>-->
 
   </article>
   </div>
   
		<aside class="col-sm-2">
			
		</aside>	

	</section>
	
    <%@ include file="footer.jsp"%>


</body>
</html>