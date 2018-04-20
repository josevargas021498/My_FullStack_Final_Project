package com.example.backend.controllers;

import com.example.backend.core.Credentials;
import com.example.backend.core.SessionKey;
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
    public SessionKey addNewUser(@RequestBody Credentials credentials) {

        String sessionKey = createSessionKey();

        try (Connection conn = DriverManager.getConnection("jdbc:postgresql:iRide", "josevargas9817", "Everest1953");) {
            PreparedStatement st = conn.prepareStatement("INSERT INTO USERS(usrnme, pw, sessionkey) VALUES (?, ?, ?) Returning *");

            st.setString(1, credentials.usrnme);
            st.setString(2, credentials.pw);
            st.setString(3, sessionKey);

            ResultSet rowadded = st.executeQuery();
            rowadded.next();
            conn.close();

            System.out.println("Row added: " + rowadded);
            return new SessionKey(sessionKey);

        } catch (Exception e) {

            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);

        }

        return null;

    }

    @CrossOrigin
    @PostMapping("/userLogin")
    public SessionKey userLogin(@RequestBody Credentials credentials) {

        try {
            if (Users.usernamePasswordMatches(credentials)) {

                String key = Users.createSessionKey(credentials.usrnme);
                return new SessionKey(key);

            } else {
                return null;
            }

        } catch (Exception e) {

            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);

        }

        return null;

    }

    @CrossOrigin
    @PostMapping("/logout")
    public Boolean logout(@RequestBody SessionKey key) throws SQLException {
        return Users.logoutUser(key.key);
    }




    public static String createSessionKey(){

        String alphChars = "abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*();[]{}\\|,./<>?`~-=_+";
        String sessionKey ="";

        Random random = new Random();

        int random_int = 12 + random.nextInt(9);

        for(int i =0; i < random_int; i++){

            char rc = alphChars.charAt(random.nextInt(26));

            sessionKey += rc;
        }

        return sessionKey;
    }


}
