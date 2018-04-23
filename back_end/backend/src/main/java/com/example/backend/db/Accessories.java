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
                    "jdbc:postgresql:iRide", "basecamp", "Everest1953");
        }
        catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName()+": "+e.getMessage());
            System.exit(0);
            return null;
        }
    }



    public static List<Accessory> allWheels() {

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
                        rs.getInt("stock"),
                        rs.getString("size"),
                        rs.getString("ofst"),
                        rs.getString("link")
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
