package com.hmp.dao;

import com.hmp.beans.UserInfo;

import javax.persistence.*;
import java.util.List;

public class UserLoginDAO {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("test");
        EntityManager em = emf.createEntityManager();

public List<UserInfo> getUserName(){
    Query query = em.createQuery("select f from UserInfo  f");
   return (List<UserInfo>)query.getResultList();
    }
}


