

<head>
<title> Beer paradise </title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link href="${resource(dir: 'css', file: 'Style.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'css', file: 'header.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'css', file: 'login.css')}" rel="stylesheet" type="text/css" />


</head>

<body>

<header id="header">

<h1 id="header_title"> Welcome to Beer Paradise </h1>
<div id="login_part" >


</div>

<ul class="sel">
		<li><g:link controller="main" action="index">Home </g:link></li>
		<li><g:link controller="main" action="index">About Us </g:link></li>
		<li><g:link controller="beer" action="ourProducts">Our Products</g:link></li>
		<li><g:link controller="main" action="index">Where to find us ? </g:link></li>
        <li><g:link controller="main" action="index">Contact Us </g:link></li>
        <li><g:link controller="main" action="clientSpace">Client Space</g:link></li>
</ul>

</header>

<center>
<h3 id="hello-mister"> Hello Mister ${session.user.firstName } </h3>
<center>

<footer>
<center><hr width="90%"/>

Copyright © 2015 BeerParadise Corp. All rights reserved.</center>
</footer>

</body>
