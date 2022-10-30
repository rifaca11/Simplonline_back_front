package com.koala.platform.DAO;

import com.koala.platform.Services.PasswordManager;
import com.koala.platform.Entities.AdminEntity;
import jakarta.persistence.TypedQuery;
public class adminDAO extends baseDAO<AdminEntity>{
    public static void createAdmin(adminDAO adminDAO){
        AdminEntity adminEntity = new AdminEntity();
        adminEntity.getUsername();
        adminEntity.getEmail();
        adminEntity.getPassword();
        adminDAO.save(adminEntity);
    }


    public static AdminEntity findByEmail(String email){
        TypedQuery<AdminEntity> query = entityManager.createQuery("SELECT e FROM AdminEntity e WHERE e.email = :email",AdminEntity.class);
        query.setParameter("email",email);
        return query.getSingleResult();
    }

    public Boolean signIn(String email,String password){
        adminDAO adminDAO = new adminDAO();
        AdminEntity adminEntity = findByEmail(email);

        if(PasswordManager.passwordVerify(password,adminEntity.getPassword())){
            System.out.println(adminEntity.toString());
            return true;
        }else {
            System.out.println("password mismatch!");
            return false;
        }
    }

    public  void createAdmin(String email, String password, int centreID){
        adminDAO adminDAO = new adminDAO();
        AdminEntity adminEntity = new AdminEntity();
        adminEntity.setUsername(adminEntity.getUsername());
        adminEntity.setEmail(email);
        adminEntity.setPassword(PasswordManager.passwordEncrypt(password));
        adminDAO.save(adminEntity);
    }

}
