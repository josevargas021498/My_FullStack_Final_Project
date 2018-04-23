package com.example.backend.controllers;

import com.example.backend.core.SessionKey;
import com.example.backend.core.User;
import com.example.backend.db.Users;
import org.springframework.web.bind.annotation.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

@RestController
public class UserController {

    @CrossOrigin
    @GetMapping("/users")
    public List<User> all() {
        return Users.all();
    }
    /* ALTER TABLE table_name
DROP COLUMN column_name; */


    @CrossOrigin
    @PostMapping("/deleteUser")
    public void deleteUser(@RequestBody User user) {

        System.out.println(user.sessionkey);
        try {
            Connection conn = DriverManager.getConnection("jdbc:postgresql:iRide", "basecamp", "Everest1953");

            PreparedStatement st = conn.prepareStatement("DELETE FROM users WHERE sessionkey = ?");

            st.setString(1, user.sessionkey);


            st.execute();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
    }

}
