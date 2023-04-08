<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Writing Page</title>
	<base href="${pageContext.servletContext.contextPath}/">
	
	<!-- Library -->
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		crossorigin="anonymous" />
		
	<!-- Web Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
		rel="stylesheet">
		
	<!-- Icon  -->
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css"
		integrity="sha512-FA9cIbtlP61W0PRtX36P6CGRy0vZs0C2Uw26Q1cMmj3xwhftftymr0sj8/YeezDnRwL9wtWw8ZwtCiTDXlXGjQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
		
	<!-- CSS styles -->
	<link rel="stylesheet" href="<c:url value='/resources/styles/viewStories.css'/>"/>
	<link rel="stylesheet" href="<c:url value='/resources/styles/general.css'/>"/>
</head>

<body>
	<header class="header"> </header>
	<div class="container">
		<div class="row">
			<div class="col-lg-9">
				<div class="row">
					<div class="col-lg-10 text-left fs-2 fw-bold">My Stories</div>
					<div class="col-lg-2 py-2 btn-orange">
						<a class="btn primary-btn-style fs-6 fw-bold px-4 py-2" href="writing/insertDetail.htm"
							role="button"> <i class="fa-sharp fa-solid fa-plus"></i> New
							Story
						</a>
					</div>
				</div>
				<table class="stories-list">
					<tr>
						<td>
						<c:forEach var="st" items="${stories}">
							<div class="card-custom">
								<div class="row py-3 no-gutters">
									<div class="col-lg-3 col-sm-3 row">
										<img src="${st.images }" class="thumb-image rounded-start"
											alt="...">
									</div>
									<div class="col-lg-6 col-sm-6">
										<div class="card-body">
											<h5 class="card-title fw-bold">${st.title }</h5>
											<p class="card-text fw-bold text-muted">2 Parts</p>
											<p class="card-text">
												<small class="text-muted">${st.descpt }</small>
											</p>
										</div>
									</div>
									<div class="col-lg-3 col-sm-3">
										<div class="btn-orange">
											<a class="btn primary-btn-style fs-6 fw-bold py-2 row"
												href="writing/insertDetail.htm" role="button"> <span
												class="text-continue px-2 py-2">Continuing Writing</span> <span
												class="icon-dropdown px-3 py-2"> <i
													class="fa-sharp fa-solid fa-chevron-down"></i>
											</span>
											</a>
										</div>
										<div class="delete-stories justify-content-center">
											<i class="fa-regular fa-trash-can fs-5"></i>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</html>