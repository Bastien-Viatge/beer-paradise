<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Beers</title>
	</head>
	<body>
        <g:each in="${ourProducts}" var="beer" status="i">
            <h3>${i+1}. ${beer.beerName}, ${beer.presentation}</h3>
            <p>
                Price: ${beer.price}
            </p>
            <br/>
        </g:each>
	</body>
</html>