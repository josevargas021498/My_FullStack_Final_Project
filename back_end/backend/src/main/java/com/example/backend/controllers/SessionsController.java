package com.example.backend.controllers;

import com.example.backend.core.Credentials;
import com.example.backend.core.User;
import org.springframework.web.bind.annotation.*;
//import sun.security.krb5.Credentials;

@RestController
public class SessionsController {
    @CrossOrigin()
    @PostMapping(path="/userSignup")
    public User addNewUser (@RequestBody Credentials newUSer) {
        return
    }

//    @GetMapping("/login")
//    public String login(@RequestBody Credentials credentials){
//        return "This is an example!";
//    }
}
