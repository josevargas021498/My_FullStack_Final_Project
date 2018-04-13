package com.example.backend.db;

import com.example.backend.controllers.SessionsController;
import com.example.backend.core.Credentials;
import com.example.backend.core.User;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RestController;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
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

    public static User getUserByUserNameAndPassword(String usrnme, String pw) {

        User user;

        final String sql = "SELECT * FROM users WHERE usrnme = ? AND pw = ?";

        try {
            Connection c = connect();
            PreparedStatement st = c.prepareStatement(sql);
            st.setString(1, usrnme);
            st.setString(2, pw);

            ResultSet rs = st.executeQuery();

            //System.out.println("Going through here: "+ rs.next());
            if (rs.next()) {
                user = new User();
                System.out.println("Adding values");
                user.userName = rs.getString("usrnme");
                System.out.println("Added username: " + rs.getString("pw"));
                user.passWordHash = rs.getString("pw");



            } else {
                user = null;

            }


        } catch (SQLException e) {
            e.printStackTrace();

            user = null;

        }
        return user;

    }

    public static boolean logoutUser(String key) throws SQLException {
        Connection c = connect();
        PreparedStatement st = c.prepareStatement(
                "UPDATE users SET sessionkey = NULL WHERE sessionkey = ? RETURNING *;"

        );
        System.out.println(key);
        st.setString(1, key);
        
        return st.execute();
    }

    public static List<User> all() {

        try {
            Connection c = connect();
            PreparedStatement st = c.prepareStatement("SELECT * FROM users;");
            ResultSet rs = st.executeQuery();
            ArrayList<User> allUsers = new ArrayList<User>();

            while (rs.next()) {
                allUsers.add(new User(
                        rs.getInt("id"),
                        rs.getString("usrnme"),
                        rs.getString("pw"),
                        rs.getString("sessionkey")
                ));
            }
            return allUsers;
        } catch (Exception e) {

            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
            return null;
        }


    }

    public static String createSessionKey(String usrnme) throws SQLException {
        String key = SessionsController.createSessionKey();

        Connection c = connect();

        PreparedStatement st = c.prepareStatement(
                "UPDATE users SET sessionkey = ? WHERE usrnme = ? RETURNING *;"
        );

        st.setString(1, key);
        st.setString(2, usrnme);

        st.execute();

        return key;



    }

    public static boolean usernamePasswordMatches(Credentials credentials) throws SQLException {
        Connection c = connect();

        PreparedStatement st = c.prepareStatement(
                "SELECT COUNT(*) AS count FROM users WHERE usrnme = ? AND pw = ?;"
        );

        st.setString(1, credentials.usrnme);
        st.setString(2, credentials.pw);

        ResultSet rs = st.executeQuery();

        rs.next();
        return rs.getInt("count") == 1;

    }
}
