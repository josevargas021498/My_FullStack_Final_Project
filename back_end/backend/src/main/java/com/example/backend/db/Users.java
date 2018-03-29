package com.example.backend.db;

import com.example.backend.core.User;
import org.springframework.web.bind.annotation.RestController;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@RestController
public class Users {

    private static Connection connect() {
        try {
            return DriverManager.getConnection(
                    "jdbc:postgresql:iRide", "josevargas9817", "Everest1953");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }
    }

        public static List<User> all () {

            try {
                Connection c = connect();
                PreparedStatement st = c.prepareStatement("SELECT * FROM users;");
                ResultSet rs = st.executeQuery();
                ArrayList<User> allUsers = new ArrayList<User>();

                while (rs.next()) {
                    allUsers.add(new User(
                            rs.getInt("id"),
                            rs.getString("f_name"),
                            rs.getString("l_name"),
                            rs.getString("usrnme"),
                            rs.getString("pw")
                    ));
                }
                return allUsers;
            }

         catch(Exception e){

            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }



}}
