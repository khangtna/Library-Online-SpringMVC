<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>

	<!-- Start: Slider Section -->
	<div data-ride="carousel" class="carousel slide"
		id="home-v1-header-carousel">

		<!-- Carousel slides -->
		<div class="carousel-inner">
			<div class="item active">
				<figure>
					<img alt="Home Slide"
						src="<c:url value="/userTemplate/images/header-slider/home-v1/header-slide.jpg"/>" />
				</figure>
				<div class="container">
					<div class="carousel-caption">
						<h3>Online Learning Anytime, Anywhere!</h3>
						<h2>Discover Your Roots</h2>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humor, or randomized words.</p>
						<div class="slide-buttons hidden-sm hidden-xs">
							<a href="#" class="btn btn-primary">Read More</a> <a href="#"
								class="btn btn-default">Purchase</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<figure>
					<img alt="Home Slide"
						src="<c:url value="/userTemplate/images/header-slider/home-v1/header-slide.jpg"/>" />
				</figure>
				<div class="container">
					<div class="carousel-caption">
						<h3>Online Learning Anytime, Anywhere!</h3>
						<h2>Discover Your Roots</h2>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humor, or randomized words.</p>
						<div class="slide-buttons hidden-sm hidden-xs">
							<a href="#" class="btn btn-primary">Read More</a> <a href="#"
								class="btn btn-default">Purchase</a>
						</div>
					</div>
				</div>
			</div>
			<div class="item">
				<figure>
					<img alt="Home Slide"
						src="<c:url value="/userTemplate/images/header-slider/home-v1/header-slide.jpg" />" />
				</figure>
				<div class="container">
					<div class="carousel-caption">
						<h3>Online Learning Anytime, Anywhere!</h3>
						<h2>Discover Your Roots</h2>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humor, or randomized words.</p>
						<div class="slide-buttons hidden-sm hidden-xs">
							<a href="#" class="btn btn-primary">Read More</a> <a href="#"
								class="btn btn-default">Purchase</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#home-v1-header-carousel"
			data-slide="prev"></a> <a class="right carousel-control"
			href="#home-v1-header-carousel" data-slide="next"></a>
	</div>
	<!-- End: Slider Section -->

	<!-- Start: Welcome Section -->
	<section class="welcome-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="welcome-wrap">
						<div class="welcome-text">
							<h2 class="section-title">Welcome to the libraria</h2>
							<span class="underline left"></span>
							<p class="lead">The standard chunk of Lorem Ipsum used since</p>
							<p>There are many variations of passages of Lorem Ipsum
								available, but the majority have suffered alteration in some
								form, by injected humor, or randomized words which don't look
								even slightly believable. If you are going to use a passage of
								Lorem Ipsum, you need to be sure there isn't anything
								embarrassing hidden in the middle of text. All the Lorem Ipsum
								generators on the Internet tend to repeat predefined chunks as
								necessary, making this the first true generator on the Internet.
								It uses a dictionary of over 200 Latin words, combined with a
								handful of model sentence structures, to generate Lorem Ipsum
								which looks reasonable. The generated Lorem Ipsum is therefore
								always free from repetition, injected humor, or
								non-characteristic words etc.</p>
							<a class="btn btn-primary" href="#">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="facts-counter">
						<ul>
							<li class="bg-light-green">
								<div class="fact-item">
									<div class="fact-icon">
										<i class="ebook"></i>
									</div>
									<span>eBooks<strong class="fact-counter">45780</strong></span>
								</div>
							</li>
							<li class="bg-green">
								<div class="fact-item">
									<div class="fact-icon">
										<i class="eaudio"></i>
									</div>
									<span>eAudio<strong class="fact-counter">32450</strong></span>
								</div>
							</li>
							<li class="bg-red">
								<div class="fact-item">
									<div class="fact-icon">
										<i class="magazine"></i>
									</div>
									<span>Magazine<strong class="fact-counter">14450</strong></span>
								</div>
							</li>
							<li class="bg-blue">
								<div class="fact-item">
									<div class="fact-icon">
										<i class="videos"></i>
									</div>
									<span>Videos<strong class="fact-counter">32450</strong></span>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="welcome-image"></div>
	</section>
	<!-- End: Welcome Section -->

	<!-- Start: Category Filter -->
	<section class="category-filter section-padding">
		<div class="container">
			<div class="center-content">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<h2 class="section-title">Check Out The New Releases</h2>
						<span class="underline center"></span>
						<p class="lead">The standard chunk of Lorem Ipsum used since
							the 1500s is reproduced below for those interested.</p>
					</div>
				</div>
			</div>
			<div class="filter-buttons">
				<div class="filter btn" data-filter="all">All Releases</div>
				<div class="filter btn" data-filter=".adults">Adults</div>
				<div class="filter btn" data-filter=".kids-teens">Kids &amp;
					Teens</div>
				<div class="filter btn" data-filter=".video">Video</div>
				<div class="filter btn" data-filter=".audio">Audio</div>
				<div class="filter btn" data-filter=".books">Books</div>
				<div class="filter btn" data-filter=".magazines">Magazines</div>
			</div>
		</div>
		<div id="category-filter">
			<ul class="category-list">
				<li class="category-item adults">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-01.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item kids-teens">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-02.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item video">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-03.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item audio">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-04.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item books">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-05.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item magazines">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-06.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item adults">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-07.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
				<li class="category-item kids-teens">
					<figure>
						<img
							src="<c:url value="/userTemplate/images/category-filter/home-v1/category-filter-img-08.jpg"/>"
							alt="New Releaase" />
						<figcaption class="bg-orange">
							<div class="info-block">
								<h4>The Great Gatsby</h4>
								<span class="author"><strong>Author:</strong> F. Scott
									Fitzgerald</span> <span class="author"><strong>ISBN:</strong>
									9781581573268</span>
								<div class="rating">
									<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
								</div>
								<p>It is a long established fact that a reader will be
									distracted by the readable content of a page when looking at
									its layout. Pellentesque dolor turpis, pulvinar varius.</p>
								<a href="#">Read More <i class="fa fa-long-arrow-right"></i></a>
								<ol>
									<li><a href="#"> <i class="fa fa-shopping-cart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-heart"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-envelope"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-share-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-search"></i>
									</a></li>
								</ol>
							</div>
						</figcaption>
					</figure>
				</li>
			</ul>
			<div class="center-content">
				<a href="#" class="btn btn-primary">View More</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</section>
	<!-- Start: Category Filter -->

	<!-- Start: Features -->
	<section class="features">
		<div class="container">
			<ul>				
				<li class="bg-light-green">
					<div class="feature-box">
						<i class="light-green"></i>
						<h3>eBooks</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Pellentesque dolor turpis, pulvinar varius dui id, convallis
							iaculis eros.</p>
						<a class="light-green" href="#"> View Selection <i
							class="fa fa-long-arrow-right"></i>
						</a>
					</div>
				</li>
				<li class="bg-blue">
					<div class="feature-box">
						<i class="blue"></i>
						<h3>DVDs</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Pellentesque dolor turpis, pulvinar varius dui id, convallis
							iaculis eros.</p>
						<a class="blue" href="#"> View Selection <i
							class="fa fa-long-arrow-right"></i>
						</a>
					</div>
				</li>
				<li class="bg-red">
					<div class="feature-box">
						<i class="red"></i>
						<h3>Magazines</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Pellentesque dolor turpis, pulvinar varius dui id, convallis
							iaculis eros.</p>
						<a class="red" href="#"> View Selection <i
							class="fa fa-long-arrow-right"></i>
						</a>
					</div>
				</li>
			</ul>
		</div>
	</section>
	<!-- End: Features -->

	<!-- Start: Our Community Section -->
	<section class="community-testimonial">
		<div class="container">
			<div class="text-center">
				<h2 class="section-title">Words From our Community</h2>
				<span class="underline center"></span>
				<p class="lead">Lorem ipsum dolor sit amet, consectetur
					adipiscing elit.</p>
			</div>
			<div class="owl-carousel">
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-01.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Adrey Pachai <small>(Student
								)</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-02.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Maria B <small>(Student )</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-01.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Adrey Pachai <small>(Student
								)</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-02.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Maria B <small>(Student )</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-01.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Adrey Pachai <small>(Student
								)</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-02.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Maria B <small>(Student )</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-01.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Adrey Pachai <small>(Student
								)</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="single-testimonial-box">
					<div class="top-portion">
						<img
							src="<c:url value="/userTemplate/images/testimonial-image-02.jpg"/>"
							alt="Testimonial Image" />
						<div class="user-comment">
							<div class="arrow-left"></div>
							<blockquote cite="#">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Praesent urna magna, rhoncus eget
								commodo et, dignissim non nulla. Sed sit amet vestibulum ex.
								Donec dolor velit</blockquote>
						</div>
						<div class="clear"></div>
					</div>
					<div class="bottom-portion">
						<a href="#" class="author"> Maria B <small>(Student )</small>
						</a>
						<div class="social-share-links">
							<ul>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-skype"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- End: Our Community Section -->

</body>