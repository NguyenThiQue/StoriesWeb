<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Home</title>
 <base href="${pageContext.servletContext.contextPath}/">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/logIn.css'/>" type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/bootstrap.min.css'/>" type="text/css">
	
	<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/logIn.css'/>" type="text/css">
 <script type=”text/javascript” src=”/bootstrap-5.2.3-dist/js/bootstrap.min.js”></script>
 <style type="text/css">
[id$=errors]{ 
		color: red; 
 		font-style: italic; 
 	} 
</style>
</head>
<body>
	<div class="container-login">
    <div class="d-flex justify-content-center h-100">
        <div class="card-login">
            <div class="card-header">
                <div class="signin">
                    <h2 class="col-4">Sign In</h2>
                    <span><i class="fa fa-google-plus-square"></i></span>
                </div>
            </div>
            <div class="card-body">
                <form:form action="home/homeLogin.htm" modelAttribute="userentity">
                    <div class="col-form-label">User:</div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-icon"><i class="fa fa-user" style="text-align:center"></i></span>
                        </div>
                        <form:input type="text" class="form-control" placeholder="username" path="username"/>
                        <form:errors path="username"/>
                    </div>
                    <br>
                    <div class="col-form-label">Password</div>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-icon"><i class="fa fa-key"></i></span>
                        </div>
                        <form:input type="password" class="form-control" placeholder="passwword" path = "password"/>
                        <form:errors path="password"/>
                    </div>
                    <div class="check-box">
                        <input type="checkbox" class="form-check-label form-check-input"> Remember Me
                    </div>
                    <div class="button">
                        <button type="submit" name="" class="btn-warning btn-lg btn">Login</button>
                    </div>
                </form:form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center"><a href="#">Forgot your password?</a></div>
                <div class="d-flex justify-content-center"><a href="home/signUp.htm">Create an account?</a></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
