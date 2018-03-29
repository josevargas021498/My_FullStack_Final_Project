package com.example.backend.core;

public class Accessory {

    public Integer id;
    public String brand;
    public String model;
    public Integer price;
    public String description;
    public Integer stock;

    public Accessory() {}

    public Accessory(Integer id, String brand, String model, Integer price, String description, Integer stock) {

        this.id  = id;
        this.brand = brand;
        this.model = model;
        this.price = price;
        this.description = description;
        this.stock = stock;
    }

    @Override
    public String toString() {
        return String.format(
                "Accessory[id=%d, brand='%s', model='%s', price='%d', description='%s', stock='%s']",
                id, brand, model, price, description, stock);
    }

}
