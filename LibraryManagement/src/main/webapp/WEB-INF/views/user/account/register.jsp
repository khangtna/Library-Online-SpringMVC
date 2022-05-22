<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>

		<!-- Start: Page Banner -->
        <section class="page-banner services-banner">
            <div class="container">
                <div class="banner-header">
                    <h2>Signin</h2>
                    <span class="underline center"></span>
                    <p class="lead">Proin ac eros pellentesque dolor pharetra tempo.</p>
                </div>
                <div class="breadcrumb">
                    <ul>
                        <li><a href="index-2.html">Home</a></li>
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
                                                    <div class="company-detail bg-dark margin-left">
                                                        <div class="signin-head">
                                                            <h2>Sign in</h2>
                                                            
                                                            <span class="underline left"></span>
                                                            <p style="color:white;">${status1}</p>
                                                        </div>
                                                        <form:form action="dang-nhap" method="POST" modelAttribute="user">  
														<p class="form-row form-row-first input-required">														 
															<form:input type="text" class="input-text" path="email" placeholder="Email"/>  															
														</p>
														<p class="form-row form-row-last input-required">
															<form:input type="password" class="input-text" path="password" placeholder="Password"/>  															
														</p>
														<div class="clear"></div>
														<div class="password-form-row">
															<p class="form-row input-checkbox">
																<input type="checkbox" value="forever" id="rememberme"
																	name="rememberme"> <label class="inline"
																	for="rememberme">Remember me</label>
															</p>
															<p class="lost_password">
																<a href="#">Lost your Password?</a>
															</p>
														</div>
														<input type="submit" value="Login" name="login" class="button btn btn-default">
														<input type="reset" value="Reset" name="Reset" class ="button btn btn-default">
														
													</form:form>
													<div class="clear"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5 border-above-dark new-user">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="company-detail new-account bg-light margin-right">
                                                        <div class="new-user-head">
                                                            <h2>Create New Account</h2>
                                                            <span class="underline left"></span>
                                                            <p style="color:red;">${status}</p>
                                                            <p></p>
                                                        </div>
                                                        
                                                        <form:form action="dang-ky" method="POST" modelAttribute="user">  
														<p class="form-row input-required">
																						
															<form:input type="text" class="input-text" path="user" placeholder="Username"/>  															
														</p>
														<p class="form-row form-row-first input-required">
																										
															<form:input type="text" class="input-text" path="email" placeholder="Email"/>
														</p>
														<p class="form-row input-required">				
															<form:input type="password" class="input-text" path="password" placeholder="Password"/>
														</p>
														<div class="clear"></div>
														<input type="submit" value="Signup" name="signup" class="button btn btn-default">
														<input type="reset" value="Reset" name="signup" class="button btn btn-default">
														
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
