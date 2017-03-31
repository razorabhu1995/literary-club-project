<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse"   data-spy="affix" data-offset-top="107">
	    	<div class="navbar-header">
	      		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	        		<span class="icon-bar"></span>
	      		</button>
	    	</div>
	    	
	    	<div class="collapse navbar-collapse" id="myNavbar">
	      		<ul class="nav navbar-nav">
	        		<li class=${pageContext.request.requestURI eq '/puraskar/pages/index.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/index?page=index"><i class="fa fa-home fa-lg" aria-hidden="true"></i></a></li>
				<li class=${pageContext.request.requestURI eq '/puraskar/pages/hamrobare.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/hamrobare?page=hamrobare">हाम्रो बारे</a></li>
	        		
	        		<li class="dropdown" style="${pageContext.request.requestURI eq '/puraskar/pages/poem.jsp' ? 'background-color:#ff3333;' : ''} ${pageContext.request.requestURI eq '/puraskar/pages/essay.jsp' ? 'background-color:#ff3333;' : ''} ${pageContext.request.requestURI eq '/puraskar/pages/story.jsp' ? 'background-color:#ff3333;' : ''}">
	          			<a class="dropdown-toggle" data-toggle="dropdown" href="#">प्रकाशन<span class="caret"></span></a>
	          			<ul class="dropdown-menu">
	            			<li><a href="${pageContext.request.contextPath}/poem?page=poem">कविता</a></li>
	            			<li><a href="${pageContext.request.contextPath}/story?page=story">कथा</a></li>
	            			<li><a href="${pageContext.request.contextPath}/essay?page=essay">निबन्ध</a></li>
	          			</ul>
	        		</li>
	        		<li class=${pageContext.request.requestURI eq '/puraskar/pages/sahityapuraskar.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/sahityapuraskar?page=sahityapuraskar">साहित्य पुरस्कार</a></li>
				
                                <li class="dropdown" style="${pageContext.request.requestURI eq '/puraskar/pages/jankari.jsp' ? 'background-color:#ff3333;' : ''} ${pageContext.request.requestURI eq '/puraskar/pages/kavigosti_2072.jsp' ? 'background-color:#ff3333;' : ''} ${pageContext.request.requestURI eq '/puraskar/pages/kavigosti_2073.jsp' ? 'background-color:#ff3333;' : ''}">
	          			<a data-toggle="dropdown" data-toggle="dropdown"   href="#"} >कवि गोष्ठी<span class="caret"></span></a>
	          			<ul class="dropdown-menu">
	            			<li  class=${pageContext.request.requestURI eq '/puraskar/pages/jankari.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/jankari?page=jankari">जानकारी</a></li>
	            			<li  class=${pageContext.request.requestURI eq '/puraskar/pages/kavigosti_2072.jsp' ? ' active' : ''} ><a href="${pageContext.request.contextPath}/kavigosti_2072?page=kavigosti_2072">कवि गोष्ठी २०७२</a></li>
	            			<li  class=${pageContext.request.requestURI eq '/puraskar/pages/kavigosti_2072.jsp' ? ' active' : ''} ><a href="${pageContext.request.contextPath}/kavigosti_2072?page=kavigosti_2073">कवि गोष्ठी २०७3</a></li>
	          			</ul>
	        		</li>
	      		
	        		<li class=${pageContext.request.requestURI eq '/puraskar/pages/sendarticle.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/sendarticle?page=sendarticle">लेख पठाउनुहोस्</a></li>
                                <li class=${pageContext.request.requestURI eq '/puraskar/pages/notice.jsp' ? ' active' : ''}><a href="${pageContext.request.contextPath}/notice?page=notice">सूचना</a></li>
                        </ul>
	      		<ul class="nav navbar-nav navbar-right">
	        		<li><a href="https://www.facebook.com/stxaviers.literaryclub/" target="_blank"><i class="fa fa-facebook fa-lg" aria-hidden="true"></i></a></li>
	        		<li><a href="https://twitter.com/sxcliteraryclub" target="_blank"><i class="fa fa-twitter fa-lg" aria-hidden="true"></i></a></li>
	        		<li><a href="https://www.youtube.com/channel/UCCkLWCZ14RHn-TymlvJgDuA" target="_blank"><i class="fa fa-youtube fa-lg" aria-hidden="true"></i></a></li>
	        		<li><a href="https://plus.google.com/117466509519476227938" target="_blank"><i class="fa fa-google-plus fa-lg" aria-hidden="true"></i></a></li>	
	        		<li  data-toggle="collapse" data-target="#demo"><a href="#"><i id="show" class="fa fa-search fa-lg" aria-hidden="true"></i></a></li>
	      		</ul>
	    	</div>
	  	
	
<div class="collapse"  id="demo" >
	<script>
  (function() {
    var cx = '012726853943635627228:skwcdp4a8j0';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
  })();
</script>
<gcse:search></gcse:search>


</div>
</nav>