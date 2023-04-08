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
	<base href="${pageContext.servletContext.contextPath}/">
	<title>Writing Story</title>
	
	<!-- Library -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		crossorigin="anonymous">
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	
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
		href="<c:url value='/resource/styles/writeStories.css'/>" />
	<link rel="stylesheet"
		href="<c:url value='/resource/styles/general.css'/>" />
</head>
<body>
	<div class="container d-flex justify-content-center">
		${message }
		<form:form action="chapter/update/${storyID.id }.htm"
			class="form-floating col-lg-10 justify-content-center row"
			method="post" modelAttribute="updateChapter">
			<div class="chapter col-lg-10 mt-5 row">
				<form:input type="text" path="title" placeholder="Untitled Chapter"
					class="col-lg-12 text-center shadow p-3 mb-5 bg-white rounded fw-bold fs-5" />
			</div>
			<form:textarea class="shadow-none p-3 mb-3 bg-light rounded col-lg-9"
				path="contents" rows="17"></form:textarea>
			<form:input class="d-none" type="text" path="idStory"
				value="${storyID.id }"></form:input>
			<div class="d-flex justify-content-center col-lg-12 btn-submit mt-2">
				<button
					class="btn btn-danger fs-6 fw-bold shadow px-4 py-2 mb-5 rounded">Save</button>
			</div>
		</form:form>
	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</html>