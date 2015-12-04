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
    

</head>
<body>

<header id="header">
	
	<h1 id="header_title"> Welcome to Beer Paradise </h1>
	<g:if test="${session.user}">
		<div id="logged_part">
			<p> Welcome ${session.user.firstName } !</p>
			<g:link controller="user" action="logout" params="[targetUri: (request.forwardURI - request.contextPath)]">Logout</g:link>
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

	<g:each in="${ourProducts}" var="beer" status="i">
		<div class="prod">
			<div class="ima"><img src="images/R2.png" /></div>
				<div class="tit">${beer.beerName }</div>
		        <div class="pri">Price : ${beer.price }€ </div>
				<div class="des">Description : <br/> ${beer.presentation }
				</div>
		        <br/>
				<div class="num">Stock : ${beer.quantity }</div>
	
			<a href="./detail.html" class="nounderline"> <input type="button" value="Add to cart" name="ajouter-quantite"/> </a>
	
		</div>
		<br/>
		
	</g:each>
	

	
</div>
<footer>
	<center><hr width="90%"/>Copyright © 2015 BeerParadise Corp. All rights reserved.</center>
</footer>

</body>
</html>