package com.example.backend.db;

import com.example.backend.core.Accessory;
import org.springframework.web.bind.annotation.RestController;

import java.sql.*;
import java.util.*;

@RestController
public class Accessories {

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

    public static List<Accessory> all() {

        try {
            Connection c = connect();
            PreparedStatement st = c.prepareStatement("SELECT * FROM wheels;");
            ResultSet rs = st.executeQuery();
            ArrayList<Accessory> allAccessories = new ArrayList<Accessory>();

            while (rs.next()) {
                allAccessories.add(new Accessory(
                        rs.getInt("id"),
                        rs.getString("imge"),
                        rs.getString("brand"),
                        rs.getString("model"),
                        rs.getInt("price"),
                        rs.getString("dscrptn"),
                        rs.getInt("stock")
                ));
            }
            return allAccessories;
    }

    catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
            return null;
    }


}}
