<%-- 
    Document   : jankari
    Created on : Sep 21, 2016, 9:07:58 PM
    Author     : YubRaj
--%>


<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>कवि गोष्ठि</title>
<!--    META TAG -->
                <meta charset="UTF-8">
    		<meta charset="UTF-8">
		<meta name="keywords" content="indivisual poems">
                <meta name="description" content="The page contains published poems.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!--        CSS FOR THE PAGE -->

     
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/poemdetail.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">


<!--        SOME IMPORTANT CSS AND JAVASCRIPT -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome/css/font-awesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jankari.css" type="text/javascript">

<!--        FONTS-->
       <link href="https://fonts.googleapis.com/css?family=Arbutus|Architects+Daughter|Arvo" rel="stylesheet">
<!--            FOR SLIDER -->


        <script src="${pageContext.request.contextPath}/javascript/index.js" type="text/javascript"></script>

<!--        FOR SCROLL -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/javascript/scroll/crawler.js"></script>

<!--        HEADER ICON -->
        <link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">
</head>
<body>
    <%@ include file="header.jsp"%>
    <%@ include file="nav.jsp"%>
    
    <section class="row full">

        <aside class="col-sm-2 .visible-xs-block hidden-xs">
            
        </aside>
<!--        PALCE FOR MAIN CONTENT -->
        <div class="col-sm-8 col-xs-12">
            <article class="container-fluid"  style="box-shadow: 5px 5px 8px #ff3333; background-color: #cccccc;">
               <div class="row" id="heading">
                   <span id="category">${pub.category}</span>
                   <span>Published Date:</span><span id="date">${pub.date_of_publish}</span>
               </div>
               <div class="row" id="info">
                   <div class="col-sm-8 col-xs-8 textinfo">
                       <h1 id="title">${pub.title}</h1>
                       <span id="name">${pub.name}, </span>
                       <span id="education_level">${pub.education_level}</span><br>
                       <span id="email">${pub.email}</span>
                   </div>
                   <div class="col-sm-4 col-xs-4" id="photo">
                       <img src="${pageContext.request.contextPath}/files/${fn:toLowerCase(pub.category)}/${fn:toLowerCase(pub.language)}/Photo/${pub.photourl}.png" alt="${pub.name}" class="img-responsive">
                   </div>
               </div>
               <div class="row" id="body">

                   <iframe src="${pageContext.request.contextPath}/files/${fn:toLowerCase(pub.category)}/${fn:toLowerCase(pub.language)}/Content/${pub.contenturl}.pdf">
                         <p style="font-size: 110%;"><em><strong>ERROR: </strong>  
An &#105;frame should be displayed here but your browser version does not support &#105;frames.</em> Please update your browser to 
its most recent version and try again, or access the file <a 
href="${pageContext.request.contextPath}/files/${fn:toLowerCase(pub.category)}/${fn:toLowerCase(pub.language)}/Content/${pub.contenturl}.pdf"with this link.</a></p>
                   </iframe>
               </div>
            </article>
        </div>
   
        <aside class="col-sm-2 .visible-xs-block hidden-xs">
            
        </aside>    

    </section>
    
    <%@ include file="footer.jsp"%>


</body>
</html>