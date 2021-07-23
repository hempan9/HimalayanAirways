<%@ page import="com.hmp.beans.FlightsBean"%>
<html>
<head>


<title>Home-Himalayan Airways</title>
<link rel="stylesheet" href="style.css">
<ul>
	<li><a class="active" href="index.jsp">Home</a></li>
	<li><a href="login.jsp">Login</a></li>
	<li><a href="register.jsp">Register</a></li>
	<li><a href="about.html">About</a></li>
</ul>

<h2 align="center">
	<img src="logo.png" height="171" alt="logoImg"><Br>
	Himalayan Airways Radar searches travel and airlines sites to help you
	find cheap flights at best prices
</h2>


</head>
<body>


	<form name="one" action="showFlights" method="post">

		<div class="homeDiv">
			<h1 class="heading">
				<div class="select">
					<p align="center">
						From <select id="originSelect" name="origin" required>
							<option value="DFW">DFW</option>
							<option value="TIA">TIA</option>
							<option value="JFK">JFK</option>
						</select> TO <select style="align-content: center" id="DestSelect"
							name="destination" required>
							<option value="DFW">DFW</option>
							<option value="TIA">TIA</option>
							<option value="JFK">JFK</option>

						</select>
					</p>
				</div>
				<h4 align="center">
					Depart <input type="date" name="departDate"> Return <input
						type="date" name="returnDate">
				</h4>
				<h4 align="center" style="align-content: center">
					<input type="submit" name="getFlights" value="Show Flights">
				</h4>

			</h1>

		</div>
	</form>
	<div class="homeDiv">
		<h1 align="center">OR</h1>
		<h3 align="center">Enter flight number to check flight status.</h3>
		<form name="two" action="showFlights" method="get">
			<h3 align="center">
				Flight Number <input type="text" name="flightNum">
			</h3>
			<h3 align="center">
				<input type="submit" value="Check">
			</h3>
		</form>
	</div>
</body>
</html>