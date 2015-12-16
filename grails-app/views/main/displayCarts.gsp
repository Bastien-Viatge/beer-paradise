<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Cart</title>
	</head>
	<body>
        <g:each in="${carts}" var="cart" status="i">
            <h3>${i+1}. ${cart.cartName}, ${cart.sessionID}</h3>
            <p>
                Price: ${cart.totalPrice}
            </p>
            <br/>
        </g:each>
	</body>
</html>