<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.hmp.dao.FlighDetailsDAO"%>
<%@ page import="com.hmp.service.GetFlightsService"%>
<%@ page import="com.hmp.beans.FlightsBean"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.List"%>
<%--
  Created by IntelliJ IDEA.
  User: heman
  Date: 7/22/2021
  Time: 9:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
int flightNo = Integer.parseInt(request.getParameter("flightNum"));
FlighDetailsDAO dao = new FlighDetailsDAO();

List<FlightsBean> bean = dao.getALlFlights();
for (FlightsBean flightsBean : bean) {
	if (flightsBean.getFlightNumber() == flightNo) {
%>
<html>
<head>
<title>Search Flights-Using Flight Number</title>
<link rel="stylesheet" href="style.css">
<ul>
	<li><a class="active" href="index.jsp">Home</a></li>
	<li><a href="login.jsp">Login</a></li>
	<li><a href="register.jsp">Register</a></li>
	<li><a href="about.html>About</a></li>
</ul>

<h1 align="center"><img alt="logo" src="logo.png" style="width:200px"><br>Himalayan Airways<br>Quality Service is Our Motto</h1>
<h2 align="center">
	Search results for flight number:<style=color:green> <% out.print(flightsBean.getFlightNumber());
%>
		</h2>
<style>
table, th, td {
  border: 3px solid blue;
}
</style>

</head>
<body>
	<form action="flightInfo">
		<table style="width: 100%">
			<tr>
				<th>Flight Number</th>
				<th>Origin</th>
				<th>Destination</th>
				<th>Departure Date</th>
				<th>Return Date</th>
				<th>Status</th>
			</tr>
			<tr>
		

				<td>
				
					<%
					out.println(flightsBean.getFlightNumber());
					%>
				</td>
				<td>
					<%
					out.println(flightsBean.getOrigin());
					%>
				</td>
				<td>
					<%
					out.println( flightsBean.getDestination());
					%>
				</td>
				<td>
					<%
					out.println(flightsBean.getDepartureDate());
					%>
				</td>
				<td>
					<%
					out.println( flightsBean.getDepartureDate());
					%>
				</td>
				<td>Ready To Go</td>
			</tr>
			
		</table>

		<%
		}

		}
		%>
	</form>
</body>
</html>
