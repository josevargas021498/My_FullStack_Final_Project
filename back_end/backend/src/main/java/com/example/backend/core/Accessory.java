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
    public String size;
    public String ofst;
    public String link;
    public String exampleimg;

    public Accessory() {}

    public Accessory(Integer id, String image, String brand, String model, Integer price, String description, Integer stock, String size, String ofst, String link, String exampleimg) {

        this.id  = id;
        this.image = image;
        this.brand = brand;
        this.model = model;
        this.price = price;
        this.description = description;
        this.stock = stock;
        this.size = size;
        this.ofst = ofst;
        this.link = link;
        this.exampleimg = exampleimg;
    }

    @Override
    public String toString() {
        return String.format(
                "Accessory[id=%d, image='%s', brand='%s', model='%s', price='%d', description='%s', stock='%s', size='%s', ofst='%s', link='%s', exampleimg='%s']",
                id, brand, model, price, description, stock, size, ofst, link, exampleimg);
    }

}
