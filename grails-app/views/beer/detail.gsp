<!DOCTYPE html>
<html>
    <head>
        
        <title> Beer Paradise </title>
        
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<link href="${resource(dir: 'css', file: 'Style.css')}" rel="stylesheet" type="text/css" />
		<link href="${resource(dir: 'css', file: 'header.css')}" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'login.css')}">
		<script type="text/javascript">
		var data;
		var qteChoosen;
		function loading(){
			var priceProductMap = new Map();
			var temp = "${jsonProds}";
			temp = temp.replace(/&quot;/g,'"');
			data = JSON.parse(temp);
			

		}
		window.onpaint = loading();
		
		function getSelectValue(){
	/**recuperamos el elemento html <select> (la quantidad)*/
			var quantitySelected = document.getElementById("productQuantity");
			var productSelected = document.getElementById("productTypeSelected")
			
			
			var temp1 = quantitySelected.options[quantitySelected.selectedIndex].value;
			qteChoosen = parseInt(temp1);

			var temp2 = productSelected.options[productSelected.selectedIndex].value;
			temp2 = parseInt(temp2);
			var price;
			for (var i in data){
				if (data.hasOwnProperty(i)){
					if (temp2 == i)
						
						price = data[i];

					}

				}
			 
			var priceElement = document.getElementById("priceTag");
			var result = price * qteChoosen; 
			priceElement.innerHTML = "Price : " + price + " x " + qteChoosen +" = "+ result+"€";
			return qteChoosen;
		}
		//var selectValue = getSelectValue('productQuantity');
		</script>
		
	</head>


<body onload="getSelectValue();">
    
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
            <div class="ima"><img src="${resource(dir: 'images', file:beer.photoName)}" /></div>
            <div class="tit">${beer.beerBrand }</div>
            <div class="des">Description : <br/> ${beer.presentation }
            </div>
            <br/>
            <div class="opinion"> Clients opinion : ${beer.opinion }/10 </div>
            
                <g:link controller="beer" action="ourProducts" class="back-2-our-beers"> <input type="button" value="Our beers" name="our-beers"/> </g:link>
            
        </div>
        
        <hr size="1" color="black"/>
        
        <div class="go-shopping">
            <div class="tit-shopping"> Go shopping ! </div>
            <br/>
            <br/>
            <br/>
            <br/>
            
            <div class="form-product" id="form-prod">
            <form action="client-space.html" method="post" id="form-product-type">
                
                
                    <table id="table-product">
                    
                    <tr> <td id="select-beer" width="350" valign="middle" align="left"> Selected beer : ${beer.beerBrand }  </td>
                    <td> <label for="product"> Product : </label> </td>
                    <td> 
                    <g:select id="productTypeSelected" name="productType" onchange="getSelectValue('productTypeSelected');" 

                    		from="${beer.products }" 
                    		value="idProduct"
                    		optionKey="idProduct"
                    		optionValue="productType"
                    		/>
                    
                    </td>
                    
                     <script type="text/javascript">
                    
                    
                    </script> 
                    
                    <td> <label for="product"> Quantity : </label> </td>
                    <td> <SELECT id="productQuantity" name="quantity-product" size="1" onchange="getSelectValue('productQuantity');">
                        <OPTION selected="selected">1 </OPTION>
                        <OPTION>2 </OPTION>
                        <OPTION>3 </OPTION>
                        <OPTION>4 </OPTION>
                        <OPTION>5 </OPTION>
                        <OPTION>6 </OPTION>
                        <OPTION>7 </OPTION>
                        <OPTION>8 </OPTION>
                            </SELECT>
                            
                    <script type="text/javascript">
                    </script>        
                            
                            
                            
                    </td>
                    <!-- 
                    <div id="affichage">test</div>
					<script type="text/javascript">
					var prenom = "toto";
					document.getElementById("affichage").innerHTML = prenom;
					</script>  
					
					<script>
var selectElmt = document.getElementById("ComboPays");
var valeurselectionnee = selectElmt.options[selectElmt.selectedIndex].value;
var textselectionne = selectElmt.options[selectElmt.selectedIndex].text;
</script>
					-->
					
                    <td id="priceTag"> Price :    </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td/>
                        <td/>
                        <td/>
                        <td/>
                        <td/>
                        <td>  <g:link controller="main" action="clientSpace" params="[index:i]"> <input type="button" value="Add to cart" name="ajouter-quantite"/> </g:link></td> </tr>
                    
                    </table>
                            
            </form>
          </div>
                 
        </div>
        </div>
        
       
</body>
</html>