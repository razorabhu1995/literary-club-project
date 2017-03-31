<%-- 
    Document   : jankari
    Created on : Sep 21, 2016, 9:07:58 PM
    Author     : YubRaj
--%>


<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title>कवि गोष्ठि</title>
<!--    META TAG -->
                <meta charset="UTF-8">
		<meta name="keywords" content="story, posted story, article published">
                <meta name="description" content="The page contains published story.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!--        CSS FOR THE PAGE -->

     
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">


<!--        SOME IMPORTANT CSS AND JAVASCRIPT -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome/css/font-awesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jankari.css" type="text/javascript">

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

        <aside class="col-sm-2">
            
        </aside>
<!--        PALCE FOR MAIN CONTENT -->
        <div class="col-sm-8 col-xs-12">
<!--          Introduction (parichaya)-->
            <article class="row">
                <h2>Year of essay will be celebrated next year.</h2>
            </article>
        </div>
   
        <aside class="col-sm-2">
            
        </aside>    

    </section>
    
    <%@ include file="footer.jsp"%>


</body>
