package com.example.backend.controllers;

import com.example.backend.core.Credentials;
import com.example.backend.core.User;
import com.example.backend.db.Users;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
//import sun.security.krb5.Credentials;

@RestController
public class SessionsController {
    @Resource
    private Users users;

    @CrossOrigin()
    @PostMapping(path="/userSignup")
    public void addNewUser (@RequestBody Credentials newUSer) {

        try (Connection conn = DriverManager.getConnection(
                "jdbc:postgresql:iRide", "josevargas9817", "Everest1953");) {
            PreparedStatement st = conn.prepareStatement("INSERT INTO users (f_name, l_name, usrnme, pw) VALUES (?, ?, ?, ?)");

            st.setString(1, newUSer.f_name);
            st.setString(2, newUSer.l_name);
            st.setString(3, newUSer.usrnme);
            st.setString(4, newUSer.pw);

            int rowaadded = st.executeUpdate();
            System.out.println("Row added: " + rowaadded);

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
    }
    @CrossOrigin
    @PostMapping("/userLogin")
    public User userLogin(@RequestBody Credentials credentials) {

        try {
            return users.getUserByUserNameAndPassword(credentials.usrnme, credentials.pw);

        }catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }

        return null;

    }
//    @GetMapping("/userLogin")
//    public void userLogin(@RequestBody Credentials user) {
//
//        try (Connection conn = DriverManager.getConnection(
//                "jdbc:postgresql:iRide", "josevargas9817", "Everest1953"); ) {
//            PreparedStatement st = conn.prepareStatement("SELECT usrnme, pw FROM users");
//            ResultSet rs = st.executeQuery();
//
//            while (rs.next()) {
//
//            }
//        }  catch (SQLException e) {
//            e.printStackTrace();
//            System.err.println(e.getClass().getName() + ": " + e.getMessage());
//        }
//    }



}
