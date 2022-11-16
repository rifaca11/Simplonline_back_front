package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.Brief;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;
public class BriefService {
    public boolean add(Brief brief)
    {
        try{
            EntityManager em = Config.getConfig().getEntityManager();
            System.out.println("BriefService.add");
            em.getTransaction().begin();
            System.out.println("BriefService.add2");
            em.persist(brief);
            System.out.println("BriefService.add3");
            em.getTransaction().commit();
            System.out.println("BriefService.add4");

            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public Brief findById(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            return em.find(Brief.class, id);
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public boolean update(Brief brief)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.merge(brief);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean deleteByID(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            Brief brief = em.find(Brief.class, id);
            em.remove(brief);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<Brief> getAll()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            // TypedQuery<AdminEntity> query = entityManager.createQuery("SELECT e FROM AdminEntity e WHERE e.email = :email",AdminEntity.class);
            //        query.setParameter("email",email);
            TypedQuery<Brief> query = em.createQuery("SELECT a FROM Brief a", Brief.class);
            //query.setParameter("limit",limit);

            List<Brief> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Brief> getMyBrief(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            TypedQuery<Brief> query = (TypedQuery<Brief>) em.createQuery("SELECT a FROM Brief a where a.promosByPromoId in(select b.id from Promos b where b.formateurId = : id)");

            List<Brief> list = query.getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

}
