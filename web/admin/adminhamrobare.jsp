<%-- 
    Document   : adminhamrobare
    Created on : Dec 21, 2016, 12:46:37 PM
    Author     : YubRaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <!-- 		SOME IMPORTANT CSS AND JAVASCRIPT -->
      		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/hamrobare.css">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                

        <title>Admin Page:HamroBare</title>
        <style>
            a{
                text-decoration:none;
                color:black;
              }
              a:hover{
                  text-decoration:none;
                  color:black;
              }  
        </style>
       <link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">  
    </head>
    <body>
            
        <div class="container">

            <c:forEach items="${list}" var= "lst">
                <a href="${pageContext.request.contextPath}/admin/hamrobareedit?page=hamrobareedit&id=${lst.id}">
                <div class="col-sm-6 col-xs-6 text-center" style="padding:5px;">
                <div class="row">
                <img class="img-circle img-center" src="${pageContext.request.contextPath}/images/members/${lst.imagesrc}" alt="">
                </div>
                <h3>${lst.name}
                    <small>${lst.post}</small>
                </h3>
                <div class="row">

                    <p><i class="fa fa-map-marker" aria-hidden="true"></i>${lst.address}</p>    
                    <p><i class="fa fa-envelope" aria-hidden="true"></i>${lst.email}</p>
                </div>
                <p>${lst.description}</p>
            </div>
                </a>
            </c:forEach>
        </div>
    </body>
</html>
