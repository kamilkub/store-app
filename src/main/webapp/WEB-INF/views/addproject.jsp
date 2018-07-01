<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Online Shopping Spring</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
<!-- bootstrap -->
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/themes/css/bootstrappage.css" />"
	rel="stylesheet" />

<!-- global styles -->
<link href="<c:url value="/resources/themes/css/flexslider.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/themes/css/main.css" />"
	rel="stylesheet" />

<!-- scripts -->
<script src="<c:url value="/resources/themes/js/jquery-1.7.2.min.js" />"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/themes/js/superfish.js" />"></script>
<script
	src="<c:url value="/resources/themes/js/jquery.scrolltotop.js" />"></script>
<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
</head>
<body>
	<div id="top-bar" class="container">
		<div class="row">
			<div class="span4"></div>
			<div class="span8">
				<div class="account pull-right">
					<ul class="user-menu">
						<li><a
							href="${pageContext.request.contextPath}/show/all/products">View
								Products</a></li>
						<li><a href="cart.html">Your Cart</a></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="register.html">Login</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="wrapper" class="container">
		<section class="navbar main-menu">
			<div class="navbar-inner main-menu">
				<a href="${pageContext.request.contextPath}/" class="logo pull-left"><img
					src="<c:url value="/resources/themes/images/logo.png" />"
					class="site_logo" alt=""></a>

				<%@include file="./share/nav.jsp"%>

			</div>
		</section>
		<section class="header_text sub">
			<img class="pageBanner"
				src="<c:url value="/resources/themes/images/pageBanner.png" />"
				alt="New products">
			<h4>
				<span>Products Management</span>
			</h4>
		</section>
        
        <c:if test="${not empty success}"><h2 style="color:green;">${success}</h2></c:if>
        <h2 style="color:red;">${error}</h2>
        
        <h3>Add Product</h3>
		<sf:form modelAttribute="product" action="${pageContext.request.contextPath}/management/products" method="POST">
		
		  <!-- Name -->
		      
			<label class="control-label">Product Name</label>
			<div class="controls">
			      <sf:errors path="name" element="em" />
				<sf:input type="text" placeholder="Enter product name"
					id="name" class="input-xlarge" path="name" name="name" />
			</div>
			   
			  <!-- Brand -->
				<label class="control-label">Brand Name</label>
			<div class="controls">
			    <sf:errors path="brand" element="em" />
				<sf:input type="text" name="brand" path="brand" placeholder="Enter brand name"
					id="brand" class="input-xlarge" />
			</div>
			   <!-- Description -->
			<label class="control-label">Product Description</label>
			<div class="controls">
			       <sf:errors path="description" element="em"  />
				<sf:textarea placeholder="Describe product.."
					id="description" class="input-xlarge" path="description" name="description" />
			</div>
			   <!--  Price -->
			<label class="control-label">Price</label>
			<div class="controls">
		           <sf:errors path="unitPrice" element="em"  />
				<sf:input type="text" placeholder="Product price"
					id="unitPrice" class="input-xlarge" path="unitPrice" name="unitPrice" />
			</div>
			
			<!-- Quantity -->
				<label class="control-label">Quantity</label>
			<div class="controls">
		          <sf:errors path="quantity"  element="em" />
			  
				<sf:input type="number" placeholder="Quantity"
					id="quantity" class="input-xlarge" path="quantity" name="quantity" />
			</div>
			
            <!-- Category -->
               <label class="control-label">Category</label>
			<div class="controls">
                 <sf:errors path="categoryId"  element="em" />
				<sf:select path="categoryId" id="categoryId" name="categoryId" items="${categories}" itemLabel="name" itemValue="id" />
            </div>
            <br>
            <!--  SUBMIT -->
			 <button class="btn btn-inverse" type="submit" name="submit" value="Submit" id="submit">Add Product</button>
            </div>
	     
		   <sf:hidden path="id" />
		   <sf:hidden path="code" />
		   <sf:hidden path="active" />
		   <sf:hidden path="supplierId"/>
		   <sf:hidden path="purchases" />
		   <sf:hidden path="views" /> 
		
		</sf:form>













		<!-- DO NOT TOUCH IT -->
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
					<p class="logo">
						<img src="<c:url value="/resources/themes/images/logo.png" />"
							class="site_logo" alt="">
					</p>
					<p>Shopper is a totally new shop, where you can find new
						designs and clothes. We provide best materials!</p>
					<br /> <span class="social_icons"> <a class="facebook"
						href="#">Facebook</a> <a class="twitter" href="#">Twitter</a> <a
						class="skype" href="#">Skype</a> <a class="vimeo" href="#">Vimeo</a>
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