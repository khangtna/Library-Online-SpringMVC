<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<meta charset="UTF-8">
<title>Delete Book</title>
</head>

<body>

	<!-- Start: Page Banner -->
	<section class="page-banner services-banner">
		<div class="container">
			<div class="banner-header">
				<h2>Admin Page</h2>
				<span class="underline center"></span>
				
			</div>
			
			<div class="breadcrumb">
			<ul>
				<li><a href="<c:url value="/admin/allbook"/>">AllBook</a></li>
			
			</ul>
			</div>
		</div>
	</section>
	<!-- End: Page Banner -->

	<!-- Start: Cart Section -->
	<div id="content" class="site-content">
		<div id="primary" class="content-area">
			<main id="main" class="site-main">
				<div class="cart-main">
					<div class="container">
						<div class="row">
							<div class="cart-head">
                                    <div class="col-xs-12 col-sm-6 account-option">
                                        
                                        <ul>
                                            
                                        </ul>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 account-option">
                                        <ul>
                                            
                                            
                                            <c:if test="${not empty LoginInfo1 }">
												<li><a href="<c:url value="/admin/addbook"/>"  class="btn btn-dark-gray">ADD BOOK</a></li>
											</c:if>
                                              
                                           		
                                        </ul>
                                    </div>
                                   
                                </div>
							<div class="col-md-12">
							<div class="page type-page status-publish hentry">
									<div class="entry-content">
										<div class="woocommerce table-tabs" id="responsiveTabs">
											
											<div class="tab-content">
											
												<div id="sectionA" class="tab-pane fade in active">
													<h1>${status }</h1>
													 <form>
														<table class="table table-bordered shop_table cart">
															<thead>
								
																<tr>
																	<th class="product-name">&nbsp;</th>
																	<th class="product-name">Title</th>
																	
																	<th class="product-price">Info</th>
																	<th class="product-quantity">Action</th>
																</tr>
															</thead>
															<tbody>
															
															<c:forEach var="item" items ="${books}">
																<tr class="cart_item">
																	<td data-title="cbox" class="product-cbox"><span>
																			
																	</span></td>
																	<td data-title="Product" class="product-name"><span
																		class="product-thumbnail"> <a href="#"><img
																				src="<c:url value="/assets/user/images/img_book/${ item.img }"/>"
																				alt="cart-product-1"></a>
																	</span> <span class="product-detail"> <a href="#"><strong>${item.name }</strong></a> 
																					<span><strong>Author:</strong>${item.author }</span>
																				 <span><strong>ISBN:</strong>${item.ISBN }</span> 
																	</span></td>
																	<td data-title="Product" class="product-name">
																		
																			<span><strong>Edition:</strong>${item.edition }</span> 
																			<br></br>
																			<span><strong>Publisher:</strong>${item.publisher }</span> 
																			<br></br>
																			<span><strong>Length:</strong>${item.length }</span> 
																			<br></br>
																			<span><strong>Language:</strong>${item.language }</span> 
																	
																	</td>
																	
																	<td data-title="action" class="product-action">
																	
																		  <c:if test="${not empty LoginInfo1 }">
																			<ul>
																				<a href="<c:url value="/admin/fixbook/${ item.ID }"/>" class="btn btn-dark-gray">Edit</a>
																				<br></br>
																				<a href="<c:url value="/admin/delbook/${ item.ID }"/>" class="btn btn-dark-gray">Delete</a>

																			</ul>
																		</c:if>
                                              
																	</td>
																	
																	
																</tr>
																</c:forEach>
																	
																
															</tbody>
														</table>
													</form> 
													
												</div>
												<div id="sectionB" class="tab-pane fade in">
													<h5>Lorem Ipsum Dolor</h5>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour, or randomised words which
														don't look even slightly believable. If you are going to
														use a passage of Lorem Ipsum, you need to be sure there
														isn't anything embarrassing hidden in the middle of text.
														All the Lorem Ipsum generators on the Internet tend to
														repeat predefined chunks as necessary, making this the
														first true generator on the Internet.</p>
												</div>
												<div id="sectionC" class="tab-pane fade in">
													<h5>Lorem Ipsum Dolor</h5>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour, or randomised words which
														don't look even slightly believable. If you are going to
														use a passage of Lorem Ipsum, you need to be sure there
														isn't anything embarrassing hidden in the middle of text.
														All the Lorem Ipsum generators on the Internet tend to
														repeat predefined chunks as necessary, making this the
														first true generator on the Internet.</p>
												</div>
												<div id="sectionD" class="tab-pane fade in">
													<h5>Lorem Ipsum Dolor</h5>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour, or randomised words which
														don't look even slightly believable. If you are going to
														use a passage of Lorem Ipsum, you need to be sure there
														isn't anything embarrassing hidden in the middle of text.
														All the Lorem Ipsum generators on the Internet tend to
														repeat predefined chunks as necessary, making this the
														first true generator on the Internet.</p>
												</div>
												<div id="sectionE" class="tab-pane fade in">
													<h5>Lorem Ipsum Dolor</h5>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour, or randomised words which
														don't look even slightly believable. If you are going to
														use a passage of Lorem Ipsum, you need to be sure there
														isn't anything embarrassing hidden in the middle of text.
														All the Lorem Ipsum generators on the Internet tend to
														repeat predefined chunks as necessary, making this the
														first true generator on the Internet.</p>
												</div>
												<div id="sectionF" class="tab-pane fade in">
													<h5>Lorem Ipsum Dolor</h5>
													<p>There are many variations of passages of Lorem Ipsum
														available, but the majority have suffered alteration in
														some form, by injected humour, or randomised words which
														don't look even slightly believable. If you are going to
														use a passage of Lorem Ipsum, you need to be sure there
														isn't anything embarrassing hidden in the middle of text.
														All the Lorem Ipsum generators on the Internet tend to
														repeat predefined chunks as necessary, making this the
														first true generator on the Internet.</p>
												</div>
											</div>
										</div>
									</div>
									<!-- .entry-content -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
	</div>
	<!-- End: Cart Section -->

</body>
