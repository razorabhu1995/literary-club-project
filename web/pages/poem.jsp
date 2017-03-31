<%-- 
    Document   : jankari
    Created on : Sep 21, 2016, 9:07:58 PM
    Author     : YubRaj
--%>


<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>कवि गोष्ठि</title>
<!--    META TAG -->
        <meta charset="UTF-8">
                <meta charset="UTF-8">
		<meta name="keywords" content="essay, posted essay, article published">
                <meta name="description" content="The page contains published essay.">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<!--        CSS FOR THE PAGE -->
     
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/footer.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/nav.css">

<!--        FONTS-->
        <link href="https://fonts.googleapis.com/css?family=Fugaz+One|Russo+One" rel="stylesheet">
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

        <aside class="col-sm-2 .visible-xs-block hidden-xs">
       <style>
           
           article#list > div#info{
               font-family: 'Fugaz One', cursive;
               font-size:0px;
               font-size:0vw;
               visibility: hidden;
               background-color:rgb(22,22,22);
               background-color:rgba(22,22,22,0);
  transition: visibility 0s, all 0.5s linear;
           -webkit-transition:visibility 0s, all 0.5s linear;
           }
           
           article#list:hover > div#info {
               font-size:15px;
               font-size:1.3vw;
               visibility: visible;
  background-color:rgb(22,22,22);
               background-color:rgba(22,22,22,.6);
  color:white;
}
article#list{
    margin-bottom: 5px;
}
article#list #title{
    text-align:center;
    font-family: 'Russo One', sans-serif;
    font-size:35px;
    font-size:2.5vw;
    vertical-align: middle;
    
    
}
article#list #title #category{

    font-family:'Fugaz One', cursive;
    font-size:15px;
    font-size:1.5vw;
    vertical-align: middle;
    
    
}
article#list:nth-child(odd){
    background-image: url("../puraskar/images/pattern/nasty_fabric.png");
}
article#list:nth-child(even){
    background-image: url("../puraskar/images/pattern/green_cup.png");
}
article#list{
    display:block;
    margin-bottom:10px;
    background-repeat:repeat; 
    color:white; 
    position:relative;
}
           </style>
        </aside>
<!--        PALCE FOR MAIN CONTENT -->

        <div class="col-sm-8 col-xs-12">
            <c:forEach items="${list}" var= "lst">
                <a href="${pageContext.request.contextPath}/poem/detail?page=poemdetail&id=${lst.id}" id="listlink">    
            <article class="row" id="list">

<div class="col-xs-2 col-sm-2 col-md-2" id="photo">
<img src="${pageContext.request.contextPath}/images/developer/yub.png" alt="photo of writer" class="img-responsive" style="overflow:hidden; max-height:100px;">
</div>
<div class="col-xs-10 col-sm-10 col-md-10" id="title">
    ${lst.title} <span id="category"><sub>,${lst.category}</sub></span>
</div>
<div id="info" class="col-xs-12 col-sm-12 col-md-12" style="position: absolute; bottom:0; z-index: 10">
    <div id="infoname" class="col-xs-3 col-sm-3 col-md-3">${lst.name}</div>
    <div id="infoemail" class="col-xs-4 col-sm-4 col-md-4">${lst.email}</div>
    <div id="infofaculty" class="col-xs-3 col-sm-3 col-md-3">${lst.education_level}</div>
    <div id="infopublisheddate" class="col-xs-2 col-sm-2 col-md-2">${lst.date_of_publish}</div>
                </div>
                  
            </article>
                </a>
            </c:forEach>
        </div>
   
        <aside class="col-sm-2 .visible-xs-block hidden-xs">
            
        </aside>    

    </section>
    
    <%@ include file="footer.jsp"%>


</body>
