<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="cc"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read</title>
<base href="${pageContext.servletContext.contextPath}/">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/bootstrap.css'/>"
	type="text/css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.6.12/dist/css/splide.min.css">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/style.css'/>" type="text/css">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light headerRead" style="margin-top: -9px">
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
					<input name="searchInput" class="form-control mr-2" type="search"
						placeholder="Tìm kiếm" aria-label="Search">
					<button name="btnSearch" class="btn btn-outline-success"
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
	<div class="container">

		
		<div class="dropdown-divider"></div>
		<div class="content">
			<ol class="list-group list-group-numbered list-group-readed-home" style=" margin-top: 72px;">
				<cc:forEach var="seCh" items="${search }">
					<li
						class="list-group-item d-flex justify-content-between align-items-start list-group-readed-item readDetail">
						<a href="readDetail/${seCh.id }.htm?linkDetail" style="text-decoration: none;" >
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
			<br />
			
			<h4>Tác phẩm mới trong tuần qua</h4>
			<div>
				<cc:forEach var="nb" items="${storynew }">
					<a class="card mb-3 card_ousatnding card-noibat" href="readDetail/${nb.id }.htm?linkDetail" 
						style="max-width: 540px;">

						<div class="row no-gutters card-home-noibat">

							<div class="col-md-4">
								<img src="${nb.images}" alt="..." class="imgnoibat">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<h5 class="card-title">${nb.title}</h5>
									<p class="card-text">${nb.descpt}</p>
								</div>
							</div>
						</div>

					</a>
				</cc:forEach>
			</div>
			<br />
			<div class="content" style="padding-bottom: 12px">
			<h4>Đề xuất</h4> 			
			<div class="splide">			
				<div class="splide__track">
					<div class="splide__list">
						<cc:forEach var="storyx" items="${storydx }">
						<a class="col-sm-3 splide__slide m-2 slide-item-card" 
						href="readDetail/${storyx.id }.htm?linkDetail"
							style="width: 20%; text-decoration: none;">							
							<div class="card card-item-slider">							
								<img src="${storyx.images }"
									class="img-item-slider" alt="...">								
							</div>					
						</a>						
					</cc:forEach>
					</div>
				</div>
						
			</div>
				
			<br />
			<h4>Các tác phẩm</h4>
			<ol class="list-group list-group-numbered list-group-readed-home">
				<cc:forEach var="story" items="${storys }">
					<li
						class="list-group-item d-flex justify-content-between align-items-start list-group-readed-item readDetail">
						<a href="readDetail/${story.id }.htm?linkDetail" style="text-decoration: none;" >
								<div class="ms-2 me-auto">
									<div class="card mb-3 card-readed-home"
										style="max-height: 120px">
										<div class="row g-0">
											<div class="col-md-4 img-readed-home">
												<img src="${story.images }"
													class="img-fluid rounded-start img-readed-home" alt="...">
											</div>
											<div class="col-md-8">
												<div class="card-body">
													<h5 class="card-title">${story.title}</h5>
													<p class="card-text desc-title-read">${story.descpt}</p>

												</div>
											</div>
										</div>
									</div>
								</div>
<!-- 						</a> <span class="badge rounded-pill img-readed-delele"> <img -->
<%-- 							src="${applicationScope.delete }" --%>
<!-- 							class="img-fluid rounded-start img-readed-home" alt="..." -->
<!-- 							style="max-width: 20px; max-height: 20px;"> -->
<!-- 					</span> -->
					</li>
				</cc:forEach>				
			</ol>
				
			</div>

		</div>
	</div>
	<!-- 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="<c:url value = '/resource/dist/js/jquery.slim.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/popper.min.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap.bundle.js'/> "></script>
	<script src="<c:url value = '/resource/dist/js/bootstrap.min.js'/> "></script>
	<script
		src="<c:url value = '/resource/dist/js/bootstrap.bundle.min.js'/> "></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@splidejs/splide@3.6.12/dist/js/splide.min.js"></script>
	<script src="<c:url value = '/resource/dist/js/myjs.js'/> "></script>


	<script>
		var splide = new Splide('.splide', {
			type : 'loop',
			perPage : 3,
			rewind : true,
		});

		splide.mount();
	</script>
</body>
</html>