package com.example.simpkoala.services;

import com.example.simpkoala.config.Config;
import com.example.simpkoala.entity.Admin;
import com.example.simpkoala.entity.Apprenant;
import com.example.simpkoala.utils.HashPassword;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;
public class AdminService {

//    Add New Admin
    public boolean add(Admin admin)
    {
        try{
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.persist(admin);
            em.getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return false;
    }
    public boolean update(Admin admin)
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            em.merge(admin);
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
            TypedQuery<Admin> query = em.createQuery("SELECT a FROM Admin a WHERE a.email = :email", Admin.class);
            query.setParameter("email", email);
            Admin admin = query.getSingleResult();
            if (admin != null) {
                return HashPassword.check(password, admin.getPassword());
            }
            return false;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }




    public Admin getAdminByEmail(String email) {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            TypedQuery<Admin> query = em.createQuery("SELECT a FROM Admin a WHERE a.email = :email", Admin.class);
            query.setParameter("email", email);
            Admin admin = query.getSingleResult();
            return admin;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }




    public List<Admin> getAll()
    {
        try{

            EntityManager em = Config.getConfig().getEntityManager();

            em.getTransaction().begin();

            List<Admin> list = em.createQuery("select a FROM Admin a", Admin.class).getResultList();
            em.getTransaction().commit();
            return list;
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public int countApprenant() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            int count = em.createQuery("SELECT COUNT(b) FROM Apprenant b", Long.class).getSingleResult().intValue();
            em.getTransaction().commit();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countBrief() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            int count = em.createQuery("SELECT COUNT(b) FROM Brief b", Long.class).getSingleResult().intValue();
            em.getTransaction().commit();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countPromo() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            int count = em.createQuery("SELECT COUNT(b) FROM Promos b", Long.class).getSingleResult().intValue();
            em.getTransaction().commit();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countFormateur() {
        try {
            EntityManager em = Config.getConfig().getEntityManager();
            em.getTransaction().begin();
            int count = em.createQuery("SELECT COUNT(b) FROM Formateur b", Long.class).getSingleResult().intValue();
            em.getTransaction().commit();
            return count;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

}
