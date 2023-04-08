<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<base href="${pageContext.servletContext.contextPath}/">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/homeLogin-style.css'/>"
	type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/bootstrap.min.css'/>"
	type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/homeLogin-style.css'/>"
	type="text/css">

<script type=”text/javascript”
	src=”/bootstrap-5.2.3-dist/js/bootstrap.min.js”></script>
</head>
<body>
	<header>
		<a href="homeLogin.htm" class="logo"> <img alt=""
			src="https://bom.so/qzmn58" style="width: 50%">
		</a>
		<div class="left">
			<ul>
				<li><a href="#" class="browse">Browse<i
						class="material-icons">&#xe5cf;</i></a>
					<ul class="sub-menu">
						<li><a>Paid Stories</a></li>
						<li><a>Editor's Picks</a></li>
						<li><a>The Wattys</a></li>
						<li><a>Adventure</a></li>
						<li><a>Contenporary Lit</a></li>
						<li><a>Divrese Lit</a></li>
						<li><a>Fanfiction</a></li>
						<li><a>Fantasy</a></li>
					</ul></li>
				<li><a href="#" class="community">Community<i
						class="material-icons">&#xe5cf;</i></a>
					<ul class="sub-menu">
						<li><a>Community Happennings</a></li>
						<li><a>Winx Ambassadors</a></li>
						<li><a>The Watty Awards</a></li>
					</ul></li>
				<li><input type="text" placeholder="Search..."><i
					class="material-icons">&#xe8b6;</i></li>
			</ul>
		</div>
		<div class="right">
			<ul>
				<li><a href="writing/view.htm" class="write">Write<i
						class="material-icons">&#xe5cf;</i></a>
					<ul class="sub-menu">
						<li><a href="read/index.htm">Read</a></li>
					</ul></li>
				<li><a href="#" class="try"
					style="background: purple; color: white; border-radius: 20px;">Try
						Premium</a></li>
				<li><a href="#" class="account"><img alt=""
						src="https://bom.so/AENMVD" style="height: 20px; width: 20px">duyndao0107</a><i
					class="material-icons">&#xe5cf;</i></a>
					<ul class="sub-menu">
						<li><a href="home/userEdit.htm">My Profile</a></li>
						<li><a>Inbox</a></li>
						<li><a>Notifications</a></li>
						<li><a>Library</a></li>
						<li><a>Language</a></li>
						<li><a>Help</a></li>
						<li><a>Settings</a></li>
						<li><a href="home/homeNotLogin.htm">Log Out</a></li>
					</ul></li>
			</ul>
			
		</div>
		
	</header>

	<div class="1"
		style="display: flex; flex-direction: row; justify-content: center; margin-top: 200px; border-bottom: solid 1px rgb(238, 238, 238); margin-left: 200px; margin-right: 200px">
		<div style="margin-right: 400px">
			<h1>Welcome home, duyndao0107!</h1>
		</div>
		<svg width="17" height="17" viewBox="0 0 24 24" fill="none"
			stroke="#222222" stroke-width="2" aria-hidden="true"
			stroke-linecap="round" stroke-linejoin="round" class="">
			<g>
			<g fill="none" fill-rule="nonzero" stroke="#222"
				stroke-linecap="round" stroke-width="2" transform="translate(1 1)">
  	 <path d="M0 2h17M0 8.5h17M0 15.5h17"></path>
  	 <circle cx="8" cy="2" r="2" fill="#222"></circle>
  	 <circle cx="15" cy="9" r="2" fill="#222"></circle>
  	 <circle cx="8" cy="16" r="2" fill="#222"></circle>
	 </g></g></svg>
		<div style="margin-bottom: 50px">
			<p>Content Preferences</p>
		</div>
	</div>
	<div class="2"
		style="display: flex; flex-direction: column; justify-content: center; background: linear-gradient(180deg, rgba(196, 196, 196, 0) 0, rgba(111, 111, 111, .06) 100%)">
		<div style="margin-left: 250px; margin-top: 30px; margin-bottom: 30px">
			<h1>Because You Like Adventure</h1>
			<h3 style="color: gray">Based on your favorite genres</h3>
		</div>
		<div
			style="display: flex; flex-direction: row; justify-content: center">
			<div>
				<img
					style="position: absolute; border-radius: 5px; height: 316px; width: 200px; margin-left: 100px"
					alt="" src="https://bom.so/8vFUPi">
			</div>
			<div style="margin-top: 60px">
				<div class="info"
					style="border: solid 1px rgb(238, 238, 238); border-radius: 5px; padding-left: 300px; padding-right: 300px; padding-top: 30px; padding-bottom: 100px; margin-bottom: 100px">
					<h2 style="margin: 10px">Iruma! Rimuru-sensei gọi cậu kìa!!</h2>
					<p style="margin: 10px">Vào một ngày đẹp trời, Rimuru chạy đi
						làm giáo viên~</p>
					<div style="display: flex; flex-direction: row; margin: 10px">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 10px; margin: 10px; color: gray">adventure</p>
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 10px; margin: 10px; color: gray">iruma</p>
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 10px; margin: 10px; color: gray">fanfiction</p>
					</div>
				</div>
			</div>
		</div>
		<ul id="slider">
			<li>
				<div
					style="display: flex; flex-direction: row; justify-content: center">
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/lRZAZU">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">fantasy</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/8GbXLa">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">fairytail</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/0Nnktr">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">darkharry</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/0XtnvQ">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">romance</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
							alt="" src="https://bom.so/YrzJgO">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">pets</p>
					</div>
			</li>
			<li>
				<div
					style="display: flex; flex-direction: row; justify-content: center">
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/YrzJgO">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">pets</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/zxKjnT">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">action</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/RRMEko">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">tensei</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/gRBNhD">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">rimuru</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
							alt="" src="https://bom.so/7JcHw0">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">dn</p>
					</div>
				</div>
			</li>
		</ul>

		<script type="text/javascript">
		// Slide every slideDelay seconds
	      const slideDelay = 3000;

	      const dynamicSlider = document.getElementById("slider");

	      var curSlide = 0;
	      window.setInterval(()=>{
	        curSlide++;
	        if (curSlide === dynamicSlider.childElementCount) {
	          curSlide = 0;
	        }

	        // Actual slide
	        dynamicSlider.firstElementChild.style.setProperty("margin-left", "-" + curSlide + "00%");
	      }, slideDelay);
 		</script>

	</div>
	<div class="3"
		style="display: flex; flex-direction: column; justify-content: center; background: linear-gradient(180deg, rgba(196, 196, 196, 0) 0, rgba(111, 111, 111, .06) 100%)">
		<div style="margin-left: 250px; margin-top: 30px; margin-bottom: 30px">
			<h1>Because You Like Horror</h1>
			<h3 style="color: gray">Based on your favorite genres</h3>
		</div>
		<!-- Slideshow container -->
		<div class="slideshow-container">

			<!-- Full-width images with number and caption text -->
			<div class="mySlides fade">
				<div
					style="display: flex; flex-direction: row; justify-content: center">
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/KiXQe2">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">fantasy</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/XrYbqO">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">fairytail</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/dCWx5w">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">darkharry</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/8w2hmq">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">romance</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
							alt="" src="https://bom.so/s244gB">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">pets</p>
					</div>
				</div>
			</div>
			<div class="mySlides fade">
				<div
					style="display: flex; flex-direction: row; justify-content: center">
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/dw47zc">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">pets</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/UzLnlL">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">action</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/Dq8NVi">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">tensei</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
							alt="" src="https://bom.so/NnBHcR">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">rimuru</p>
					</div>
					<div>
						<img
							style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
							alt="" src="https://bom.so/KreOR3">
						<p
							style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">dn</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a class="next"
			onclick="plusSlides(1)">&#10095;</a> <br>

		<!-- The dots/circles -->
		<div style="text-align: center">
			<span class="dot" onclick="currentSlide(1)"></span> <span class="dot"
				onclick="currentSlide(2)"></span>
		</div>
		<script>
      let slideIndex = 1;
 	  showSlides(slideIndex);

	// Next/previous controls
	function plusSlides(n) {
  		showSlides(slideIndex += n);
	}

	// Thumbnail image controls
	function currentSlide(n) {
  		showSlides(slideIndex = n);
	}

	function showSlides(n) {
  		let i;
  		let slides = document.getElementsByClassName("mySlides");
  		let dots = document.getElementsByClassName("dot");
  		if (n > slides.length) {slideIndex = 1}
  		if (n < 1) {slideIndex = slides.length}
  		for (i = 0; i < slides.length; i++) {
    	slides[i].style.display = "none";
  	}
  	for (i = 0; i < dots.length; i++) {
    	dots[i].className = dots[i].className.replace(" active", "");
  	}
  	slides[slideIndex-1].style.display = "block";
  	dots[slideIndex-1].className += " active";
	}
    </script>
	</div>
	<div class="4"
		style="display: flex; flex-direction: column; justify-content: center; background: linear-gradient(180deg, rgba(196, 196, 196, 0) 0, rgba(111, 111, 111, .06) 100%)">
		<div style="margin-left: 250px; margin-top: 30px; margin-bottom: 30px">
			<h1>Because You Like Fantasy</h1>
			<h3 style="color: gray">Based on your favorite genres</h3>
		</div>
		<div
			style="display: flex; flex-direction: row; justify-content: center">
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/UlQ0o9">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">iruma</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/fj7jl7">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">12chomsao</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/lRZAZU">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">adventure</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/0QEIt9">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">yđộc</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
					alt="" src="https://bom.so/lnxAJm">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">hint</p>
			</div>
		</div>
		<div
			style="display: flex; flex-direction: row; justify-content: center">
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/lnxAJm">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">hint</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/8GbXLa">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">rimuru</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/4fiEJP">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">btsfanfic</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 10px"
					alt="" src="https://bom.so/b8Azdu">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">action</p>
			</div>
			<div>
				<img
					style="border-radius: 5px; height: 316px; width: 200px; margin-right: 5px"
					alt="" src="https://bom.so/cxgfFe">
				<p
					style="background-color: rgb(238, 238, 238); border-radius: 20px; padding: 5px; text-align: center; margin: 10px; color: gray">dungeons</p>
			</div>
		</div>
	</div>

	<!-- Next and previous buttons -->
	<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	<a class="next" onclick="plusSlides(1)">&#10095;</a>
	<br>

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