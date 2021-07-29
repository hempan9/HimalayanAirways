<%@page import="com.hmp.beans.FlightsBean"%>
<%@page import="com.hmp.service.GetFlightsService"%>
<%@page import="com.hmp.dao.FlighDetailsDAO"%>
<%@ page import="com.hmp.beans.FlightsBean"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>Search Flights Result</title>
<h1 align="center">
	<img alt="logo" src="logo.png" style="width: 200px"><br>Himalayan
	Airways<br>Quality Service is Our Motto
</h1>

<link rel="stylesheet" href="style.css">
<style>
table, th, td {
	border: 3px solid blue;
}
</style>

<ul>
	<li><a class="active" href="index.jsp">Home</a></li>
	<li><a href="login.jsp">Login</a></li>
	<li><a href="register.jsp">Register</a></li>
	<li><a href="about.html">About</a></li>
</ul>
<h1 align="center">Available Flights:</h1>
<%
String origin = request.getParameter("origin");
String dest = request.getParameter("destination");
String depart = request.getParameter("departDate");
String returnDate = request.getParameter("returnDate");
FlightsBean bean = new FlightsBean();
bean.setOrigin(origin);
bean.setDestination(dest);
bean.setDepartureDate(depart);
bean.setArrivalDate(returnDate);
GetFlightsService getFlightsService = new GetFlightsService();
%>
<%
if (getFlightsService.getFlight(getFlightsService.fetchAvailableFlights(origin, dest), origin, dest, depart,
		returnDate)) {
%>
</head>
<body>
	<div class="homeDiv">
		<table style="width: 100%">
			<tr>
				<th>Origin</th>
				<th>Destination</th>
				<th>Departure Date</th>
				<th>Return Date</th>
				<th>Status</th>
			</tr>
			<tr>



				<h2 align="center">
					<%
					out.print(bean.getOrigin());
					%>
					To:
					<%
					out.print(bean.getDestination());
					%>
				</h2>

		
				<td>
					<%
					out.println(bean.getOrigin());
					%>
				</td>
				<td>
					<%
					out.println(bean.getDestination());
					%>
				</td>
				<td>
					<%
					out.println(bean.getDepartureDate());
					%>
				</td>
				<td>
					<%
					out.println(bean.getArrivalDate());
					%>
				</td>
				<td><input type="checkbox" checked>Available</td>

			</tr>

			<%
			} else {
			out.print("No flights foubnd");
			}
			%>
		</table>
		<form method="post" action="book">
		<h2 align="center">
			Select This Flight <input type="checkbox" name="select"
				value="selected" checked>
		</h2>

		<h1 align="center">
			<input type="submit" value="Continue" name="book">
		</h1>
		</form>
	</div>
</body>
</html>
