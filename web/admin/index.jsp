<%-- 
    Document   : index
    Created on : Dec 20, 2016, 6:05:14 PM
    Author     : YubRaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin:MainPage</title>
  <!-- 		SOME IMPORTANT CSS AND JAVASCRIPT -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                

                <style>
                    a{
                        padding:10px;
                        text-decoration: none;
                    }
                    a:hover{
                        text-decoration:none;
                        cursor: pointer;
                    }
                </style>
                <link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">
    </head>
    <body>
        <div class="container" style="margin-top:50px;">
            
            <a href="${pageContext.request.contextPath}/admin/hamrobare?page=hamrobare"><button type="button" class="btn btn-primary btn-block btn-lg">हाम्रो बारे</button></a>
            <a href="#"><button type="button" class="btn btn-primary btn-block btn-lg">हाम्रो बारे</button></a>
            <a href="#"><button type="button" class="btn btn-primary btn-block btn-lg">हाम्रो बारे</button></a>
            <a href="#"><button type="button" class="btn btn-primary btn-block btn-lg">हाम्रो बारे</button></a>
        </div>
    </body>
</html>
