<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  


<!DOCTYPE html>
<html lang="zxx">

<head>

<!-- Title -->
<title>Register</title>

<!-- Favicon -->
<link href="<c:url value="/assets/user/images/favicon.ico"/>" rel="icon" type="image/x-icon" />

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
<link href="<c:url value="/assets/user/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />

<!-- Mobile Menu -->
<link href="<c:url value="/assets/user/css/mmenu.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/mmenu.positioning.css"/>" rel="stylesheet" type="text/css" />

<!-- Stylesheet -->
<link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet" type="text/css" />

</head>


<body>

	<!-- Start: Page Banner -->
	<section class="page-banner services-banner">
		<div class="container">
			<div class="banner-header">
				<h2>Signin</h2>
				<span class="underline center"></span>
				<p class="lead">To become a legend.</p>
			</div>
			<div class="breadcrumb">
				<ul>
					<li><a href="<c:url value="/index/"/>">Home</a></li>
					<li>Signin</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- End: Page Banner -->
	
	<!-- Start: Cart Section -->
	<div id="content" class="site-content">
		<div id="primary" class="content-area">
			<main id="main" class="site-main">
				<div class="signin-main">
					<div class="container">
						<div class="woocommerce">
							<div class="woocommerce-login">
								<div class="company-info signin-register">
									<div class="col-md-5 col-md-offset-1 border-above-dark">
										<div class="row">
											<div class="col-md-12">
												<div class="company-detail signin bg-dark margin-center">
													<div class="signin-head">
														<h2>Sign in</h2>														
														<span class="underline left"></span>
														<!--  --><p style="color:white;">${status}</p>
													</div>
													<form:form action="allbook" method="POST" modelAttribute="admin">  
														<p class="form-row form-row-first input-required">														 
															<form:input type="text" class="input-text" path="account" placeholder="Account"/>  															
														</p>
														<p class="form-row form-row-last input-required">
															<form:input type="password" class="input-text" path="password" placeholder="Password"/>  															
														</p>
														<div class="clear"></div>
														<input type="submit" value="Login" name="login" class="button btn btn-default">
														<input type="reset" value="Reset" name="Reset" class ="button btn btn-default">
														
													</form:form>
													<div class="clear"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<!-- End: Cart Section -->

	<!-- jQuery Latest Version 1.x -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>

	<!-- jQuery UI -->
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>

	<!-- jQuery Easing -->
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>

	<!-- Bootstrap -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<!-- Mobile Menu -->
	<script type="text/javascript" src="js/mmenu.min.js"></script>

	<!-- Harvey - State manager for media queries -->
	<script type="text/javascript" src="js/harvey.min.js"></script>

	<!-- Waypoints - Load Elements on View -->
	<script type="text/javascript" src="js/waypoints.min.js"></script>

	<!-- Facts Counter -->
	<script type="text/javascript" src="js/facts.counter.min.js"></script>

	<!-- MixItUp - Category Filter -->
	<script type="text/javascript" src="js/mixitup.min.js"></script>

	<!-- Owl Carousel -->
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>

	<!-- Accordion -->
	<script type="text/javascript" src="js/accordion.min.js"></script>

	<!-- Responsive Tabs -->
	<script type="text/javascript" src="js/responsive.tabs.min.js"></script>

	<!-- Responsive Table -->
	<script type="text/javascript" src="js/responsive.table.min.js"></script>

	<!-- Masonry -->
	<script type="text/javascript" src="js/masonry.min.js"></script>

	<!-- Carousel Swipe -->
	<script type="text/javascript" src="js/carousel.swipe.min.js"></script>

	<!-- bxSlider -->
	<script type="text/javascript" src="js/bxslider.min.js"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript" src="js/main.js"></script>

</body>

</html>
