<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>CHAPTER DETAIL</title>
<base href="${pageContext.servletContext.contextPath}/">

<!-- Library -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
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
<link rel="stylesheet"
	href="<c:url value='/resource/styles/detailStories.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/resource/styles/general.css'/>" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="scripts/general.js"></script>
</head>
<body>
	<div class="container content">
		<div class="row pt-5">
			<div class="col-lg-3 thumb-story">
				<img src="${storyID.images }" alt="">
				<div class="fs-4 fw-bold text-justify">${storyID.title }</div>
			</div>
			<div class="col-lg-8 detail-story">
				<!-- detail-content / detail-header fs-5 fw-bold / col-lg-8 px-5 py-2-->
				<div class="shadow p-3 mb-5 bg-white rounded">
					<ul class="bg-cl-prim shadow p-3 mb-4 rounded">
						<li class="fs-4 fw-bold txt-white">Table Of Contents</li>
					</ul>
					<a class="col-lg-2 btn btn-dark d-flex justify-content-center mx-1"
						href="chapter/insert/${storyID.id }.htm"> <i
						class="fa-sharp fa-solid fa-plus m-1"></i>
						<div class="d-flex justify-content-center"> New Chapter</div>
					</a>
					<div class="part-tab px-3 py-2 row">
						<table
							class="table table-hover mt-3 al-center shadow-sm px-3 py-2 mb-
                                1 bg-white rounded"
							style="width: 100%">
							<c:forEach var="ch" items="${chapterList }">
								<tr>
									<td class="align-middle py-2 px-4" style="width: 80%"
										colspan="2">
										<div class="title fw-bold fs-5">${ch.title }</div>
									</td>
									<td class="align-middle" style="width: 10%"><a
										class="btn btn-outline-success"
										href="chapter/update/${storyID.id }/${ch.id }.htm" role="button">
											Edit </a></td>
									<td class="align-middle" style="width: 10%"><a
										class="btn btn-danger" href="writing/delete/${storyID.id }/${ch.id }.htm">
											<i class="fa-regular fa-trash-can fs-5"></i>
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>