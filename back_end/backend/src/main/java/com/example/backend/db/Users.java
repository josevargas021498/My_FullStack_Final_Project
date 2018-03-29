package com.example.backend.db;

import org.springframework.web.bind.annotation.RestController;

import java.sql.Connection;
import java.sql.DriverManager;

@RestController
public class Users {

    private static Connection connect() {
        try {
            return DriverManager.getConnection(
                    "jdbc:postgresql:iRide", "josevargas9817", "Everest1953");
        }
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
            return null;
        }
    }



}
