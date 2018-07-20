<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
	<head>
		<meta charset="utf-8">
		<title>Online Shopping Spring</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">      
		<link href="<c:url value="/resources/bootstrap/css/bootstrap-responsive.min.css"/>" rel="stylesheet">
		
		<link href="<c:url value="/resources/themes/css/bootstrappage.css"/>" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="<c:url value="/resources/themes/css/flexslider.css"/>" rel="stylesheet"/>
		<link href="<c:url value="/resources/themes/css/main.css"/>" rel="stylesheet"/>

		<!-- scripts -->
		<script src="<c:url value="/resources/themes/js/jquery-1.7.2.min.js"/>"></script>
		<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>				
		<script src="<c:url value="/resources/themes/js/superfish.js"/>"></script>	
		<script src="<c:url value="/resources/themes/js/jquery.scrolltotop.js"/>"></script>
				
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="<c:url value="js/respond.min.js"/>"></script>
			
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
					<a href="${pageContext.request.contextPath}/home" class="logo pull-left"><img src="<c:url value="/resources/themes/images/logo.png" />" class="site_logo" alt=""></a>
					
					<%@include file="./share/nav.jsp" %>
					
				</div>
			</section>
			<section  class="homepage-slider" id="home-slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<img src="<c:url value="/resources/themes/images/carousel/banner-1.jpg" />" alt="" />
						</li>
						<li>
							<img src="<c:url value="/resources/themes/images/carousel/banner-2.jpg" />" alt="" />
							<div class="intro">
								<h1>Mid season sale</h1>
								<p><span>Up to 50% Off</span></p>
								<p><span>On selected items online and in stores</span></p>
							</div>
						</li>
					</ul>
				</div>			
			</section>
			<section class="header_text">
				Best quality of our products is what we are. Hope you will find something especially for you!
				<br/>
			</section>
			<section class="main-content">
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Feature <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">												
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="${pageContext.request.contextPath}/show/1/product"><img src="<c:url value="/resources/themes/images/ladies/5BC7CA86EF.jpg" />"  alt="" /></a></p>
														<a href="${pageContext.request.contextPath}/show/1/product" class="title">Black dress</a><br/>
														<a href="${pageContext.request.contextPath}/show/1/product" class="category">Woman dress</a>
														<p class="price">$17.25</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="${pageContext.request.contextPath}/show/2/product"><img src="<c:url value="/resources/themes/images/ladies/0AC7CA86EF.jpg" />" alt="" /></a></p>
														<a href="${pageContext.request.contextPath}/show/2/product" class="title">Floral Dress</a><br/>
														<a href="${pageContext.request.contextPath}/show/2/product" class="category">Woman</a>
														<p class="price">$32.50</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="${pageContext.request.contextPath}/show/3/product"><img src="<c:url value="/resources/themes/images/ladies/3FD051B74B.jpg" />" alt="" /></a></p>
														<a href="${pageContext.request.contextPath}/show/3/product" class="title">Polo Dress</a><br/>
														<a href="${pageContext.request.contextPath}/show/3/product" class="category">Woman</a>
														<p class="price">$14.20</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="${pageContext.request.contextPath}/show/4/product"><img src="<c:url value="/resources/themes/images/ladies/0D221F21CB.jpg" /> " alt="" /></a></p>
														<a href="${pageContext.request.contextPath}/show/4/product" class="title">Grey Blouse</a><br/>
														<a href="${pageContext.request.contextPath}/show/4/product" class="category">Woman</a>
														<p class="price">$31.45</p>
													</div>
												</li>
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
												<li class="span3">
													<div class="product-box">
														<p><a href="home/product"><img src="<c:url value="/resources/themes/images/mens/1.jpg" />" alt="" /></a></p>
														<a href="home/product" class="title">Know exactly</a><br/>
														<a href="home/products" class="category">Quis nostrud</a>
														<p class="price">$22.30</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="home/product"><img src="<c:url value="/resources/themes/images/mens/2.jpg" />" alt="" /></a></p>
														<a href="home/product" class="title">Ut wisi enim ad</a><br/>
														<a href="home/products" class="category">Commodo consequat</a>
														<p class="price">$40.25</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="home/product"><img src="<c:url value="/resources/themes/images/mens/3.jpg" />" alt="" /></a></p>
														<a href="home/product" class="title">You think water</a><br/>
														<a href="home/products" class="category">World once</a>
														<p class="price">$10.45</p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="home/product"><img src="<c:url value="/resources/themes/images/mens/4.jpg" />" alt="" /></a></p>
														<a href="home/product" class="title">Quis nostrud exerci</a><br/>
														<a href="home/products" class="category">Quis nostrud</a>
														<p class="price">$35.50</p>
													</div>
												</li>																																	
											</ul>
										</div>
									</div>							
								</div>
							</div>						
						</div>
						<br/>
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-2" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">												
												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
											</ul>
										</div>
										<div class="item">
											<ul class="thumbnails">
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>
												<li class="span3">
													<div class="product-box">
														<p><a href="#"><img src="<c:url value="/resources/themes/images/cloth/" />" alt="" /></a></p>
														<a href="#" class="title">Unavailable</a><br/>
														<a href="#" class="category"></a>
														<p class="price"></p>
													</div>
												</li>																																	
											</ul>
										</div>
									</div>							
								</div>
							</div>						
						</div>
						
						
						
							<!-- IMPORTANT PART OF JSP PAGE! DO NOT TOUCH IT --> <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
					
					
					
						<div class="row feature_box">						
							<div class="span4">
								<div class="service">
									<div class="responsive">	
										<img src="<c:url value="/resources/themes/images/feature_img_2.png" />" alt="" />
										<h4>MODERN <strong>DESIGN</strong></h4>
										<p>We provide best clothes which are up to fashion.</p>									
									</div>
								</div>
							</div>
							<div class="span4">	
								<div class="service">
									<div class="customize">			
										<img src="<c:url value="/resources/themes/images/feature_img_1.png" />" alt="" />
										<h4>FREE <strong>SHIPPING</strong></h4>
										<p>No more paid ships. Today every is free!</p>
									</div>
								</div>
							</div>
							<div class="span4">
								<div class="service">
									<div class="support">	
										<img src="<c:url value="/resources/themes/images/feature_img_3.png" />" alt="" />
										<h4>24/7 LIVE <strong>SUPPORT</strong></h4>
										<p>We are accessible all day.</p>
									</div>
								</div>
							</div>	
						</div>		
					</div>				
				</div>
			</section>
			<section class="our_client">
				<h4 class="title"><span class="text">Manufactures</span></h4>
				<div class="row">					
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/14.png" />"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/35.png" />"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/1.png" />"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/2.png" />"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/3.png" />"></a>
					</div>
					<div class="span2">
						<a href="#"><img alt="" src="<c:url value="/resources/themes/images/clients/4.png" />"></a>
					</div>
				</div>
			</section>
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="#">Homepage</a></li>  
							<li><a href="#">About Us</a></li>
							<li><a href="#">Contac Us</a></li>
							<li><a href="#">Your Cart</a></li>
							<li><a href="#">Login</a></li>							
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
							<a class="facebook" href="https://www.facebook.com/">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>@ Copyright 2018 Template </span>
			</section>
		</div>
		<script src="<c:url value="/resources/themes/js/common.js" />"></script>
		<script src="<c:url value="/resources/themes/js/jquery.flexslider-min.js" />"></script>
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>