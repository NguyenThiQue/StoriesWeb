<%@ page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>Home</title>
 <base href="${pageContext.servletContext.contextPath}/">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/homeNotLogin-style.css'/>" type="text/css">
<link rel="stylesheet"
	href="<c:url value = '/bootstrap-5.2.3-dist/css/bootstrap.min.css'/>" type="text/css">
	<link rel="stylesheet"
	href="<c:url value = '/resource/dist/css/homeNotLogin-style.css'/>" type="text/css">
 <script type=”text/javascript” src=”/bootstrap-5.2.3-dist/js/bootstrap.min.js”></script>
 
</head>
<body>
	<header>
	 <a href="home/homeNotLogin.htm" class="logo">
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
			<li><a href="home/logIn.htm" class="login">Log in</a></li>
		</ul>
	 </div>
	 <script src="https://code.jquery.com/jquery-3.6.3.js"></script>
	 <script>
	  $(document).ready(function(){
		  //Tìm các li có sub-menu và thêm vào nó class has-child
		  $(".sub-menu").parent('li').addClass("has-child");
	  });
	 </script>
	</header>
	
	<div class="container">
		<div class="one">
		 	<h1>Hi, we're Winx.</h1>
		 	<img alt="" src="https://bom.so/m6aS2s">
			<h5><b>The world's most-loved social storytelling platform</b></h5>
			<h6>Winx connects a global community of 90 million readers <br> and writers through the power of story.</h6>
			<button><a href="read/index.htm" style="text-decoration: none; color: #ffffff"><b>Start Reading</b></a></button>
			<button><a href="writing/view.htm" style="text-decoration: none; color: #ffffff"><b>Start Writing</b></a></button>
		</div>
	</div>
	<br><br>
	<div class="two">
		<div class="header-two"><p><b>See Your Story...</b></p></div>
		 <div id="items-two">
		 	<div class="items">
		 	  <h4><b>Get produced to movie or film</b></h4>
			  <img alt="" src="https://bom.so/Taxj3R">
		 	</div>
			<div class="items">
		 	  <h4><b>Get adapted to a TV series</b></h4>
			  <img alt="" src="https://bom.so/0WLPAg">
		 	</div>
		 	<div class="items">
		 	  <h4><b>Get published</b></h4>
			  <img alt="" src="https://bom.so/sBz0oq">
		 	</div>
		 </div>
	</div>
	<div class="three">
		<div>
		 <div class="img-three"><img alt="" src="https://bom.so/78DsMc"></div>
		 <div class="info-three">
		 	<h1>Winx Studios</h1>
			<h3><b>Your original story could be the next big hit</b></h3>
			<h5>Winx Studios discovers untapped, unsigned, and talented<br>
				 writers on Winx and connects them to global multi-media<br>
				  entertainment companies. Winx Studios works with <br>partners such as:</h5>
		 </div>
		 <div class="info-three">
		 	<img alt="" src="https://bom.so/TIWrUW">
			<img alt="" src="https://bom.so/A9NCpI">
			<img alt="" src="https://bom.so/GQiLAB">
		 </div>
		</div>
	</div>
	<div class="four">
		<div class="info-four">
		 <div>
		   <div>
		 	<h1>Winx Books</h1>
			<h3><b>Your voice belongs on bookshelves</b></h3>
			<h5>Winx Books aspires to recognize and reflect diverse voices by<br>
				 taking Winx stories to published book and onto bookshelves<br> around the world.
				 Winx Books works with partners such as:</h5>
		   </div>
		   <div class="logo-four">
		 	<img alt="" src="https://bom.so/oGeoCs">
			<img alt="" src="https://bom.so/8K6k2B">
			<img alt="" src="https://bom.so/GV6kZt">
		   </div>
		 </div>
		 <div class="img-four"><img alt="" src="https://bom.so/YlvCK0"></div>
		</div>
	</div>
	<div class="five">
		 <h2><a href="#">Find out more about what we do for writers →</a></h2>
	</div>
	<div class="six">
		<div><h1 >How Winx Works</h1></div>
		<div class="info-six"><h4>Get your story discovered through
		 	 the power of community and technology on Winx.</h4></div>
		<div id="items-six">
		 <div class="items">
		 	<div class="items-info-1">
		 	 <h1><b>1</b></h1>
		 	 <div>
		 	  <h4><b>Create</b></h4>
			  <h5>Share your unique voice and original story on Winx.
			   Find the writing resources you need to craft a story only you can tell.</h5>
		 	 </div>
		 	</div>
		 	<div class="items-info-2" style="background-image: url('https://bom.so/BN50VC')">
			   <h1>50+</h1>
			   <h1>Writing Resources</h1>
			</div>
		 </div>
		<div class="items">
			<div class="items-info-1">
			 <h1><b>2</b></h1>
		 	 <div>
		 	  <h4><b>Build</b></h4>
			  <h5>Establish a global fan base as your story gains readership
			   and momentum. Connect with other like-minded writers through storytelling.</h5>
		 	 </div>
			</div>
		 	<div class="items-info-2" style="background-image: url('https://bom.so/BJo7Kj')">
			   <h1>90 MILLION</h1>
			   <h1>Readers</h1>
			</div>
		 </div>
		<div class="items">
			<div class="items-info-1">
			 <h1><b>3</b></h1>
		 	 <div>
		 	  <h4><b>Amplify</b></h4>
			  <h5>Gain Winx Star status and get your story published or adapted
			   into film or television with Winx Books and Winx Studios!</h5>
		 	 </div>
			</div>
		 	<div class="items-info-2" style="background-image: url('https://bom.so/uf0fhO')">
			  <h1>1000+</h1>
			  <h1>Story deals</h1>
			</div>
		 </div>
		</div>
	</div>
	<div class="seven">
		<ul id="slider">
		 <li>
		  <div class="items-seven">
		   <img alt="" src="https://bom.so/or2AAi">
		   <div>
		    <p style="margin: 20px; font-size: 20px"><i>"Working with Winx Studios is like a dream. Not only do they care about your success, but also staying true to your vision."</i></p>
		    <p style="margin: 20px; color: gray; text-align: right">KARA BARBIERI (@PANDEAN)</p>
		    <p style="margin: 20px; color: gray">Kara Barbieri is a twenty-two year old author with a love for the weird and mystic. Her debut novel, WHITE STAG, will be published by Wednesday Books/Macmillan in January 2019.</p>
		    <button style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange;	color: white; border: none;	margin: 20px"><b>Start Reading</b></button>
		   </div>
		  </div>
		 </li>
		 <li>
		  <div class="items-seven">
		  <img alt="" src="https://bom.so/VsD15T">
		  <div>
		   <p style="margin: 20px; font-size: 20px"><i>"When I joined Winx, I gained a second family who were as passionate about reading and writing as I am."</i></p>
		   <p style="margin: 20px; color: gray; text-align: right">ALI NOVAK (@FALLZSWIMMER)</p>
		   <p style="margin: 20px; color: gray">Ali Novak is a Wisconsin native and a graduate of the University of Wisconsin-Madison's creative writing program. She started writing her debut novel My Life with the Walter Boys when she was only fifteen. Since then, her work has received more than 150 million hits online and My Life with the Walter Boys has been optioned for television by Komixx Entertainment and Sony Pictures Television.</p>
		   <button style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange;	color: white; border: none;	margin: 20px"><b>Start Reading</b></button>
		  </div>
		 </div>
		 </li>
		 <li>
		  <div class="items-seven">
		  <img alt="" src="https://bom.so/o4YAcM">
		  <div>
		   <p style="margin: 20px; font-size: 20px"><i>"Being a Winx Star is the foundation for everything I do as a writer, from the behind the scenes wrangling to the big, game-changing projects."</i></p>
		   <p style="margin: 20px; color: gray; text-align: right">BEN SOBIECK (@BENSOBIECK)</p>
		   <p style="margin: 20px; color: gray">Benjamin Sobieck is a Winx Star and editor of “The Writer’s Guide to Winx,” published in August 2018 by Writer’s Digest Books and featuring contributions by 23 Winx Stars, ambassadors, and staff. His stories on Winx, such as “When the Black-Eyed Children Knock,” have drawn more than 1.5 million reads.</p>
		   <button style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange;	color: white; border: none;	margin: 20px"><b>Start Reading</b></button>
		  </div>
		 </div>
		 </li>
		 <li>
		  <div class="items-seven">
		  <img alt="" src="https://bom.so/yg8C3p">
		  <div>
		   <p style="margin: 20px; font-size: 20px"><i>"Having been active on Winx for several  years, I knew it would be the perfect platform for a thriller with lots of cliffhangers for readers to discuss. Teen horror is my passion, so I can’t wait to be able to share Light as a Feather with other horror aficionados on Hulu."</i></p>
		   <p style="margin: 20px; color: gray; text-align: right">ZOE AARSEN (@ZAARSENIST)</p>
		   <p style="margin: 20px; color: gray">Zoe Aarsen is a graphic designer and copywriter. Her first paranormal YA novel, Light as a Feather, Stiff as a Board, is being published by Simon & Schuster and turned into a television series on Hulu.</p>
		   <button style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange;	color: white; border: none;	margin: 20px"><b>Start Reading</b></button>
		  </div> 
		 </div>
		 </li>
		 <li>
		  <div class="items-seven">
		  <img alt="" src="https://bom.so/rRcSBd">
		  <div>
		   <p style="margin: 20px; font-size: 20px"><i>"The Winx Stars Program gave me opportunities I never thought possible. It connected me to a world that I had only imagined. I don’t know how else to say it. It changed my life!"</i></p>
		   <p style="margin: 20px; color: gray; text-align: right">ISABELLE RONIN (@ISABELLERONIN)</p>
		   <p style="margin: 20px; color: gray">Chasing Red was one of 2016’s most-read stories on Winx -- and that was just the beginning for this Winnipeg-Manitoba-based writer. In a single year, her explosive hit has racked up over 127 million reads on Winx. Newly edited and expanded, the book was split into two and hit bookstore shelves in 2017.</p>
		   <button style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange;	color: white; border: none;	margin: 20px"><b>Start Reading</b></button>
		  </div>
		 </div>
		 </li>
		</ul> 
		</div>
		
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

		<div style="margin-top: 10px">
		 <p style="font-size: 30px; margin-left: 100px; margin-bottom: 100px"><b>Get Discovered</b></p>
		 <div style="display: flex; justify-content: center; flex-direction: row; margin-left: 200px; margin-right: 200px">
		  <div>
		  <img alt="" src="https://bom.so/eykZx9">
		  <h2 style="margin: 20px"><b><a style="text-decoration: none; color: black" href="#">Writing Contests</a></b></h2>
		  <p style="margin: 20px; font-size: 14px" style="margin: 20px">Enter writing contests to get published,
		   win awards, and partner with global brands.</p>
		 </div>
		 <div>
		  <img alt="" src="https://bom.so/upJpA0">
		  <h2 style="margin: 20px"><b><a style="text-decoration: none; color: black" href="#">The Wattys</a></b></h2>
		  <p style="margin: 20px; font-size: 14px" style="margin: 20px">Winx’s annual awards program committed to
		   celebrating the best stories around the world.</p>
		 </div>
		 <div>
		  <img alt="" src="https://bom.so/7RGtpR">
		  <h2 style="margin: 20px"><b><a style="text-decoration: none; color: black" href="#">Winx Picks</a></b></h2>
		  <p style="margin: 20px; font-size: 14px">Get featured on our hand-picked reading list.</p>
		 </div>
		 </div>
		 
		</div>
		<div class="8" style="background-image: url('https://bom.so/cNRTUu'); background-size: cover; height: 400px; text-align: center">
		 <h2 style="margin-top: 40px; color: white;">Take Winx With You</h2>
		 <h3 style="margin: 10px">Read and write anywhere, even offline.</h3>
		<a href="read/indexRead.htm">
			<button
				style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange; color: white; border: none; margin: 20px">
				<b>Start Reading 
			</button>
		</a>
		<a href="">
			<button
			style="padding: 10px; padding-left: 20px; padding-right: 20px; border-radius: 5px; background-color: orange; color: white; border: none; margin: 20px">
			Start Writing</b>
			</button>
		</a>
		<img alt="" src="https://bom.so/QA96Nos">
		</div>
	
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