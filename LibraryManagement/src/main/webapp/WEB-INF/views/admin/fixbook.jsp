<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<meta charset="UTF-8">
<title>Fix Book</title>
</head>

<body>

	<!-- Start: Page Banner -->
	<section class="page-banner services-banner">
		<div class="container">
			<div class="banner-header">
				<h2>Admin page</h2>
				<span class="underline center"></span>

			</div>
			<div class="breadcrumb">
				<ul>
					<li><a href="<c:url value="/admin/allbook"/>">AllBook</a></li>
					<li>FixBook</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- End: Page Banner -->


	<div id="content" class="site-content">
		<div id="primary" class="content-area">


			<div class="container">


				<div class="company-info signin-register">
					<div class="col-md-5 border-dark new-user">
						<div class="row">
							<div class="col-md-12">
								<div class="company-detail new-account bg-light margin-right">
									<div class="new-user-head">
										<h2>Book Info</h2>

										<span class="underline left"></span> <br></br>
										<h1>${status }</h1>
										<p></p>
									</div>

									<form:form class="login" action="${book.ID}" method="post"
										modelAttribute="fixbook" enctype="multipart/form-data">  
                                                        	
                                                        	Category: <form:select
											path="id_categorys">



											<c:forEach var="item" items="${categorys}">

												<form:option value="${item.ID }" label="${item.name }" />

											</c:forEach>

										</form:select>

										<br></br>

										<p class="form-row input-required">
											Name:
											<form:input type="text" class="input-text"
												value="${book.name }" path="name" />
										</p>

										<p class="form-row form-row-first input-required">
											Author:
											<form:input type="text" class="input-text"
												value="${book.author }" path="author" />
										</p>

										<p class="form-row input-required">
											ISBN:
											<form:input type="text" class="input-text"
												value="${book.ISBN }" path="ISBN" />
										</p>

										<p class="form-row input-required">
											Edition:
											<form:input type="text" class="input-text"
												value="${book.edition }" path="edition" />
										</p>

										<p class="form-row input-required">
											Publisher:
											<form:input type="text" class="input-text"
												value="${book.publisher }" path="publisher" />
										</p>

										<p class="form-row input-required">
											Length:
											<form:input type="text" class="input-text"
												value="${book.length }" path="length" />
										</p>

										<p class="form-row input-required">
											Language:
											<form:input type="text" class="input-text"
												value="${book.language }" path="language" />
										</p>

										<p class="form-row input-required">
											Image: <input type="file" name="imageFile" />
										</p>

										<p class="form-row input-required">
											Link:
											<form:input type="text" class="input-text"
												value="${book.url }" path="url" />
										</p>

										<p class="form-row input-required">
											Summary:
											<form:input type="text" class="input-text"
												value="${book.summary }" path="summary" />
										</p>

										<div class="clear"></div>

										<c:if test="${not empty LoginInfo1 }">

											<button type="submit" class="button btn btn-default">Save</button>
										</c:if>

										<div class="clear"></div>
									</form:form>

								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


</body>
