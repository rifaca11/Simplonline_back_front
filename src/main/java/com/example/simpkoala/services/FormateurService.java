package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.*;
import com.example.simpkoala.utils.HashPassword;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;
public class FormateurService {
    public boolean add(Formateur formateur)
    {
        try{
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.persist(formateur);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean login(String email, String password) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            TypedQuery<Formateur> query = em.createQuery("SELECT a FROM Formateur a WHERE a.email = :email", Formateur.class);
            query.setParameter("email", email);
            Formateur formateur = query.getSingleResult();
            if (formateur != null) {
                return HashPassword.check(password, formateur.getPassword());
            }
            return false;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }




    public Formateur getFormateurByEmail(String email) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            TypedQuery<Formateur> query = em.createQuery("SELECT a FROM Formateur a WHERE a.email = :email", Formateur.class);
            query.setParameter("email", email);
            Formateur formateur = query.getSingleResult();
            return formateur;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public Formateur findById(int id)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            return em.find(Formateur.class, id);
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public boolean update(Formateur formateur)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.merge(formateur);
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
            Formateur formateur = em.find(Formateur.class, id);
            em.remove(formateur);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            e.getStackTrace();
        }
        return false;
    }

    public List<Formateur> getAll()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            // TypedQuery<AdminEntity> query = entityManager.createQuery("SELECT e FROM AdminEntity e WHERE e.email = :email",AdminEntity.class);
            //        query.setParameter("email",email);
            TypedQuery<Formateur> query = em.createQuery("SELECT a FROM Formateur a", Formateur.class);
            //query.setParameter("limit",limit);

            List<Formateur> list = query.getResultList();
            //List<Formateur> list = em.createQuery("select a FROM Formateur a", Formateur.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public List<Formateur> getAllNulls() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            TypedQuery<Formateur> query = (TypedQuery<Formateur>) em.createQuery("select F from Formateur F where F.id not in (select F.id from Promos P,Formateur F Where F.id=P.formateurId)");
            List<Formateur> formateurList = query.getResultList();
            em.getTransaction().commit();
            return formateurList;
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }


    public List<Formateur> getMyBrief() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();

            TypedQuery<Formateur> query = (TypedQuery<Formateur>) em.createQuery("select a from Formateur a");
//            query.setParameter("formateurId",formateurId);
            List<Formateur> formateurList = query.getResultList();
            em.getTransaction().commit();
            return formateurList;
        } catch(Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }




}
