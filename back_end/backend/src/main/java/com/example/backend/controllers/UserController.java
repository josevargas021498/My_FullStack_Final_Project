package com.example.backend.controllers;

import com.example.backend.core.User;
import com.example.backend.db.Users;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @CrossOrigin
    @GetMapping("/users")
    public List<User> all() {

        return Users.all();
    }

}
