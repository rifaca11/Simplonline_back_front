package com.example.simpkoala.utils;
import org.mindrot.jbcrypt.BCrypt;

public class HashPassword {
    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public static boolean check(String password, String hashedPassword) {
        return BCrypt.checkpw(password, hashedPassword);
    }

}
