<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Select your desired floor</title>

		
	
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<h1 align="center">Please select your desired destination floor using the keys below</h1>
			</ul>
		</div>
		<div class="nav" role="navigation" align="center">
				<button type="one" onclick="alert('One')">1</button>
				<button type="two" onclick="alert('Two')">2</button>
				<button type="three" onclick="alert('Three')">3</button>
				<p>
				<button type="four" onclick="alert('Four')">4</button>
				<button type="five" onclick="alert('Five')">5</button>
				<button type="six" onclick="alert('Six')">6</button>
				<p>
				<button type="seven" onclick="alert('Seven')">7</button>
				<button type="eight" onclick="alert('Eight')">8</button>
				<button type="nine" onclick="alert('Nine')">9</button>
				<p>
				<button type="star" onclick="alert('Star')">*</button>	
				<button type="zero" onclick="alert('Zero')">0</button>
				<button type="hash" onclick="alert('Hash')">#</button>
		<br>
		<br>	
		<p>Unfortunately the lifts are not available without registration on the system.
		<br>
		<br>So if you haven't already registered, please use the "Home" link to go back and do so.
		<br>		
		<form method= "post">
		<br>
		<form action="post">
		Please select the floor you are calling from here: <input type="number" name="quantity" min="-1" max="9">
  		<input type="submit">
		</form>
		<br>
		
		
	</body>
</html>
