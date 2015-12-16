<!DOCTYPE html>   
<head>
	<title> Beer paradise </title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link href="${resource(dir: 'css', file: 'Style.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'css', file: 'header.css')}" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'login.css')}">
	

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
	<g:if test="${session.user}">
		<h2>Welcome to your personal space ${session.user.firstName } !</h2>
		<div id="client_data">
			<p>Delivery address :</p>
			${session.user.address}
			<div id="contact_data">
				<p id="id_contact">Contact :</p>
				${session.user.mail }
			</div>
			<div id="birth_data">
				<p id="id_birth">Birth date :</p>
				${session.user.birthDate }
			</div>
		</div>
		</div>
	<hr size="1" color="black"/>
	<div id="client_cart">
		<h2>My shopping cart :</h2>
		<div id="cart_part">
		<g:if test="${cart.items}">
			<table id="cart_table">
				<tr>
					<th>Beer type</th>
					<th>Product</th>
					<th>Price (u)</th>
					<th>Quantity</th>
					<th>Suppress</th>
				</tr>
				<g:each in="${cart.items}" var="product" status="i">
					<tr >
						<td>${product.item.beerBrand.beerBrand}</td>
						<td>${product.item.productType }</td>
						<td>${product.item.price}€</td>
						<td>${product.quantity }</td>
						<td>
							<g:form controller="main" >
								<input type="hidden" name="cartItemIndex" value="${i}"/>
								<g:actionSubmit action="deleteItem" value="Delete item"/>
							</g:form>
						</td>
					</tr>
				</g:each>
			</table>
			
			<g:form controller="main">
				<g:actionSubmit id="cart_but" value="Empty my Cart" action="emptyCart" onclick="return confirm('Do you really want to empty your cart ?')"/>
			</g:form>
			
			<span style="float:right;">Total price : ${cart.totalPrice }€</span>
			
    			<paypal:button itemName="${cart.cartName }" itemNumber="${cart.sessionID }" amount="${cart.totalPrice }" buyerId="${session.user.id }", discountAmount="${0}" />
			
		</g:if>
		<g:else>
			<h4>Your cart is empty..</h4>
		</g:else>
		</div>
		
	</div>
	
	</g:if>
	<g:else>
	<h4> You need to be logged to access to your client space </h4>
		<g:form controller="user" action="loginUser">
				<p id="login_name_div">User mail : <g:textField type="text" name="mail"/></p>
				<p id="login_pass_div">Password : <g:passwordField type="password" name="password"/></p>
				<input id="login_button" type="submit" value="Log in"/><br/>
				<p id="signIn_link" style="font-size:10pt;">You don't have an account ? <a href="./Inscription.html">Sign in !</a></p>
			</g:form>
			
			
	</g:else>
		
	

<footer>
	<center>
		<hr width="90%"/>
		Copyright © 2015 BeerParadise Corp. All rights reserved.
	</center>
</footer>
</body>