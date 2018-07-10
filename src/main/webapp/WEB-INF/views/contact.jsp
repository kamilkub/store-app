    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Online Spring Store</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">      
		<link href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css" />" rel="stylesheet">		
		<link href="<c:url value="/resources/themes/css/bootstrappage.css" />" rel="stylesheet"/>
		<!-- global styles -->
		<link href="<c:url value="/resources/themes/css/flexslider.css" />" rel="stylesheet"/>
		<link href="<c:url value="/resources/themes/css/main.css" />" rel="stylesheet"/>


		<!-- scripts -->
	    <script src="<c:url value="/resources/themes/js/jquery-1.7.2.min.js" />"></script>
		<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>				
		<script src="<c:url value="/resources/themes/js/superfish.js" />"></script>	
		<script src="<c:url value="/resources/themes/js/jquery.scrolltotop.js" />"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
						    <li><a href="${pageContext.request.contextPath}/show/all/products">View Products</a></li>
							<li><a href="${pageContext.request.contextPath}/cart">Your Cart</a></li>
							<li><a href="${pageContext.request.contextPath}/management/products">Add product</a></li>
							<li><a href="${pageContext.request.contextPath}/register">Sign up</a></li>					
							<li><a href="${pageContext.request.contextPath}/auth">Login</a></li>					
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="<c:url value="/resources/themes/images/logo.png" />" class="site_logo" alt=""></a>
			
			<%@include file="./share/nav.jsp" %>
			
				</div>
			</section>							
			<section class="google_map">
				<iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=74%2F6+Nguy%E1%BB%85n+V%C4%83n+Tho%E1%BA%A1i,+S%C6%A1n+Tr%C3%A0,+%C4%90%C3%A0+N%E1%BA%B5ng,+Vi%E1%BB%87t+Nam&amp;aq=0&amp;oq=74%2F6+Nguyen+Van+Thoai+Da+Nang,+Viet+Nam&amp;sll=37.0625,-95.677068&amp;sspn=41.546728,79.013672&amp;ie=UTF8&amp;hq=&amp;hnear=74+Nguy%E1%BB%85n+V%C4%83n+Tho%E1%BA%A1i,+Ng%C5%A9+H%C3%A0nh+S%C6%A1n,+Da+Nang,+Vietnam&amp;t=m&amp;ll=16.064537,108.24151&amp;spn=0.032992,0.039396&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
			</section>
			<section class="header_text sub">
			<img class="pageBanner" src="<c:url value="/resources/themes/images/pageBanner.png" />" alt="New products" >
				<h4><span>Contact Us</span></h4>
			</section>
			<section class="main-content">				
				<div class="row">				
					<div class="span5">
						<div>
							<h5>ADDITIONAL INFORMATION</h5>
							<p><strong>Phone:</strong>&nbsp;(123) 456-7890<br>
							<strong>Fax:</strong>&nbsp;+04 (123) 456-7890<br>
							<strong>Email:</strong>&nbsp;<a href="#">hacking1050@o2.pl</a>								
							</p>
						</div>
					</div>
					<div class="span7">
						<p>Send us a message with your opinion or even with problems, which will give us a point what we should do and how to improve our service!</p>
						<form method="post" action="#">
							<fieldset>
								<div class="clearfix">
									<label for="name"><span>Name:</span></label>
									<div class="input">
										<input tabindex="1" size="18" id="name" name="name" type="text" value="" class="input-xlarge" placeholder="Name">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="email"><span>Email:</span></label>
									<div class="input">
										<input tabindex="2" size="25" id="email" name="email" type="text" value="" class="input-xlarge" placeholder="Email Address">
									</div>
								</div>
								
								<div class="clearfix">
									<label for="message"><span>Message:</span></label>
									<div class="input">
										<textarea tabindex="3" class="input-xlarge" id="message" name="body" rows="7" placeholder="Message"></textarea>
									</div>
								</div>
								
								<div class="actions">
									<button tabindex="3" type="submit" class="btn btn-inverse">Send message</button>
								</div>
							</fieldset>
						</form>
					</div>				
				</div>
			</section>			
			
			<%@ include file="./share/footer.jsp" %>
			
		</div>
		<script src="<c:url value="/resources/themes/js/common.js" />"></script>		
    </body>
</html>