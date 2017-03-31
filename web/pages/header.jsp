<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    #maintitle{
        padding-top:10%; 
        font-size: 2em;
    }
    @media screen and (max-width: 630px) {
    #maintitle{
        font-size: 1.5em;
    }
    @media screen and (max-width: 450px) {
    #maintitle{
        font-size: 1em;
    }
}
</style>
<header class="row">
<!-- 		CLUB LOGO -->
			<div class="col-sm-2  col-xs-2">
				<a href="${pageContext.request.contextPath}/index?page=index"><img src="${pageContext.request.contextPath}/images/logo.png" class="img-responsive" /></a>
			</div>
			<div class="col-sm-4  col-xs-4">
                            <h2  id="maintitle">सेन्ट जेभियर्स साहित्यिक क्लब</h2>
			</div>
<!-- 			SCROLL -->
			<div class="col-sm-6 col-xs-6">
				<div class="marquee" id="mycrawler2">
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=1"><img src="${pageContext.request.contextPath}/images/scroll/index1.png" /> </a>
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=2"><img src="${pageContext.request.contextPath}/images/scroll/index2.png" /></a> 
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=3"><img src="${pageContext.request.contextPath}/images/scroll/index3.png" /></a> 
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=4"><img src="${pageContext.request.contextPath}/images/scroll/index4.png" /></a>
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=5"><img src="${pageContext.request.contextPath}/images/scroll/index5.png" /></a>
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=6"><img src="${pageContext.request.contextPath}/images/scroll/index6.png" /></a>
					<a href="${pageContext.request.contextPath}/profile?page=profile&id=7"><img src="${pageContext.request.contextPath}/images/scroll/index7.png" /></a>
				</div>
			</div>
</header>
