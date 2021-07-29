package com.hmp.service;

import com.hmp.beans.FlightsBean;
import com.hmp.dao.FlighDetailsDAO;

import java.util.List;

public class GetFlightsService {
	private FlighDetailsDAO flighDetailsDAO;

	public GetFlightsService() {
		flighDetailsDAO = new FlighDetailsDAO();
	}

	public FlightsBean fetchAvailableFlights(String origin, String dest) {
		List<FlightsBean> allFLights = flighDetailsDAO.getALlFlights();
		for (FlightsBean bean : allFLights) {
			if (bean.getOrigin().equalsIgnoreCase(origin) && bean.getDestination().equalsIgnoreCase(dest)) {
				return bean;
			}
		}
		return null;

	}

	public boolean getFlight(FlightsBean bean, String origin, String dest, String depart, String ret) {
		if (bean != null) {
			if (bean.getOrigin().equalsIgnoreCase(origin) && bean.getDestination().equalsIgnoreCase(dest)
					|| bean.getDepartureDate().equals(dest) || bean.getArrivalDate().equals(ret)) {
				return true;
			}
		}
		return false;
	}

	public boolean flightExists(int flightNumber) {
		List<Integer> flight = flighDetailsDAO.getALlFlightNumber();
		for (Integer flightsBean : flight) {
			if (flightsBean == flightNumber) {
				return true;
			}
		}
		return false;
	}

	public static String parseDateString(String htmlDate) {
		// html date//(07/15/2001)
		String[] dateArr;
		dateArr = htmlDate.split("/");
		String month = dateArr[0];
		String day = dateArr[1];
		String year = dateArr[2];
		String sqlDate = year + "-" + month + "-" + day;
		return sqlDate;
	}

}
