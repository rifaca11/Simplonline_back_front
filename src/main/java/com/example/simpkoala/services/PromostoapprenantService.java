package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Promos;
import com.example.simpkoala.entity.Promostoapprenant;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
public class PromostoapprenantService {
    public boolean add(Promostoapprenant promostoapprenant)
    {
        try{
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.persist(promostoapprenant);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public Promostoapprenant findById(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            return em.find(Promostoapprenant.class, id);
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public boolean update(Promostoapprenant promostoapprenant)
    {
            EntityManager em = Config.getConfig().getEntityManager();
        try{

            em.getTransaction().begin();
            em.merge(promostoapprenant);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println("error");
            System.out.println(e.getMessage());
        }finally {
            em.close();
        }
        return false;
    }

    public boolean deleteByID(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            Promostoapprenant promostoapprenant = em.find(Promostoapprenant.class, id);
            em.remove(promostoapprenant);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<Promostoapprenant> getAll()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            // TypedQuery<AdminEntity> query = entityManager.createQuery("SELECT e FROM AdminEntity e WHERE e.email = :email",AdminEntity.class);
            //        query.setParameter("email",email);
            TypedQuery<Promostoapprenant> query = em.createQuery("SELECT a FROM Promostoapprenant a", Promostoapprenant.class);
            //query.setParameter("limit",limit);

            List<Promostoapprenant> list = query.getResultList();
            //List<Promostoapprenant> list = em.createQuery("select a FROM Promostoapprenant a", Promostoapprenant.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public static List<Promostoapprenant> FindPromoAppById(int id)
    {
        EntityManager em = Config.getConfig().getEntityManager();
        try{
            em.getTransaction().begin();

            TypedQuery<Promostoapprenant> query = em.createQuery("SELECT a FROM Promostoapprenant a where a.promoId = :id", Promostoapprenant.class);
            query.setParameter("id",id);

            List<Promostoapprenant> list = query.getResultList();
            //List<Promostoapprenant> list = em.createQuery("select a FROM Promostoapprenant a", Promostoapprenant.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }finally {
            em.close();
        }
        return null;
    }



    public  Promostoapprenant FindPromoAppByIdA(int idA)
    {
        EntityManager em = Config.getConfig().getEntityManager();
        try{
            em.getTransaction().begin();

            TypedQuery<Promostoapprenant> query = em.createQuery("SELECT a FROM Promostoapprenant a where a.apprenantId = :id", Promostoapprenant.class);
            query.setParameter("id",idA);

            Promostoapprenant promostoapprenant = query.getSingleResult();
            //List<Promostoapprenant> list = em.createQuery("select a FROM Promostoapprenant a", Promostoapprenant.class).getResultList();
            em.getTransaction().commit();
            return promostoapprenant;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }finally {
            em.close();
        }
        return null;
    }



}
