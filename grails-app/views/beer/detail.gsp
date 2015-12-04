<!DOCTYPE html>
<html>
    <head>
        
        <title> Beer Paradise </title>
        
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
        <div class="detail">
            <div class="ima"><img src="images/R2.png" /></div>
            <div class="tit">Leffe</div>
            <div class="pri">Price : 20.00€ </div>
            <div class="des">Description : <br/> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum1
            </div>
            <br/>
            <div class="opinion"> Clients opinion : 8.7/10 </div>
            
                <a href="./Products.html" class="back-2-our-beers"> <input type="button" value="Our beers" name="our-beers"/> </a>
            
        </div>
        
        <hr size="1" color="black"/>
        
        <div class="go-shopping">
            <div class="tit-shopping"> Go shopping ! </div>
            <br/>
            <br/>
            <br/>
            <div class=""> In your cart : 1 ✕ pack(✕6) </div>
            <br/>
            <br/>
            
            <div class="form-product">
            <form action="client-space.html" method="post" id="form-product-type">
                
                
                    <table id="table-product">
                    
                    <tr><td id="select-beer"> Selected beer : The Leffe </td>
                    <td> <label for="product"> Product : </label> </td>
                    <td> <SELECT name="product-type" size="1">
                        <OPTION>1L Bottle
                        <OPTION>33cl Bottle
                        <OPTION>50cl Can
                        <OPTION>Pack(✕6)
                            </SELECT>
                    </td>
                    <td> <label for="product"> Quantity : </label> </td>
                    <td> <SELECT name="quantity-product" size="1">
                        <OPTION>1
                        <OPTION>2
                        <OPTION>3
                        <OPTION>4
                        <OPTION>5
                        <OPTION>6
                        <OPTION>7
                        <OPTION>8
                            </SELECT>
                    </td>
                    <td> Price : 6.90 ✕ 1 = 6.90€ </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td/>
                        <td/>
                        <td/>
                        <td/>
                        <td/>
                        <td> <input type="submit" value="Add to my cart" class="submit-detail" /> </td> </tr>
                    
                    </table>
                            
            </form>
          </div>
                 
        </div>
       
</body>
</html>