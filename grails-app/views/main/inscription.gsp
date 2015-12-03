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
              <li><a href="index.html"> Home </a></li>
              <li><a href="index.html#about_us"> About Us </a></li>
              <li><a href="Products.html"> Our Beers </a> </li>
              <li><a href="index.html#where_to"> Where to find us ? </a></li>
              <li><a href="index.html#contact_us"> Contact Us </a></li>
              <li><a href="client-space.html"> Client Space </a></li>
          </ul>
          
      </header>



<g:form controller="Main" action="saveUser">
<!-- creemos un formulario con el método POST -->
    
    <h2> Please enter your datas : </h2>
<br/>

<p>
    <label for="name"> Name : </label> <g:textField type="text" name="firstName"/> <br/>
    <label for="lastName"> Surname : </label> <g:textField type="text" name="lastName"/> <br/>
    <label for="password"> Password : </label> <g:passwordField type="password" name="password"/> <br/>
    <!--  <label for="validation"> Validation *: </label> <g:textField type="password" name="Validation"/> <br/>-->

    <label for="birthDate"> Birth date : </label> <g:datePicker type="text" name="birthDate" id="datepicker" precision="day"/> <br/>

    <!-- <label for="country"> Country *: </label> <input type="text" name="Country"/> <br/>
    <label for="city"> City *: </label> <input type="text" name="City"/> <br/>
    <label for="postal"> Postal *: </label> <input type="text" name="Postal"/> <br/>
    <label for="adress"> Adress *: </label> <input type="text" name="Address"/> <br/>-->
    <label for="address">Address</label><g:textArea name="address"/><br/>

    <label for="mail"> Mail address : </label> <g:textField type="text" name="mail"/> <br/>

</p>
	<input type="submit" value="Submit" name="submit" onClick="javascript: return verif();"/>   <br/>
	


<!-- Utilisamos una funcion Javascript para verificar que el usario completo todas las informaciones necesitadas del formulario -->

</g:form>



<footer>
<center><hr width="90%"/>

Copyright © 2015 BeerParadise Corp. All rights reserved.</center>
</footer>



</body>



