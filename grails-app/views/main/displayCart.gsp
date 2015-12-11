<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Cart</title>
	</head>
	<body>
        <g:each in="${cart}" var="prod" status="i">
            <h3>${i+1}. ${prod.shoppingDate}, ${prod.client.mail}</h3>
            <p>
                Price: ${prod.item.productType}
            </p>
            <br/>
        </g:each>
	</body>
</html>