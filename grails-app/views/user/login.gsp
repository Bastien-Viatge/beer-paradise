<!DOCTYPE html>
<html>
<head>
	<title>Beer Paradise</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>

<body>
	<header>
		<h1 id="header_title"> Welcome to Beer Paradise </h1>
		
		<ul class="sel">
			<li><a href="index.html"> Home </a></li>
			<li><a href="#about_us"> About Us </a></li>
			<li><a href="Products.html"> Our Beers </a> </li>
			<li><a href="#where_to"> Where to find us ? </a></li>
	        <li><a href="#contact_us"> Contact Us </a></li>
	        <li><a href="client-space.html"> Client Space </a></li>
		</ul>
	</header>
	
	<g:form controller="User" action="loginUser">
		<label>Mail : </label><input type="text" name="mail"> <br/>
		<label>Password : </label><input type="password" name="password"><br/>
		<input type="submit" value="Login"/>
	</g:form>
</body>
</html>