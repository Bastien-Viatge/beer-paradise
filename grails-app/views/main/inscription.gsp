<!DOCTYPE html>   

<head>
    <title> Beer paradise </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
	<link href="${resource(dir: 'css', file: 'Style.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'css', file: 'header.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'css', file: 'login.css')}" rel="stylesheet" type="text/css" />
	
	
	<link rel="stylesheet" href="css/jquery-ui.css">
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/jquery-ui.js"></script>



	<!-- Utilizamos este funcion para poder elegir una fecha de nacimiento inferior -->
	<script type="text/javascript">
	    $(function() {
	      $( "#datepicker" ).datepicker({
	                changeMonth: true,
	                yearRange: '-85:+0M',
	                changeYear: true
	      });
	   });
	</script>
	
	<!-- Verificamos los datos del formulario con el script siguiente-->
	<script type="text/javascript">
	 
	    function verif()
	    {
	        
	        if (myForm.Name.value == "")
	        {
	            alert ('Please enter your name');
	            myForm.Name.focus();
	            return false;
	        }
	        if(myForm.Surname.value == "")
	        {
	            alert ('Please enter your Surname');
	            myForm.Surname.focus();
	            return false;
	        }
	        
	        if(myForm.Password.value == "")
	        {
	            alert ('Please choose a password');
	            myForm.Password.focus();
	            return false;
	        }
	        if(myForm.Validation.value != myForm.Password.value)
	        {
	            alert ('The validation is not correct, try again');
	            myForm.Validation.focus();
	            return false;
	        }
	        
	        if(myForm.Mail.value == "")
	        {
	            alert ('Please enter your Mail');
	            myForm.Mail.focus();
	            return false;
	        }
	        
	        else {return true;}
	    }
	    
	    
	</script>

 </head>

  <body>
      <header id="header">
          
          <h1 id="header_title"> Welcome to Beer Paradise </h1>
          <div id="login_part" >
              <form action="#" method="post">
                  <p id="login_name_div">User name : <input type="text" name="login"></p>
                      <p id="login_pass_div">Password : <input type="password" name="pwd"></p>
                          <input id="login_button" type="submit" value="Log in"/><br/>
                          <p id="signIn_link" style="font-size:10pt;">You don't have an account ? <a href="./Inscription.html">Sign in !</a></p>
                          </form>
              
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
	

<g:form controller="Main" action="saveUser" id="newUserForm">
<!-- creemos un formulario con el método POST -->
    
    <h2> Please enter your datas : </h2>
<br/>
<g:hasErrors bean="${user }">
	<div class="error">
		<g:renderErrors bean="${user }"/>
	</div>
</g:hasErrors>

<p>
    <label for="name"> Name : </label> <g:textField name="firstName" value="${user?.firstName}"/> <br/>
    <label for="lastName"> Surname : </label> <g:textField name="lastName" value="${user?.lastName}"/> <br/>
    
    <label for="password"> Password : </label> <g:passwordField name="password" /> <br/>
	<label for="verification">Verification :</label> <g:passwordField name="verification" /> <br/>
    <label for="birthDate"> Birth date : </label> <g:datePicker type="text" name="birthDate" id="datepicker" precision="day" value="${user?.birthDate}"/> <br/>

    <label for="address">Address</label><g:textArea name="address" value="${user?.address}"/><br/>

    <label for="mail"> Mail address : </label> <g:textField name="mail" value="${user?.mail}"/> <br/>

</p>
	<input type="submit" value="Submit" name="submit"/>   <br/>
	


<!-- Utilisamos una funcion Javascript para verificar que el usario completo todas las informaciones necesitadas del formulario -->

</g:form>



<footer>
<center><hr width="90%"/>

Copyright © 2015 BeerParadise Corp. All rights reserved.</center>
</footer>



</body>



