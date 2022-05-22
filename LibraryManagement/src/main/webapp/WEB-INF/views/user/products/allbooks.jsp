<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book</title>

</head>
<body>



	<!-- Start: Page Banner -->
	<section class="page-banner services-banner">
		<div class="container">
			<div class="banner-header">
				<h2>Books Listing</h2>
				<span class="underline center"></span>
				<p class="lead">Proin ac eros pellentesque dolor pharetra tempo.</p>
			</div>
			<div class="breadcrumb">
				<ul>
					<li><a href="<c:url value="/"/>">Home</a></li>
					<li>Books</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- End: Page Banner -->

	<!-- Start: Products Section -->
	<div id="content" class="site-content">
		<div id="primary" class="content-area">
			<main id="main" class="site-main">
				<div class="books-full-width">
					<div class="container">
						

						<div class="filter-options margin-list">
							<div class="row">
								<div class="col-md-3 col-sm-3">
									
								</div>
								<div class="col-md-3 col-sm-3">
									
								</div>
								<div class="col-md-2 col-sm-3">
									
								</div>
								<div class="col-md-2 col-sm-3">
									
								</div>
								<div class="col-md-2 col-sm-12 pull-right">
									
								</div>
							</div>
						</div>
						
						
						
						
						<div class="booksmedia-fullwidth">
											
							<ul>
								<c:forEach var="item" items="${books }" varStatus="loop" >
								
								<li>
									
									<figure>
										<a href="<c:url value="/book-detail/${item.ID }"/> "><img
											src="<c:url value="/assets/user/images/img_book/${ item.img }"/>"
											alt="Book"></a>
										<figcaption>
											<header>
												<h4>
													<a href="books-media-detail-v2.html">${ item.name} </a>
												</h4>
												<p>
													<strong>Author:</strong> ${ item.author } 
												</p>
												<p>
													<strong>ISBN:</strong> ${item.ISBN }
												</p>
											</header>
											<p>${item.summary } </p>
											<div class="actions">

											</div>
										</figcaption>
									</figure>
								</li>
								
								
							</c:forEach>
							</ul>
							</div>
						
						
						
						<nav class="navigation pagination text-center">
							<h2 class="screen-reader-text">Posts navigation</h2>
							<div class="nav-links">
							
							<a class="prev page-numbers" href="#."><i
									class="fa fa-long-arrow-left"></i> Previous</a> 
									
							<c:forEach var="item" begin="1" end="${paginatesInfo.totalPage }" varStatus="loop" >
								<c:if test="${(loop.index ) == paginatesInfo.currentPage }" >
													
									<a class="page-numbers current" href="<c:url value="/books/${ idcategory }/${ loop.index }"/>">${ loop.index }</a> 
								</c:if>	
									
								<c:if test="${(loop.index ) != paginatesInfo.currentPage }" >
									<a class="page-numbers" href="<c:url value="/books/${ idcategory }/${ loop.index }"/>">${ loop.index }</a>
									
								</c:if>		
								</c:forEach>
								
								
							</div>
						</nav>
					</div>
					
				</div>
			</main>
		</div>
	</div>
	<!-- End: Products Section -->

	<!-- Start: Social Network -->
	<section class="social-network section-padding">
		<div class="container">
			<div class="center-content">
				<h2 class="section-title">Follow Us</h2>
				<span class="underline center"></span>
				<p class="lead">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</p>
			</div>
			<ul>
				<li><a class="facebook" href="#" target="_blank"> <span>
							<i class="fa fa-facebook-f"></i>
					</span>
				</a></li>
				<li><a class="twitter" href="#" target="_blank"> <span>
							<i class="fa fa-twitter"></i>
					</span>
				</a></li>
				<li><a class="google" href="#" target="_blank"> <span>
							<i class="fa fa-google-plus"></i>
					</span>
				</a></li>
				<li><a class="rss" href="#" target="_blank"> <span>
							<i class="fa fa-rss"></i>
					</span>
				</a></li>
				<li><a class="linkedin" href="#" target="_blank"> <span>
							<i class="fa fa-linkedin"></i>
					</span>
				</a></li>
				<li><a class="youtube" href="#" target="_blank"> <span>
							<i class="fa fa-youtube"></i>
					</span>
				</a></li>
			</ul>
		</div>
	</section>
	<!-- End: Social Network -->

</body>
</html>