<!DOCTYPE html>
<html>
<head>

<title> Beer Paradise </title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link href="${resource(dir: 'css', file: 'Style.css')}" rel="stylesheet" type="text/css" />
<link href="${resource(dir: 'css', file: 'header.css')}" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'login.css')}">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'feature-carousel.css')}" type="text/css"/>
    <script src="${resource(dir: 'js', file: 'jquery-1.7.min.js')}" type="text/javascript" charset="utf-8"></script>
    <script src="${resource(dir: 'js', file: 'jquery.featureCarousel.min.js')}" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        var carousel = $("#carousel").featureCarousel({
          // include options like this:
          // (use quotes only for string values, and no trailing comma after last option)
          // option: value,
          // option: value
        });

        $("#but_prev").click(function () {
          carousel.prev();
        });
        $("#but_pause").click(function () {
          carousel.pause();
        });
        $("#but_start").click(function () {
          carousel.start();
        });
        $("#but_next").click(function () {
          carousel.next();
        });
      });
    </script>

</head>
<body>

<header id="header">
	
	<h1 id="header_title"> Welcome to Beer Paradise </h1>
	<g:if test="${session.user}">
		<div id="logged_part">
			<p> Welcome ${session.user.firstName } !</p>
			<g:link controller="user" action="logout">Logout</g:link>
		</div>
	</g:if>
	<g:else>
		<div id="login_part" >
		${flash.message }
			<g:form controller="user" action="loginUser">
				<p id="login_name_div">User mail : <g:textField type="text" name="mail"/></p>
				<p id="login_pass_div">Password : <g:passwordField type="password" name="password"/></p>
				<input id="login_button" type="submit" value="Log in"/><br/>
				<p id="signIn_link" style="font-size:10pt;">You don't have an account ? <a href="./Inscription.html">Sign in !</a></p>
			</g:form>

		</div>
	</g:else>
	
	<ul class="sel">
		<li><g:link controller="main" action="index">Home </g:link></li>
		<li><g:link controller="main" action="index">About Us </g:link></li>
		<li><g:link controller="beer" action="ourProducts">Our Products</g:link></li>
		<li><g:link controller="main" action="index">Where to find us ? </g:link></li>
        <li><g:link controller="main" action="index">Contact Us </g:link></li>
        <li><g:link controller="main" action="clientSpace">Client Space</g:link></li>
	</ul>
	
</header>

<div class="contenu">

<carroussel>
	<h2>A little taste of our beers :</h2>
	<center>
    <div class="carousel-container">
    
        <div id="carousel">
	        <div class="carousel-feature">
	          <a href="Products.html"><img class="carousel-image" alt="Image Caption" src="${resource(dir: 'images', file: 'R1.png')}"></a>
	          <div class="carousel-caption">
	            <p>
	              Bière du démon
	            </p>
	          </div>
	        </div>
	        <div class="carousel-feature">
	          <a href="Products.html"><img class="carousel-image" alt="Image Caption" src="${resource(dir: 'images', file: 'R2.png')}"></a>
	          <div class="carousel-caption">
	            <p>
	              Leffe
	            </p>
	          </div>
	        </div>
	        <div class="carousel-feature">
		      <a href="http://en.wikipedia.org/wiki/Admiral_Ackbar"><img class="carousel-image" alt="Image Caption" src="${resource(dir: 'images', file: 'R3.jpg')}"></a>
		      <div class="carousel-caption">
		        <p>
		          Rince Cochon
		        </p>
		      </div>
		    </div>
	        <div class="carousel-feature">
	          <a href="Products.html"><img class="carousel-image" alt="Image Caption" src="${resource(dir: 'images', file: 'R4.jpg')}"></a>
	         	<div class="carousel-caption">
	               	<p>Goudale</p>
				</div>
			</div>
			<div class="carousel-feature">
		      <a href="Products.html"><img class="carousel-image" alt="Image Caption" src="${resource(dir: 'images', file: 'R5.jpg')}"></a>
		      <div class="carousel-caption">
		        <p>
		         Chouffe
		        </p>
		      </div>
		    </div>
        </div>
    
      <div id="carousel-left"><img src="${resource(dir: 'images', file: 'arrow-left.png')}" /></div>
      <div id="carousel-right"><img src="${resource(dir: 'images', file: 'arrow-right.png')}" /></div>
    <div>
			<a id="but_prev" href="#">PREV</a> | <a id="but_pause" href="#">PAUSE</a> | <a id="but_start" href="#">START</a> | <a id="but_next" href="#">NEXT</a>
	</div>
    </div>
</center>
</carroussel>



<h2 id="contact_us">Contact Us</h2>
<article>
<p>
Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens vetitis certaminibus pugilum vicissim se concidentium perfusorumque sanguine specie ut lucratus ingentia laetabatur.
</p>
</article>

<h2 id ="about_us">About Us</h2>
<article>
<p>
Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens vetitis certaminibus pugilum vicissim se concidentium perfusorumque sanguine specie ut lucratus ingentia laetabatur.
</p>
</article>

<h2 id="where_to">Where to find us ?</h2>
<article>
<p>
Erat autem diritatis eius hoc quoque indicium nec obscurum nec latens, quod ludicris cruentis delectabatur et in circo sex vel septem aliquotiens vetitis certaminibus pugilum vicissim se concidentium perfusorumque sanguine specie ut lucratus ingentia laetabatur.
</p>
</article>


</div>
<footer>
	<center><hr width="90%"/>

	Copyright © 2015 BeerParadise Corp. All rights reserved.
	</center>
</footer>

</body>
</html>