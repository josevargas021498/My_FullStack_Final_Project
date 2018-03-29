package com.example.backend.controllers;

import com.example.backend.core.Accessory;
import com.example.backend.db.Accessories;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class AccessoryController {

    @CrossOrigin()
    @GetMapping("/accessories")

    public List<Accessory> all() {

        return Accessories.all();

    }

}
