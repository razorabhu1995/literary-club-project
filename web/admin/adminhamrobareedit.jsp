<%-- 
    Document   : adminhamrobareedit
    Created on : Dec 21, 2016, 1:15:59 PM
    Author     : YubRaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         
       <title>Admin Page:HamroBareEdit</title>
       <link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">  
    </head>
    <body>
        <p class="well">Hamro bare Edit Page</p>
        <div class="container">
  <form class="form-horizontal" style="margin-top:20px;" action="${pageContext.request.contextPath}/admin/hamrobareedit?page=hamrobareedit" id="hamrobareform" method="post" enctype="multipart/form-data">
    
          <div class="form-group">        
      <div class="col-sm-4 col-sm-offset-1">
        <img src="${pageContext.request.contextPath}/images/members/${members.imagesrc}" class="img-square img-center" style="max-height: 100px; max-width: 100px;">
        
      </div>
      <div class="col-sm-offset-2 col-sm-5">
       <input type="file" class="form-control" name="photofile"/>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="id">ID:</label>
      <div class="col-sm-10">
        <input type="text" disabled="disabled" class="form-control" id="id" name="id" value="${members.id}" placeholder="ID HERE"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="id" name="name" value="${members.name}" placeholder="ID HERE"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">Post:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="id" name="post" value="${members.post}" placeholder="ID HERE"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">Address:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="id" name="address" value="${members.address}" placeholder="ID HERE"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="id" name="email" value="${members.email}" placeholder="ID HERE"/>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="id">Descriptions:</label>
      <div class="col-sm-10">
          <textarea rows="6" class="form-control" name="description">${members.description}
</textarea>
      </div>
    </div>
        <input type="email" class="form-control" disabled="disabled" style="width:0px; height:0px;" id="id" name="imagesrc" value="${members.imagesrc}" placeholder="ID HERE"/>
    <div class="form-group">        
      <div class="col-sm-4 col-sm-offset-4">
        <button type="submit" class="btn btn-default">Save</button>
      </div>
      <div class="col-sm-4">

      </div>
    </div>
  </form>
</div>

    </body>
</html>
