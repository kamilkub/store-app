    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Online Shopping Spring</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		
		<!-- bootstrap -->
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">      
		<link href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css" />" rel="stylesheet">		
		<link href="<c:url value="/resources/themes/css/bootstrappage.css" />" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="<c:url value="/resources/themes/css/main.css" />" rel="stylesheet"/>
		<link href="<c:url value="/resources/themes/css/jquery.fancybox.css" />" rel="stylesheet"/>
				
		<!-- scripts -->
		<script src="<c:url value="/resources/themes/js/jquery-1.7.2.min.js" />"></script>
		<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js" />"></script>				
		<script src="<c:url value="/resources/themes/js/superfish.js" />"></script>	
		<script src="<c:url value="/resources/themes/js/jquery.scrolltotop.js" />"></script>
		<script src="<c:url value="/resources/themes/js/jquery.fancybox.js" />"></script>
				
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="<c:url value="js/respond.min.js" />"></script>
	
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
							<li><a href="cart.html">Your Cart</a></li>
							<li><a href="${pageContext.request.contextPath}/management/products">Add product</a></li>
							<li><a href="${pageContext.request.contextPath}/registration">Check Out</a></li>				
							<li><a href="${pageContext.request.contextPath}/login">Login</a></li>			
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="${pageContext.request.contextPath}/" class="logo pull-left"><img src="<c:url value="/resources/themes/images/logo.png" />"class="site_logo" alt=""></a>
					
					
					
					<%@include file="./share/nav.jsp" %>
					
					
				</div>
			</section>
			<section class="header_text sub">
			<img class="pageBanner" src="<c:url value="/resources/themes/images/pageBanner.png" />" alt="New products" >
				<h4><span>Product Detail</span></h4>
			</section>
			<c:if test="${product.quantity == 0}">
			      <h1 style="color:red;margin-bottom:20px;font-size:35px;">Not available</h1>
			</c:if>
			<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
								<a href="/resources/themes/images/ladies/${product.code}.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="<c:url value="/resources/themes/images/ladies/${product.code}.jpg" />"></a>												
								<br>
								<br>
							</div>
							<div class="span5">
								<address>
								    <strong>Name:</strong> <span>${product.name}</span><br>
									<strong>Brand:</strong> <span>${product.brand}</span><br>
									<strong>Product Category:</strong> <span>${category.name}</span><br>				
									<strong>Available:</strong> <span>${product.quantity}</span><br>					
									<strong>Views:</strong> <span>${product.views}</span><br>									
								</address>									
								<h4><strong>Price: ${product.unitPrice} PLN</strong></h4>
							</div>
							<div class="span5">
								<form class="form-inline" action="${pageContext.request.contextPath}/cart/add/${product.id}/product">
									<p>&nbsp;</p>
									<label>Number:</label>
									<input type="text" class="span1" placeholder="1">
									<c:choose>
									<c:when test="${product.quantity == 0}">
									<button class="btn btn-inverse" type="submit" disabled>Add to cart</button>
									</c:when>
									 <c:otherwise>
									     <button class="btn btn-inverse" type="submit">Add to cart</button>
									 </c:otherwise>
									</c:choose>
								</form>
							</div>							
						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									<li class=""><a href="#profile">Additional Information</a></li>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">${product.description}</div>
									<div class="tab-pane" id="profile">
										<table class="table table-striped shop_attributes">	
											<tbody>
												<tr class="">
													<th>Size</th>
													<td>Large, Medium, Small, X-Large</td>
												</tr>		
												<tr class="alt">
													<th>Colours</th>
													<td>Black, Gray, Flowers</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>							
							</div>						
							<div class="span9">	
								<br>
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails listing-products">
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/" />"></a><br/>
														<a href="product_detail.html" class="title">TITLE</a><br/>
														<a href="#" class="category">CATEGORY</a>
														<p class="price">PRICE</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/" />"></a><br/>
														<a href="product_detail.html" class="title">TITLE</a><br/>
														<a href="#" class="category">CATEGORY</a>
														<p class="price">PRICE</p>
													</div>
												</li>       
												<li class="span3">
													<div class="product-box">												
														<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/ladies/" />"></a><br/>
														<a href="product_detail.html" class="title"></a><br/>
														<a href="#" class="category"></a>
														<p class="price">PRICE</p>
													</div>
												</li>												
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails listing-products">      
												<li class="span3">
													<div class="product-box">												
														<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/ladies/" />"></a><br/>
														<a href="product_detail.html"></a><br/>
														<a href="#" class="category"></a>
														<p class="price">PRICE</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="#"><img alt="" src="<c:url value="/resources/themes/images/ladies/" />"></a><br/>
														<a href="product_detail.html" class="title"></a><br/>
														<a href="#" class="category"></a>
														<p class="price">PRICE</p>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="span3 col">
						<div class="block">	
							<ul class="nav nav-list">
								<li class="nav-header">SUB CATEGORIES</li>
								<li><a href="#">Watches</a></li>
								<li class="active"><a href="#">Dresses</a></li>
								<li><a href="#">Jackets</a></li>
								<li><a href="#">Shirts</a></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
							</ul>
							<br/>
							<ul class="nav nav-list below">
								<li class="nav-header">MANUFACTURES</li>
								<li><a href="#">Calvin&Klein</a></li>
								<li><a href="#">H&M</a></li>
								<li><a href="#">Tommy Hilfiger</a></li>
								<li><a href="#">Glamour</a></li>
							</ul>
						</div>
						<div class="block">
							<h4 class="title">
								<span class="pull-left"><span class="text">Randomize</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
							</h4>
							<div id="myCarousel" class="carousel slide">
								<div class="carousel-inner">
									<div class="active item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">
													<span class="sale_tag"></span>												
													<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/ladies/0D221F21CB.jpg" />"></a><br/>
													<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
													<a href="#" class="category">Suspendisse aliquet</a>
													<p class="price">$261</p>
												</div>
											</li>
										</ul>
									</div>
									<div class="item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">												
													<a href="product_detail.html"><img alt="" src="<c:url value="/resources/themes/images/ladies/3FD051B74B.jpg" />"></a><br/>
													<a href="product_detail.html" class="title">Tempor sem sodales</a><br/>
													<a href="#" class="category">Urna nec lectus mollis</a>
													<p class="price">$134</p>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="block">								
							<h4 class="title"><strong>Best</strong> Seller</h4>								
							<ul class="small-product">
								<li>
									<a href="#" title="Praesent tempor sem sodales">
										<img src="<c:url value="/resources/themes/images/ladies/1.jpg" />" alt="Praesent tempor sem sodales">
									</a>
									<a href="#">Black Dress</a>
								</li>
								<li>
									<a href="#" title="Luctus quam ultrices rutrum">
										<img src="<c:url value="/resources/themes/images/ladies/2.jpg" />" alt="Luctus quam ultrices rutrum">
									</a>
									<a href="#">Floral Dress</a>
								</li>
								<li>
									<a href="#" title="Fusce id molestie massa">
										<img src="<c:url value="/resources/themes/images/ladies/3.jpg" />" alt="Fusce id molestie massa">
									</a>
									<a href="#">Polo Dress</a>
								</li>   
							</ul>
						</div>
					</div>
				</div>
			</section>	
			
			
			<!-- DO NOT DELETE THIS -->		
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
						<p class="logo"><img src="<c:url value="/resources/themes/images/ladies/logo.png" />" class="site_logo" alt=""></p>
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
				<span>@Copyright 2018 KAMIL</span>
			</section>
		</div>
		<script src="<c:url value="/resources/themes/js/common.js" />"></script>
		<script>
			$(function () {
				$('#myTab a:first').tab('show');
				$('#myTab a').click(function (e) {
					e.preventDefault();
					$(this).tab('show');
				})
			})
			$(document).ready(function() {
				$('.thumbnail').fancybox({
					openEffect  : 'none',
					closeEffect : 'none'
				});
				
				$('#myCarousel-2').carousel({
                    interval: 2500
                });								
			});
		</script>
    </body>
</html>