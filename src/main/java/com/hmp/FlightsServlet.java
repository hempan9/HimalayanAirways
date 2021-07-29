package com.hmp;

import com.hmp.beans.FlightsBean;
import com.hmp.beans.UserInfo;
import com.hmp.dao.FlighDetailsDAO;
import com.hmp.service.GetFlightsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/showFlights")
public class FlightsServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		request.getRequestDispatcher("showFlightsRes.jsp").forward(request, response);

		/*
		 * String origin = request.getParameter("origin"); String dest =
		 * request.getParameter("destination"); String depart =
		 * request.getParameter("departDate"); String returnDate =
		 * request.getParameter("returnDate"); System.out.println(depart); PrintWriter
		 * out = response.getWriter(); GetFlightsService getFlightsService = new
		 * GetFlightsService(); FlightsBean bean = new FlightsBean();
		 * bean.setOrigin(origin); bean.setDestination(dest);
		 * bean.setDepartureDate(depart); bean.setArrivalDate(returnDate);
		 * FlighDetailsDAO dao = new FlighDetailsDAO(); List<FlightsBean> flights =
		 * dao.getALlFlights(); out.println("<html>"); if
		 * (getFlightsService.fetchAvailableFlights(origin, dest, depart, returnDate)) {
		 * 
		 * } else { out.println("<h3>");
		 * out.println("No available flights on this route"); out.println("</h3>");
		 * 
		 * } out.println("</html>");
		 */

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		int flightNo = Integer.parseInt(request.getParameter("flightNum"));

		PrintWriter out = response.getWriter();
		GetFlightsService service = new GetFlightsService();

		out.print("<html><body>");

		if (service.flightExists(flightNo)) {
			request.getRequestDispatcher("indexResponse.jsp").forward(request, response);

			out.print("</body></html>");

		} else {
			out.print("No flights found");
		}

	}
}