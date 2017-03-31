<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Kalam|Palanquin|Yatra+One" rel="stylesheet">	
<title>लेख पठाउनुहोस्</title>
<!-- 	META TAG -->
                <meta charset="UTF-8">
		<meta name="keywords" content="send article">
                <meta name="description" content="Send your articles(poems, essay, story) throught this form.">
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

<!-- 			PAGE JAVASCRIPT -->

    	<script src="../javascript/index.js" type="text/javascript"></script>


<!--     	FOR SCROLL -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/scroll/crawler.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/javascript/index.js"></script>

<!-- 		HEADER ICON -->
		<link rel="icon" type="image/png"  href="${pageContext.request.contextPath}/images/logoheader.png">
<!--                Google capta-->
                <script src='https://www.google.com/recaptcha/api.js'></script>

<!--                    STYLE FOR CUSTOM ALERT-->
<style>
.alert {
    padding: 20px;
    background-color: #f44336;
    width:100%;
    margin:auto;
    position:absolute;
    z-index: 55;
    height:50%;
    top:50px;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}
</style>
</head>
<body>

 <jsp:include page="header.jsp" />
 <jsp:include page="nav.jsp" />
	<section class="row full">
		<aside class="col-sm-2">
		</aside>
   		<article class="col-sm-8 col-xs-12"  style="box-shadow: 5px 5px 8px #ff3333; background-color: #cccccc;">
                    <div class="row">
            <div class="col-sm-12">
                <h1>रचना पठाउँदा ध्यान दिनुपर्ने कुराहरु :</h1>
                    <ul style="list-style-type: none;">
                    <li style="padding:4px"> 
                    १) वर्ष २०७३ लाई यस क्लबले कविता वर्षको रुपमा मनाइरहेको छ ।
                    </li>
                    <li style="padding:4px"> 
                    २) यस वर्ष लेखकले कवितामात्र पठाउन पाउनेछ ।  गद्य वा पद्य कुनै पनि शैलीलाई प्राथमिकता दिइनेछ ।
                    </li>
                    <li style="padding:4px"> 
३) छनोट समूहबाट छानिएका कविता यस वेभसाइटमा प्रत्येक हप्ताको शुक्रबार प्रकाशित हुनेछन् र प्रकाशित कवितामात्र सेन्ट जेभियर्स साहित्य पुरस्कारका निम्ति योग्य हुनेछ ।
                    </li>
                    <li style="padding:4px"> 
                    ४) एक पटकमा कविले एउटामात्र कविता पठाउन पाउनेछ र एक जनाको एउटामात्र कविता प्रकाशित हुनेछ ।

                    </li>
                    <li style="padding:4px"> 
५) रचना प्रकाशन भए नभएको जानकारी लेखकले उपल्बध गराएको इमेल ठेगानामा पाउनेछ ।
                    </li>
                    <li style="padding:4px"> 
६) अरुको कविता परिमार्जन वा अनुवाद गरेर पठाइएका प्रकाशित हुने छैन ।

                    </li>
                    <li style="padding:4px"> 
७) अन्य पत्र पत्रिका, वेभसाइट, किताबमा प्रकाशित कविता पनि पठाउन पाइनेछैन । कविता विशुद्ध आफ्नो सृर्जना हुनुपर्दछ ।
                    </li>
                    <li style="padding:4px"> 
८) रचना फोटो खिचेर / टाइप गरेर वा क्लब व्यवस्थापन समिति / सभापतिलाई बुझाउन सकिन्छ ।

                    </li>
                </ul>
                
            </div>
        </div>
                    
			<form name="form1" id="form1" class="form-horizontal" action="${pageContext.request.contextPath}/sendarticle?page=sendarticle" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label class="control-label col-sm-2">नाम</label>
					<div class="col-sm-10">			
						<input type="text" name="fullname" placeholder="पूरा नाम दिनुहोस्" class="form-control"  required />
                                        </div>
                                </div>
                           <div class="form-group">
					<label class="control-label col-sm-2">Photo(Optional)</label>
					<div class="col-sm-10">
					<input type="file" class="form-control" name="photo" accept="image/*">
					</div>
					</div>     

                            <div class="form-group">
					<label class="control-label col-sm-2">ठेगाना</label>
					<div class="col-sm-10">			
						<input type="text" name="address" placeholder="पूरा ठेगाना दिनुहोस्" class="form-control"  required />
                                        </div>
                                </div>

                            <div class="form-group">
                                <label for="course" class="control-label col-sm-2">तह:</label>
                                <div class="col-sm-10">
                                <select class="form-control" id="course" name="course">
                                  <option>+2</option>
                                  <option value="A Level">A level</option>
                                  <option value="BSCCSIT">BScCSIT</option>
                                  <option value="BIM">BIM</option>
                                  <option value="BSW">BSW</option>
                                  <option value="BSC PHYSICS">BSc.Physics</option>
                                  <option value="BSC MICROBIOLOGY">BSc.Microbiology</option>
                                  <option value="BBS">BBS</option>
                                  <option value="BA">BA</option>
                                  <option value="MBS">MBS</option>
                                  <option value="MSC PHYSICS">MSc.Physics</option>
                                  <option value="MSC MICROBIOLOGY">MSc.Microbiology</option>
                                </select>
                               </div>
                             </div>
                            <div class="form-group">
                                <label for="category" class="control-label col-sm-2">विधा</label>
                                <div class="col-sm-10">
                                <select class="form-control" id="category" name="category" >
                                    <option value="poem">कविता</option>
                                  <option disabled="disabled" value="essay">निबन्ध</option>
                                  <option disabled="disabled" value="story">कथा</option>
                                </select>
                               </div>
                             </div>
                            <div class="form-group">
                                <label for="category" class="control-label col-sm-2">Language</label>
                                <div class="col-sm-10">
                                <select class="form-control" id="language" name="language" >
                                    <option value="poem">Nepali</option>
                                  <option value="essay">English</option>
                                </select>
                               </div>
                             </div>
                                <div class="form-group">
					<label class="control-label col-sm-2">शिर्षक</label>
					<div class="col-sm-10">
						<input type="text" name="title" class="form-control" required placeholder="तपाईँको रचनाको शिर्षक" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">मो. न</label>
					<div class="col-sm-10">
					<input type="text" name="phone" class="form-control" placeholder="मोबाइल नं" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">इमेल</label>
					<div class="col-sm-10">
						<input type="email" name="emailid" class="form-control" placeholder="" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">लेख</label>
					<div class="col-sm-10">
					<input type="file" class="form-control" name="file" required>
					</div>
					</div>

				<div class="form-group">
					<label class="control-label col-sm-2">लेखको बारे</label>
					<div class="col-sm-10">
					<textarea rows="10" name="comments" class="form-control" placeholder="तपाईँको रचनाबारे छोटकरी लेख्नुहोस् ।"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">Are You Robot?</label>
					<div class="col-sm-10">
					<div class="g-recaptcha" data-sitekey="6LeF9wcUAAAAAK4nqUZwLfkwmjQaRT6meYHFbjnf"></div> 
					</div>
					</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" name="submit" class="btn btn-default" value="Send" style="border:1px solid #ff3333;" />पठाउनु होस्</button>
					</div>
				</div>

			</form>
                </article>
   
		<aside class="col-sm-2">
			
		</aside>	

	</section>
	
 <jsp:include page="footer.jsp" />
  <c:if test="${not empty msg}">
        <script>alert("${msg}");</script>
       </c:if>
 
</body>
</html>
