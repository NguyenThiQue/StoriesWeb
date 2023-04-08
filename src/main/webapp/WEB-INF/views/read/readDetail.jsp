<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="cc"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<cc:forEach var="category" items="${category }">
								<a class="dropdown-item" href="category/${category.id}.htm?linkCategory">${category.name}</a>								
							</cc:forEach>
						</div>
					</div>

					<div>
						<a class="btn btn-secondary dropdown-toggle" href="writing/view.htm">
							Writing</a>
					</div>
					

				</ul>
				<form class="d-flex">
					<input name="searchInput" class="form-control mr-2" type="search"
						placeholder="Tìm kiếm" aria-label="Search">
					<button name="btnSearch" class="btn btn-outline-success" type="submit">Search</button>
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
	
	
	<ol class="list-group list-group-numbered list-group-readed-home">
				<cc:forEach var="seCh" items="${search }">
					<li
						class="list-group-item d-flex justify-content-between align-items-start list-group-readed-item readDetail">
						<a href="read/index" style="text-decoration: none;" >
								<div class="ms-2 me-auto">
									<div class="card mb-3 card-readed-home"
										style="max-height: 120px">
										<div class="row g-0">
											<div class="col-md-4 img-readed-home">
												<img src="${seCh.images }"
													class="img-fluid rounded-start img-readed-home" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">${seCh.title}</h5>
													<p class="card-text desc-title-read">${seCh.descpt}</p>

												</div>
											</div>
										</div>
									</div>
								</div>
								</a>
					</li>
				</cc:forEach>				
			</ol>
	
	<div style="background-color: #e1edee; margin-top: -2px;" >
		<div class="" style="width: 70rem; text-align: center; background-color: #e1edee;">
			<div class="card-body" style="width: 70rem; margin-top: 56px">
				<h5 class="card-title" style="text-align: center;">${detail.title} </h5>
			</div>
		</div>

		<div class="container">

			<div class="row justify-content-md-center">
			

					<div class="col-md-auto">
					<div class="card" data-spy="scroll" data-target="#navbar-example2"
						data-offset="0"
						style="width: 40rem; height: 444px; overflow-y: scroll; position: relative;">
						<div class="card-body">
							<p class="card-text">
								${detail.descpt} 
							</p>
							
						</div>
					</div>

				</div>
				
				
				<div class="col col-lg-2">
					<div class="card" style="width: 16rem;">
						<img src="${detail.images} " class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${detail.title} </h5>
							
							
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	

		<script src="<c:url value = '/resource/dist/js/jquery.slim.min.js'/> "></script>
		<script src="<c:url value = '/resource/dist/js/popper.min.js'/> "></script>
		<script
			src="<c:url value = '/resource/dist/js/bootstrap.bundle.js'/> "></script>
		<script src="<c:url value = '/resource/dist/js/bootstrap.min.js'/> "></script>
		<script
			src="<c:url value = '/resource/dist/js/bootstrap.bundle.min.js'/> "></script>
		<script src="<c:url value = '/resource/dist/js/bootstrap-tags.js'/> "></script>
		<script
			src="<c:url value = '/resource/dist/js/bootstrap-tags.min.js'/> "></script>
		<script
			src="<c:url value = '/resource/dist/js/bootstrap-tagsinput.min.js'/> "></script>
		<script src="<c:url value = '/resource/dist/js/myjs.js'/> "></script>
</body>
</html>