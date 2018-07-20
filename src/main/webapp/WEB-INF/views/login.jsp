    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
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
					
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="js/respond.min.js"></script>
	
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<%@ include file="./share/topbar.jsp" %>		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="${pageContext.request.contextPath}/" class="logo pull-left"><img src="<c:url value="/resources/themes/images//logo.png" />" class="site_logo" alt=""></a>
				
				<%@include file="./share/nav.jsp" %>
				
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="<c:url value="/resources/themes/images/pageBanner.png" />" alt="New products" >
				<h4><span>Login or Register</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						<h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
						<c:if test="${not empty error}">
                      <h2 style="color:red;">${error}</h2>
                  </c:if>
						<form action="${pageContext.request.contextPath}/" method="post">
							<input type="hidden" name="next" value="/">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Email</label>
									<div class="controls">
										<input type="text" placeholder="Enter your email" id="username" name="username" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Password</label>
									<div class="controls">
										<input type="password" placeholder="Enter your password" id="password" name="password" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<input tabindex="3" class="btn btn-inverse large" type="submit" value="Sign into your account"> <span>or</span>
									 <button class="btn btn-inverse" type="submit" name="submit" value="Submit" id="submit" formaction="${pageContext.request.contextPath}/register">Register</button>
									 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									<hr>
									<p class="reset">Recover your <a tabindex="4" href="#" title="Recover your username or password">username or password</a></p>
								</div>
							</fieldset>
						</form>				
					</div>
					
					<!-- REGISTER FORM  -->
			
					
					
					
					<!-- WHITESPACE  -->
						
						
									
					</div>				
				</div>
			</section>			
			
			<%@ include file="./share/footer.jsp" %>
			
		</div>
		<script src="<c:url value="/resources/themes/js/common.js" />"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>