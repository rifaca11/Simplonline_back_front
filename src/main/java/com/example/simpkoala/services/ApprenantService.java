package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.entity.Formateur;
import com.example.simpkoala.utils.HashPassword;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;
public class ApprenantService {
    public boolean add(Apprenant apprenant)
    {
        try{
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.persist(apprenant);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public Apprenant getApprenantByEmail(String email) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            TypedQuery<Apprenant> query = em.createQuery("SELECT a FROM Apprenant a WHERE a.email = :email", Apprenant.class);
            query.setParameter("email", email);
            Apprenant apprenant = query.getSingleResult();
            return apprenant;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public boolean login(String email, String password) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            TypedQuery<Apprenant> query = em.createQuery("SELECT a FROM Apprenant a WHERE a.email = :email", Apprenant.class);
            query.setParameter("email", email);
            Apprenant apprenant = query.getSingleResult();
            if (apprenant != null) {
                return HashPassword.check(password, apprenant.getPassword());
            }
            return false;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }




    public Apprenant findById(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            return em.find(Apprenant.class, id);
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public boolean update(Apprenant apprenant)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.merge(apprenant);
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
            Apprenant apprenant = em.find(Apprenant.class, id);
            em.remove(apprenant);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<Apprenant> getAll()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            List<Apprenant> list = em.createQuery("select a FROM Apprenant a", Apprenant.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Apprenant> getApprenantWithPromos()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            List<Apprenant> list = em.createQuery("select a FROM Apprenant a, Promostoapprenant b WHERE a.id=b.apprenantId", Apprenant.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Apprenant> getApprenantWithOutPromos()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            List<Apprenant> list = em.createQuery("SELECT a FROM Apprenant a WHERE a.id NOT IN (SELECT p.apprenantId FROM Promostoapprenant p)", Apprenant.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

}
