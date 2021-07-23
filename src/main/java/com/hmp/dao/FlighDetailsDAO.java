package com.hmp.dao;

import com.hmp.beans.FlightsBean;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class FlighDetailsDAO {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("test");
    EntityManager em = emf.createEntityManager();
    public List<FlightsBean > getALlFlights(){
        Query query = em.createQuery("select f from FlightsBean f");
        return query.getResultList();
    }
    public List<Integer> getALlFlightNumber(){
        Query query = em.createQuery("select f.flightNumber from FlightsBean f");
        return (List<Integer>)query.getResultList();

    }

}
