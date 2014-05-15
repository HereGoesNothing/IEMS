<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Please select your desired destination floor from the keys below</title>
	
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
				<button type="one" onclick="alert('One')">One</button>
				<button type="two" onclick="alert('Two')">Two</button>
				<button type="three" onclick="alert('Three')">Three</button>
				<button type="four" onclick="alert('Four')">Four</button>
				<button type="five" onclick="alert('Five')">Five</button>
				<button type="six" onclick="alert('Six')">Six</button>
				<button type="seven" onclick="alert('Seven')">Seven</button>
				<button type="eight" onclick="alert('Eight')">Eight</button>
				<button type="nine" onclick="alert('Nine')">Nine</button>
				<button type="zero" onclick="alert('Zero')">Zero</button>
		<br>	
		<p>Unfortunately the lifts are not available without registration on the system.
		<br>		
		<form method= "post">
		<br>
		<button type="hash" onclick="alert('Hash')">Hash</button>
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
