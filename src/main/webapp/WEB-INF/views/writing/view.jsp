<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>VIEW</title>
	<base href="${pageContext.servletContext.contextPath}/">
	<!-- Library -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <!-- Web Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap"
        rel="stylesheet">
    <!-- Icon  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.css"
        integrity="sha512-FA9cIbtlP61W0PRtX36P6CGRy0vZs0C2Uw26Q1cMmj3xwhftftymr0sj8/YeezDnRwL9wtWw8ZwtCiTDXlXGjQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        
    <!-- CSS styles -->
	<link rel="stylesheet" href="<c:url value='/resources/styles/general.css'/>"/>
</head>
<body>
	<div class="container mt-5">
        <div class="row  shadow p-3 mb-5 bg-white rounded">
            <h1 class="col-lg-10 fw-bold my-3">MY STORIES</h1>
            <a class="col-lg-2 btn btn-dark d-flex justify-content-center my-3" href="writing/insert.htm"> 
                <i class="fa-sharp fa-solid fa-plus m-2"></i> 
                <div class="d-flex justify-content-center m-1 fw-bold"> New Story </div>
            </a>
        </div>
        <div style="margin-top: 5vh;"></div>
        <table class="table table-hover al-center">
	        <thead>
	        	<tr class="bg-cl-prim bg-dark text-white" style="background-color: #ececec;">
	                <th style="width:5%">#</th>
	                <th style="width:10%">Image</th>
	                <th colspan="2" style="width:60%">Story</th>
	                <th style="width:15%"></th>
	                <th style="width:5%"></th>
	                <th style="width:10%"></th>
            	</tr>
	        </thead>
            
            <c:forEach var="st" items="${stories }">
                <tr class="shadow-sm p-3 mb-5 bg-white rounded">
                    <td class="align-middle" style="width:5%">${st.id }</td>
                    <td class="align-middle" style="width:10%">
                        <img src="${st.images }" alt="" width="60%">
                    </td>
                    <td class="align-middle" style="width:60%" colspan="2">
                        <div class="title fw-bold"> ${st.title }</div>
                        <div class="desc"> ${st.descpt }</div>
                    </td>
                    <td class="align-middle" style="width:15%">
                        <%-- <a class="btn btn-outline-primary" href="chapter/index/${st.id }.htm" role="button"> 
                            Continuing Writing
                        </a> --%>
                        <a class="btn btn-outline-primary" href="chapter/index/${st.id}.htm" role="button"> 
                            Continuing Writing
                        </a>
                    </td>
                    <td class="align-middle" style="width:5%">
                        <a class="btn btn btn-outline-success" href="writing/update/${st.id }.htm" role="button"> 
                            Edit
                        </a>
                    </td>
                    <td class="align-middle" style="width:10%">
                        <a class="btn btn-danger" href="writing/delete/${st.id }.htm"> 
                            <i class="fa-regular fa-trash-can"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>