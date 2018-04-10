package com.example.backend.controllers;

import com.example.backend.core.Credentials;
import com.example.backend.core.User;
import com.example.backend.db.Users;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Random;
//import sun.security.krb5.Credentials;

@RestController
public class SessionsController {
    @Resource
    private Users users;

    @CrossOrigin()
    @PostMapping(path = "/userSignup")
    public User addNewUser(@RequestBody Credentials credentials) {

        try (Connection conn = DriverManager.getConnection("jdbc:postgresql:iRide", "josevargas9817", "Everest1953");) {
            PreparedStatement st = conn.prepareStatement("INSERT INTO USERS (usrnme, pw) VALUES (?, ?)");

            st.setString(1, credentials.usrnme);
            st.setString(2, credentials.pw);

            int rowadded = st.executeUpdate();
            System.out.println("Row added: " + rowadded);
            return Users.getUserByUserNameAndPassword(credentials.usrnme, credentials.pw);

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }

        return null;
    }



    @CrossOrigin
    @PostMapping("/userLogin")
    public User userLogin(@RequestBody Credentials credentials) {

        try {
            return Users.getUserByUserNameAndPassword(credentials.usrnme, credentials.pw);

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }

        return null;

    }

    String CreateSessionKey(){
        String alphChars = "abcdefghijklmonpqrstuvwxyz0123456789!@#$%^&*(){}[]?.";
        String sessionKey ="";

        Random random = new Random();

        int random_int = 12 + random.nextInt(9);

        for(int i =0; i < random_int; i++){

            char c = alphChars.charAt(random.nextInt(26));
            sessionKey += c;
        }

        return sessionKey;
    }


}
