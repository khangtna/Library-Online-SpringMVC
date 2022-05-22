
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta charset="UTF-8">
<title>Book detail</title>
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
                        <li>Books </li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- End: Page Banner -->

        <!-- Start: Products Section -->
        <div id="content" class="site-content">
            <div id="primary" class="content-area">
                <main id="main" class="site-main">
                    <div class="booksmedia-detail-main">
                        <div class="container">
                            <div class="row">
                                
                            </div>
                            <div class="booksmedia-detail-box">
                                <div class="detailed-box">
                                    <div class="col-xs-12 col-sm-5 col-md-3">
                                        <div class="post-thumbnail">
                                           
                                            <img src="<c:url value="/assets/user/images/img_book/${book.img }"/>" alt="Book Image">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-6">
                                        <div class="post-center-content">
                                            <h2>${ book.name }</h2>
                                            <br></br>
                                            <p><strong>Author:</strong> ${ book.author }</p>
                                            <p><strong>-</strong> </p>
                                            <p><strong>ISBN:</strong> ${ book.ISBN }</p>
                                            <p><strong>- </strong> </p>
                                            <p><strong>Edition:</strong> ${ book.edition }</p>
                                            <p><strong>- </strong> </p>
                                            <p><strong>Publisher:</strong> ${ book.publisher }</p>
                                            <p><strong>- </strong> </p>
                                            <p><strong>Length:</strong> ${ book.length } pages</p>
                                            <p><strong>- </strong> </p>
                                            <p><strong>Language:</strong> ${ book.language }</p>
											<p><strong>- </strong> </p>
                                            
                                  
                                            
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-3 ">
                                        <div class="post-right-content">
                                            <h4>Link ebook</h4>
                                         
                                            
                                            <c:if test="${not empty LoginInfo }">
												<a href="${book.url }" class="btn btn-dark-gray">Ebook</a> 
											</c:if>
                                          
                                          <c:if test="${empty LoginInfo }">
												<a href="#" class="btn btn-dark-gray">Sign in to get the link.</a> 
											</c:if>
                                          
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                                <p><strong>Summary:</strong> ${book.summary } </p>

                                <div class="table-tabs" id="responsiveTabs">
                                   
                                    <div class="tab-content">
                                        <div id="sectionA" class="tab-pane fade in active">
                                            
                                        </div>
                                        <div id="sectionB" class="tab-pane fade in">
                                            <h5>Lorem Ipsum Dolor</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>
                                        <div id="sectionC" class="tab-pane fade in">
                                            <h5>Lorem Ipsum Dolor</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>
                                        <div id="sectionD" class="tab-pane fade in">
                                            <h5>Lorem Ipsum Dolor</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>                                                    
                                        <div id="sectionE" class="tab-pane fade in">
                                            <h5>Lorem Ipsum Dolor</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>                                                    
                                        <div id="sectionF" class="tab-pane fade in">
                                            <h5>Lorem Ipsum Dolor</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <!-- End: Products Section -->
        <div class="booksmedia-fullwidth">
            <div class="container">
                <h2 class="section-title text-center">Popular Items</h2>
                    <span class="underline center"></span>
                    <p class="lead text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        
                        <ul class="popular-items-detail-v2">
                            
                            <c:set var="countlist" value="${bookByIDCategory.size() }" />
                            <c:if test="${bookByIDCategory.size() >6 }" >
                            	<c:set var="countlist" value="6" />
                            </c:if>
                            
                            <c:forEach var="item" items="${bookByIDCategory }" begin="1" end="${ countlist}" varStatus="loop" >
                            
                            <li>

                                <figure>
                                    <img src="<c:url value="/assets/user/images/img_book/${item.img }"/>" alt="Book">
                                    <figcaption>
                                        <header>
                                            <h4><a href="#.">${item.name }</a></h4>
                                            <p><strong>Author:</strong>  ${item.author}</p>
                                            <p><strong>ISBN:</strong>  ${item.ISBN }</p>
                                        </header>
                                        <p>${item.summary }</p>
                                        <div class="actions">
                                            
                                        </div>
                                    </figcaption>
                                </figure>                                                
                           </li>
                           </c:forEach>
                        </ul>
            </div>
        </div>

        <!-- Start: Social Network -->
        <section class="social-network section-padding">
            <div class="container">
                <div class="center-content">
                    <h2 class="section-title">Follow Us</h2>
                    <span class="underline center"></span>
                    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                <ul>
                    <li>
                        <a class="facebook" href="#" target="_blank">
                            <span>
                                <i class="fa fa-facebook-f"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="twitter" href="#" target="_blank">
                            <span>
                                <i class="fa fa-twitter"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="google" href="#" target="_blank">
                            <span>
                                <i class="fa fa-google-plus"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="rss" href="#" target="_blank">
                            <span>
                                <i class="fa fa-rss"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="linkedin" href="#" target="_blank">
                            <span>
                                <i class="fa fa-linkedin"></i>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a class="youtube" href="#" target="_blank">
                            <span>
                                <i class="fa fa-youtube"></i>
                            </span>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!-- End: Social Network -->

</body>
