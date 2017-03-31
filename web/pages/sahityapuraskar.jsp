<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Kalam|Palanquin|Yatra+One" rel="stylesheet">	
<title>साहित्य पुरस्कार</title>
<!-- 	META TAG -->
                <meta charset="UTF-8">
		<meta name="keywords" content="St. Xavier's Sahitya Puraskar,puraskar,sahitya puraskar,award,shaitya award">
                <meta name="description" content="The page contains information about St. Xavier's Sahitya Puraskar, its procedure. This year is year of poem.">
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
                <h2 style="padding-bottom: 12px">यस क्लबले यही वर्ष २०७३ देखि सेन्ट जेभियर्स साहित्य पुरस्कारको स्थापना गरेको छ ।</h2>
                <hr/>    
                <dl>
                    <dt>
                    <h4>१) के हो सेन्ट जेभियर्स साहित्य पुरस्कार ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">सेन्ट जेभियर्स साहित्य पुरस्कार सेन्ट जेभियर्स कलेजले प्रत्येक वर्ष उत्कृष्ट रचनालाई दिने प्रतिष्ठित पुरस्कार हो ।
                    </dd>
                    <dt>
                    <h4>२) पुरस्कारको नगद राशी कति हुन्छ ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">पुरस्कारको नगद राशी रु.५/५ हजार ( नेपाली र अङ्ग्रेजी ) हुन्छ ।</dd>
                    <dt>
                    <h4>३) रचना कथा, कविता, निबन्ध के हुनुपर्छ ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">क्लबले प्रत्येक वर्षलाई कुनै एक साहित्यिक विधाको रुपमा मनाउने निर्णय गरेको छ । जस्तै वर्ष २०७३ कविता वर्ष हो । यस बर्षभरी लेखकलाई कविता पठाउन आवहान गरिन्छ । कविता गद्य वा पद्य कुनै एक शौलीमा लेख्न सकिन्छ ।

                    </dd>
                    <dt>
                    <h4>४) रचना कसरी पठाउने ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">रचना पठाउन यस वेभसाइटको 'लेख पठाउनुहोस्' मार्फत् वा क्लब व्यवस्थापन / सभापतिलाई बुझाउन सकिन्छ ।
                    </dd>
                    <dt>
                    <h4>५) रचना अङ्ग्रेजी / नेपाली कुन माध्यममा हनुपर्छ ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">रचना नेपाली वा अङ्ग्रेजी कुनै माध्यममा लेखेर पठाउन सकिन्छ ।</dd>
                    <dt>
                    <h4>६) रचना को – कसले पठाउन पाउछ ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">सेन्ट जेभियर्स कलेज माइतिघरमा कुनै पनि विषय लिई अध्ययन गर्ने विद्यार्थीले पठाउन सक्छ ।
                    </dd>
                    <dt>
                    <h4>७) रचना छनोट गर्ने आधार के – के हुन् ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">यस क्लबको छनोट समूहले योग्य रचना छनोट गर्दछ । छनोट समूहमा लामो समयसम्म नेपाली ÷ अङ्ग्रेजी विषय अध्यापन गराउने शिक्षकवर्ग रहन्छन् । छनोटमा परेका रचना यही साइटमा प्रकाशित हुन्छन् । यसरी प्रकाशित रचनामध्ये केही मनोनयनमा राखिन्छ र साहित्य पुरस्कार वितरणका दिन आमन्त्रित विशिष्ट साहित्यिक अतिथिवर्गबाट एक उत्कृष्ट रचना छानिन्छ ।
                    </dd>
                    <dt>
                    <h4>८) पुरस्कार वितरण कहिले हुन्छ ?</h4>
                    </dt>
                    <dd style="padding-bottom: 8px">हरेक वर्ष कवि गोष्ठी कार्यक्रमका दिन उक्त पुरस्कार प्रदान गरिने छ ।
                    </dd>
                </dl>
                
            </div>
        </div>
                    
                </article>
   
		<aside class="col-sm-2">
			
		</aside>	

	</section>
	
 <jsp:include page="footer.jsp" />

</body>
</html>
