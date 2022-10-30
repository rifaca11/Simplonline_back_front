package DAO;

import com.koala.platform.DAO.adminDAO;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class adminDAOTest {
    @Test
    void adminSignInTest(){
         adminDAO adminDAO = new adminDAO();
        assertEquals(true,adminDAO.signIn("admin@gmail.com","admin"));
    }

}