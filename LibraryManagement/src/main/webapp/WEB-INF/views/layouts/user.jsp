<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<!-- Meta -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1">

<!-- Title -->
<title><decorator:title default="Master-Layout" /></title>

<!-- Favicon -->
<link href="<c:url value="/assets/user/images/favicon.ico" />"
	rel="icon" type="image/x-icon" />

<!-- Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
<link href="<c:url value="/assets/user/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />

<!-- Mobile Menu -->
<link href="<c:url value="/assets/user/css/mmenu.css" />"
	rel="stylesheet" type="text/css" />
<link href="<c:url value="/assets/user/css/mmenu.positioning.css" />"
	rel="stylesheet" type="text/css" />

<!-- Stylesheet -->
<link href="<c:url value="/assets/user/style.css" />" rel="stylesheet"
	type="text/css" />


<script src="<c:url value="js/html5shiv.min.js"/>"></script>
<script src="<c:url value="js/respond.min.js"/>"></script>

</head>

<body>

	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	
	
	<decorator:body /> 

	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>


	<!-- jQuery Latest Version 1.x -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery-1.12.4.min.js"/>"></script>

	<!-- jQuery UI -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery-ui.min.js"/>"></script>

	<!-- jQuery Easing -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/jquery.easing.1.3.js"/>"></script>

	<!-- Bootstrap -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>


	<!-- Mobile Menu -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/mmenu.min.js"/>"></script>


	<!-- Harvey - State manager for media queries -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/harvey.min.js"/>"></script>


	<!-- Waypoints - Load Elements on View -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/waypoints.min.js"/>"></script>


	<!-- Facts Counter -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/facts.counter.min.js"/>"></script>


	<!-- MixItUp - Category Filter -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/mixitup.min.js"/>"></script>


	<!-- Owl Carousel -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/owl.carousel.min.js"/>"></script>

	<!-- Accordion -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/accordion.min.js"/>"></script>

	<!-- Responsive Tabs -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/responsive.tabs.min.js"/>"></script>

	<!-- Responsive Table -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/responsive.table.min.js"/>"></script>

	<!-- Masonry -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/masonry.min.js"/>"></script>

	<!-- Carousel Swipe -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/carousel.swipe.min.js"/>"></script>

	<!-- bxSlider -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/bxslider.min.js"/>"></script>

	<!-- Custom Scripts -->
	<script type="text/javascript"
		src="<c:url value="/assets/user/js/main.js"/>"></script>

</body>


</html>

