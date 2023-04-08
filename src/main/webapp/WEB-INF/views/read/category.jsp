<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="cc"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/bootstrap.css'/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/bootstrap-tags.css'/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/style.css'/>" type="text/css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light headerRead">
		<div class="container">
<!-- 			<a class="navbar-brand" href="#">Navbar scroll</a> -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarScroll" aria-controls="navbarScroll"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav mr-auto my-2 my-lg-0 navbar-nav-scroll"
					style="max-height: 100px;">
					<div class="dropdown">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" data-toggle="dropdown" aria-expanded="false">
							Genres</a>

						<div class="dropdown-menu">
							<cc:forEach var="category" items="${category1 }">
								<a class="dropdown-item" href="category/${category.id}.htm?linkCategory">${category.name}</a>								
							</cc:forEach>
						</div>
					</div>

					<div class="dropdown">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" data-toggle="dropdown" aria-expanded="false">
							Viết</a>

						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">Tạo câu chuyện mới</a> <a
								class="dropdown-item" href="#">Câu chuyện của tôi</a> <a
								class="dropdown-item" href="#">Cuộc thi viết</a>
						</div>
					</div>

				</ul>
				<form class="d-flex">
					<input name="searchInputt" class="form-control mr-2" type="search"
						placeholder="Tìm kiếm" aria-label="Search">
					<button name="btnSearcht" class="btn btn-outline-success"
						type="submit">Search</button>
				</form>


<!-- 				<div class="btn-group"> -->
<!-- 					<button type="button" class="btn btn-secondary dropdown-toggle" -->
<!-- 						data-toggle="dropdown" data-display="static" aria-expanded="false"> -->
<%-- 						<img alt="" src="${applicationScope.photo }" class="img-account"> --%>
<!-- 					</button> -->
<!-- 					<div -->
<!-- 						class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left"> -->
<!-- 						<button class="dropdown-item" type="button">Tài khoản</button> -->
<!-- 						<button class="dropdown-item" type="button">Thông báo</button> -->

<!-- 					</div> -->
<!-- 				</div> -->

			</div>
		</div>
	</nav>
	<h1 class=" container display-4" style="padding-top: 72px">${categoryName.name}</h1>
	<div class="dropdown-divider"></div>
	
	<cc:forEach var="categoryItem" items="${search }">
				<a href="readDetail/${categoryItem.id }.htm?linkDetail">
					<button type="button" class="btn modal-category btn-category"
						data-toggle="modal" data-target="#exampleModal">
						<div class="card card-category">
							<img src="${categoryItem.images}"
								class="card-img-top img-category" alt="...">
							<div class="card-body">
								<h5 class="card-title card-title_category">${categoryItem.title}</h5>

								<p class="card-text card-text__category">${categoryItem.descpt}</p>
							</div>
						</div>
					</button>
				</a>
			</cc:forEach>
	
	<div class="container">
		<div class="row ">
			
			<cc:forEach var="categoryItem" items="${categoryDetail }">
				<a href="readDetail/${categoryItem.id }.htm?linkDetail">
					<button type="button" class="btn modal-category btn-category"
						data-toggle="modal" data-target="#exampleModal">
						<div class="card card-category">
							<img src="${categoryItem.images}"
								class="card-img-top img-category" alt="...">
							<div class="card-body">
								<h5 class="card-title card-title_category">${categoryItem.title}</h5>

								<p class="card-text card-text__category">${categoryItem.descpt}</p>
							</div>
						</div>
					</button>
				</a>
			</cc:forEach>
		</div>
	</div>
	<script src="<c:url value = '/resource/dist/js/jquery.slim.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/popper.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap.bundle.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap.bundle.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap-tags.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap-tags.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap-tagsinput.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/myjs.js'/> "></script>
</body>
</html>