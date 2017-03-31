<%-- 
    Document   : notice
    Created on : Oct 3, 2016, 9:02:21 AM
    Author     : YubRaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>सूचना</title>
<!-- 	META TAG -->
                <meta charset="UTF-8">
		<meta name="keywords" content="Notice, st. xavier's notice, literary club notice">
                <meta name="description" content="The page notices regarding events, activities held by literary club.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 		CSS FOR THE PAGE -->


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

        
<style>
 
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 100; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)}
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)}
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
</head>
<body>


    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
	
	<section class="row full">

		<aside class="col-sm-2">
			
		</aside>
<!-- 		PALCE FOR MAIN CONTENT -->
		<div class="col-sm-8 col-xs-12">
                   <c:forEach items="${list}" var= "lst">
                    <div class="row">
                    <article>
                       <div class="col-sm-4 col-xs-4">
                        <img align="right" class="img-responsive" id="myImg" src="${pageContext.request.contextPath}/images/notice/${lst.image_link}" style="max-height:100px; max-width:200px;">
                       </div>
                       <div class="col-sm-8 col-xs-8 well " style="display: box; height:100px; font-size: 20px;">
                           ${lst.description}<br>
                           <div style="font-size:14px; color:#111111; text-align: right;">${lst.date}</div>
                       </div>
                        <!-- The Modal -->
                        <div id="myModal" class="modal">
                          <span class="close">×</span>
                          <img class="modal-content" id="img01">
                          <div id="caption"></div>
                        </div>

                    </article>
                   </div>
                   </c:forEach>
   </div>
   
		<aside class="col-sm-2">
			
		</aside>	

	</section>
	
    <%@ include file="footer.jsp"%>

    
    
    

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}
</script>

        
        
    </body>
</html>
