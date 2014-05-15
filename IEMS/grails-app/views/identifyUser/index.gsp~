<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to IEMS The Intelligent Elevator System</title>
	
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				
			</ul>
		</div>
		<h1>This is where the IEMS system will verify your identity.</h1><p>
		<br>	
		<p>Unfortunately the lifts are not available without registration on the system.
		<br>		
		<form method= "post">
		<br>
		Please begin by entering your username: <input type="text" name="name" value="${params.name}" />

		<input type="submit"/>
		</form>
		<br>
		<g:if test= "${params.name != null}">
		Hello ${params.name} 
		<p>Please wait while we verify your identity with the system.
		</g:if>
		
		<g:else if test= "${params.name = null}">
		
		<p>If you are not registered, then please press home or seek assistance at the security office.
		<p>Thank you for your understanding.
		</g:else>
		
	</body>
</html>
