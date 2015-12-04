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
			<li><g:link controller="main" action="index">Home </g:link></li>
		<li><g:link controller="main" action="index">About Us </g:link></li>
		<li><g:link controller="beer" action="ourProducts">Our Products</g:link></li>
		<li><g:link controller="main" action="index">Where to find us ? </g:link></li>
        <li><g:link controller="main" action="index">Contact Us </g:link></li>
        <li><g:link controller="main" action="clientSpace">Client Space</g:link></li>
		</ul>
	</header>
	
	<g:form controller="User" action="loginUser">
		<label>Mail : </label><input type="text" name="mail"> <br/>
		<label>Password : </label><input type="password" name="password"><br/>
		<input type="submit" value="Login"/>
	</g:form>
</body>
</html>