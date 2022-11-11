package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.Promos;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;
public class PromosService {
    public boolean add(Promos promos) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.persist(promos);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public Promos findById(int id) {
        try {

            EntityManager em = Config.getConfig().getEntityManager();
            return em.find(Promos.class, id);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return null;
    }

    public Promos findByFormateurId(int id) {
        try {

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            TypedQuery<Promos> query = em.createQuery("SELECT a FROM Promos a WHERE a.formateurId = " + id, Promos.class);
            Promos promos = query.getSingleResult();
            em.getTransaction().commit();
            return promos;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public boolean update(Promos promos) {
        try {

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.merge(promos);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean deleteByID(int id) {
        try {

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            Promos promos = em.find(Promos.class, id);
            em.remove(promos);
            em.getTransaction().commit();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public List<Promos> getAll() {
        try {

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();
            // TypedQuery<AdminEntity> query = entityManager.createQuery("SELECT e FROM AdminEntity e WHERE e.email = :email",AdminEntity.class);
            //        query.setParameter("email",email);
            TypedQuery<Promos> query = em.createQuery("SELECT a FROM Promos a", Promos.class);
            //query.setParameter("limit",limit);

            List<Promos> list = query.getResultList();
            //List<Promos> list = em.createQuery("select a FROM Promos a", Promos.class).getResultList();
            em.getTransaction().commit();
            return list;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }







}
