<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Home</title>
 <base href="${pageContext.servletContext.contextPath}/">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/homeLogin-style.css'/>" type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/bootstrap.min.css'/>" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/homeLogin-style.css'/>" type="text/css">
 <script type=”text/javascript” src=”/bootstrap-5.2.3-dist/js/bootstrap.min.js”></script>
</head>
<body>
	<header>
		<a href="homeLogin.htm" class="logo">
			<img alt="" src="https://bom.so/qzmn58" style="width: 50%">
		</a>
		<div class="left">
			<ul>
			 <li><a href="#" class="browse">Browse<i class="material-icons">&#xe5cf;</i></a>
			  <ul class="sub-menu">
			  	<li><a>Paid Stories</a></li>
			  	<li><a>Editor's Picks</a></li>
			  	<li><a>The Wattys</a></li>
			  	<li><a>Adventure</a></li>
			  	<li><a>Contenporary Lit</a></li>
			  	<li><a>Divrese Lit</a></li>
			  	<li><a>Fanfiction</a></li>
			  	<li><a>Fantasy</a></li>
			 </ul>
			 </li>
			 <li><a href="#" class="community">Community<i class="material-icons">&#xe5cf;</i></a>
			  <ul class="sub-menu">
			   <li><a>Community Happennings</a></li>
			   <li><a>Winx Ambassadors</a></li>
			   <li><a>The Watty Awards</a></li>
			  </ul>
			 </li>
			 <li><input type="text" placeholder="Search..."><i class="material-icons">&#xe8b6;</i></li>
			</ul>
		</div>
		<div class="right">
			<ul>
			 <li><a href="/Web/read/index.htm" class="write">Write<i class="material-icons">&#xe5cf;</i></a>
			  <ul class="sub-menu">
			   <li><a>Create a new story</a></li>
			   <li><a>My Stories</a></li>
			   <li><a>Helpful Writer Resources</a></li>
			   <li><a>Winx Programs & Opportunities</a></li>
			   <li><a>Writing Contests</a></li>
			  </ul>
			 </li>
			 <li><a href="#" class="try" style="background: purple; color: white; border-radius: 20px; ">Try Premium</a></li>
			 <li><a href="#" class="account"><img alt="" src="https://bom.so/AENMVD" style="height: 20px; width: 20px">duyndao0107</a><i class="material-icons">&#xe5cf;</i></a>
			  <ul class="sub-menu">
			   <li><a>My Profile</a></li>
			   <li><a>Inbox</a></li>
			   <li><a>Notifications</a></li>
			   <li><a>Library</a></li>
			   <li><a>Language</a></li>
			   <li><a>Help</a></li>
			   <li><a>Settings</a></li>
			   <li><a href="home/homeNotLogin.htm">Log Out</a></li>
			  </ul>
			 </li>
			</ul>
		</div>
	</header>
	
	<form style="width: 50%; margin: 100px 0px 0px 300px" action="home/homeLogin.htm">
  <!-- 2 column grid layout with text inputs for the first and last names -->
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
        <input type="text" id="form6Example1" class="form-control" />
        <label class="form-label" for="form6Example1">First name</label>
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <input type="text" id="form6Example2" class="form-control" />
        <label class="form-label" for="form6Example2">Last name</label>
      </div>
    </div>
  </div>
  <!-- Text input -->
  <div class="form-outline mb-4">
    <input type="text" id="form6Example4" class="form-control" />
    <label class="form-label" for="form6Example4">Address</label>
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <input type="email" id="form6Example5" class="form-control" />
    <label class="form-label" for="form6Example5">Email</label>
  </div>

  <!-- Number input -->
  <div class="form-outline mb-4">
    <input type="number" id="form6Example6" class="form-control" />
    <label class="form-label" for="form6Example6">Phone</label>
  </div>

  <!-- Message input -->
  <div class="form-outline mb-4">
    <textarea class="form-control" id="form6Example7" rows="4"></textarea>
    <label class="form-label" for="form6Example7">Additional information</label>
  </div>

  <!-- Submit button -->
  <button type="submit" style="margin-left: 300px" class="btn btn-primary btn-block mb-4">Save</button>
</form>
	
	<footer>
		<div class="left">
			<ul>
			 <li><a href="#" class="paid">Paid Stories</a></li>
			 <li><a href="#" class="try">Try Premium</a></li>
			 <li><a href="#" class="get">Get The App</a></li>
			 <li><a href="#" class="lang">Language</a></li>
			 <li><a href="#" class="writer">Writer |</a></li>
			 <li><a href="#" class="business">Business</a></li>
			 <li><a href="#" class="job">Jobs</a></li>
			 <li><a href="#" class="press">Press</a></li>
			</ul>
		</div>
		<div class="right">
			<ul>
			 <li><a href="#" class="term">Terms</a></li>
			 <li><a href="#" class="privacy">Privacy</a></li>
			 <li><a href="#" class="accessibility">Accessibility</a></li>
			 <li><a href="#" class="help">Help</a></li>
			 <li><a href="#" class="copyright">© 2022 Winx</a></li>
			</ul>
		</div>
    </footer>
</body>
</html>