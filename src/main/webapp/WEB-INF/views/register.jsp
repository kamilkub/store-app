    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
		
		<style>
	   .error{
	          color:red;
	   }
	</style>
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
					<a href="${pageContext.request.contextPath}/" class="logo pull-left"><img src="<c:url value="/resources/themes/images/logo.png" />" class="site_logo" alt=""></a>
					
					<%@include file="./share/nav.jsp" %>
					
				</div>
			</section>				
			<section class="header_text sub">
			<img class="pageBanner" src="<c:url value="/resources/themes/images/pageBanner.png" />" alt="New products" >
				<h4><span>Check Out</span></h4>
			</section>	
			<section class="main-content">
				<div class="row">
					<div class="span12">
						<div class="accordion" id="accordion2">
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Checkout Options</a>
								</div>
								<div id="collapseOne" class="accordion-body in collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>New Customer</h4>
												<p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Account &amp; Billing Details</a>
								</div>
								<form:form modelAttribute="user" method="POST" action="${pageContext.request.contextPath}/adduser" enctype="multipart/form-data">
 								<div id="collapseTwo" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>Your Personal Details</h4>
												<div class="control-group">
													<label class="control-label">First Name</label>
													<div class="controls">
														<sf:input type="text" placeholder="" class="input-xlarge" name="firstName" id="firstName" path="firstName"/>
														<form:errors path="firstName" cssClass="error" />
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Last Name</label>
													<div class="controls">
														<sf:input type="text" placeholder="" class="input-xlarge" name="lastName" id="lastName" path="lastName" />
														<form:errors path="lastName" cssClass="error" />
													</div>
												</div>					  
												<div class="control-group">
													<label class="control-label">Email Address</label>
													<div class="controls">
														<sf:input type="email" placeholder="" class="input-xlarge" path="email" name="email" id="email"  />
														<form:errors path="email" cssClass="error" />
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Telephone</label>
													<div class="controls">
														<sf:input type="text" placeholder="" class="input-xlarge" path="contact_number" name="contact_number" id="contact_number" />
														<form:errors path="contact_number" cssClass="error" />
													</div>
												</div>
												
												<div class="control-group">
													<label class="control-label">Password</label>
													<div class="controls">
														<sf:input type="password" placeholder="" class="input-xlarge" path="password" name="password" id="password" />
														<form:errors path="password" cssClass="error" />
													</div>
												</div>
												 <button class="btn btn-inverse" type="submit" name="submit" value="Submit" id="submit">Register</button>
												
												
											</div>
											
												</form:form>
											
											<div class="span6">
											
											
																  
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Address 1:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Address 2:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> City:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Post Code:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Country:</label>
													<div class="controls">
													  <select name="zone_id" class="input-xlarge">
															<option value=""> --- Please Select --- </option>
															<option value="3513">Poland</option>
															<option value="3514">England</option>
															<option value="3515">USA</option>
															<option value="3516">France</option>
															<option value="3517">Germany</option>
														</select>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Region / State:</label>
													<div class="controls">
														<select name="zone_id" class="input-xlarge">
															<option value=""> --- Please Select --- </option>
															<option value="3513">Mazowieckie</option>
															<option value="3514">Massachuests</option>
															<option value="3515">South West</option>
															<option value="3516">Sachesn-anhalt</option>
															<option value="3517">Grand-Est</option>
														</select>
													</div>
												</div>
									
							
												
											</div>
										</div>
									</div>
								</div>
							</div>

						
						
						</div>				
					</div>
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="<c:url value="/resources/themes/images/logo.png" />" class="site_logo" alt=""></p>
						<p>Shopper is a totally new shop, where you can find new designs and clothes. We provide best materials!</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>@ Copyright 2018 Kamil</span>
			</section>
		</div>
		<script src="<c:url value="/resources/themes/js/common.js" />"></script>
    </body>
</html>