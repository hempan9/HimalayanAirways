package com.hmp.beans;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "flight_details")
public class FlightsBean {
    @Id
    @Column(name="flightNo")
    private int flightNumber;
    @Column(name="fromDest")
    private String origin;
    @Column(name ="toDest")
    private String destination;
    @Column(name = "departDate")
    private String departureDate;
    @Column(name = "returnDate")
    private String arrivalDate;

    public int getFlightNumber() {
        return flightNumber;
    }

    public void setFlightNumber(int flightNumber) {
        this.flightNumber = flightNumber;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

//    @Override
//    public String toString() {
//        return "FlightsBean{" +
//                "flightNumber=" + flightNumber +
//                ", origin='" + origin + '\'' +
//                ", destination='" + destination + '\'' +
//                ", departureDate='" + departureDate + '\'' +
//                ", arrivalDate='" + arrivalDate + '\'' +
//                '}';
//    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }
}
