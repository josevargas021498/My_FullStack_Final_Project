package com.example.backend.core;

import java.awt.*;

public class Accessory {

    public Integer id;
    public String image;
    public String brand;
    public String model;
    public Integer price;
    public String description;
    public Integer stock;

    public Accessory() {}

    public Accessory(Integer id, String image, String brand, String model, Integer price, String description, Integer stock) {

        this.id  = id;
        this.image = image;
        this.brand = brand;
        this.model = model;
        this.price = price;
        this.description = description;
        this.stock = stock;
    }

    @Override
    public String toString() {
        return String.format(
                "Accessory[id=%d, image='%s', brand='%s', model='%s', price='%d', description='%s', stock='%s']",
                id, brand, model, price, description, stock);
    }

}
