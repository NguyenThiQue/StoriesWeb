<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Home</title>
 <base href="${pageContext.servletContext.contextPath}/">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/bootstrap.min.css'/>" type="text/css">
	
	<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/logIn.css'/>" type="text/css">
 <script type=”text/javascript” src=”/bootstrap-5.2.3-dist/js/bootstrap.min.js”></script>
 
 <style type="text/css">
	*[id$=errors]{
		color: red;
		font-style: italic;
	}
</style>
 
</head>
<body>
  <section class="vh-100" style="background-color: #eee;">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-lg-12 col-xl-11">
          <div class="card text-black" style="border-radius: 25px;">
            <div class="card-body p-md-5">
              <div class="row justify-content-center">
                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
  
                  <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
  
                  <form:form action="home/homeLogin.htm" class="mx-1 mx-md-4" modelAttribute = "user">
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                      	<div>Your name</div>
                        <form:input type="text" id="form3Example1c" class="form-control" path = "name"/>
						<form:errors path="name"/>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                      	<div>Your Email</div>
                        <form:input type="email" id="form3Example3c" class="form-control" path = "email"/>
						<form:errors path="email"/>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                      	<div>Password</div>
                        <form:input type="password" id="form3Example4c" class="form-control" path = "password"/>
                        
                        <form:errors path="password"/>
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                      	<div>Repeat your password</div>
                        <form:input type="password" id="form3Example4cd" class="form-control" path="repassword"/>
                        <form:errors path="repassword"/>
                      </div>
                    </div>
  
                    <div class="form-check d-flex justify-content-center mb-5">
                      <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                      <label class="form-check-label" for="form2Example3">
                        I agree all statements in <a href="#!">Terms of service</a>
                      </label>
                    </div>
  
                    <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                      <button type="submit" class="btn btn-primary btn-lg">Register</button>
                    </div>
<div>
			
		</div>
  
                  </form:form>
  
                </div>
                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
  
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                    class="img-fluid" alt="Sample image">
  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>