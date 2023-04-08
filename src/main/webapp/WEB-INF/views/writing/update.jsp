<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>UPDATE STORY</title>
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
		href="<c:url value='/resource/styles/detailStories.css'/>">
	<link rel="stylesheet"
		href="<c:url value='/resource/styles/general.css'/>" />
	
	<!-- Scripts -->
	<link class="jsbin"
		href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css"
		rel="stylesheet" type="text/css" />
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script class="jsbin"
		src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/scripts/general.js'/>"></script>
</head>
<body>
	<div class="container h-page">
		${message }
		<h2 class="d-flex justify-content-center mt-5 fw-bold">UPDATE STORY
		</h2>
		<div class="row mt-2 justify-content-center">
			<form:form action="writing/update.htm" modelAttribute="updateStory"
				class="mt-4 justify-content-center col-lg-8 shadow px-5 py-3 bg-white rounded">
				<div class="detail-item-part row align-items-center">
					<label class="col-lg-4 fs-5 fw-bold" for="">Title</label>
					<form:input class="col-lg-8 pt-2 pb-2 border-input" type="text"
						path="title" placeholder="Enter your Title" />
				</div>
				<div class="detail-item-part row align-items-center">
					<label class="col-lg-4 fs-5 fw-bold" for="">Description</label>
					<form:input class="col-lg-8 pt-2 pb-2 border-input" type="text"
						path="descpt" placeholder="Describe your story" />
				</div>
				<div class="detail-item-part row align-items-center">
					<label class="col-lg-4 fs-5 fw-bold" for="">Main Character</label>
					<form:input class="col-lg-8 pt-2 pb-2 border-input" type="text"
						path="character" placeholder="Who's your character?" />
				</div>
				<div class="detail-item-part row">
					<label class="col-lg-4 fs-5 fw-bold" for="">Category</label>
					<form:select class="col-lg-8 pt-2 pb-2" path="category.id"
						items="${genres }" itemValue="id" itemLabel="name">
					</form:select>
				</div>
				<div class="detail-item-part row align-items-center">
					<label class="col-lg-4 fs-5 fw-bold" for="">Target Audience</label>
					<form:select class="col-lg-8 pt-2 pb-2" path="audience.id"
						items="${audience }" itemValue="id" itemLabel="name">
					</form:select>
				</div>
				<div class="detail-item-part row align-items-center">
					<label class="col-lg-4 fs-5 fw-bold" for="">Story Thumb</label>
					<!-- <div class="col-lg-4 fs-5 fw-bold">Choose an image</div> -->
					<form:input class="col-lg-8 pt-2 pb-2" type="file" path="images"
						accept="image/jpg, image/png" />
					<br>
				</div>
				<div class="d-flex justify-content-center btn-orange mt-5 mb-2">
					<button class="btn btn-primary">Save</button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>