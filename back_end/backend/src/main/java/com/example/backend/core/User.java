package com.example.backend.core;


public class User {

    public Integer id;
    public String firstName;
    public String lastName;
    public String userName;
    public String passWordHash;
    public String sessionkey;

    public User() {}

    public User(Integer id, String firstName, String lastName, String userName, String passWordHash, String sessionkey) {

        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.passWordHash = passWordHash;
        this.sessionkey = sessionkey;

    }

    @Override
    public String toString() {
        return String.format(
                "User[id=%d, firstName='%s', lastName='%s', userName='%s', passWordHash='%s', sessionkey='%s']",
                id, firstName, lastName, userName, passWordHash, sessionkey);
    }



}
