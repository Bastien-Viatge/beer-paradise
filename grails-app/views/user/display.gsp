<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Users</title>
	</head>
	<body>
        <g:each in="${users}" var="user" status="i">
            <h3>${i+1}. ${user.lastName}, ${user.firstName}</h3>
            <p>
                Age: ${user.birthDate}
            </p>
            <br/>
        </g:each>
	</body>
</html>